---
title: "Complete LC-MS analysis workflow"
linktitle: "Complete LC-MS analysis workflow"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 30
toc: true
commentable: false
editable: false
translationKey: "r-package-workflow"
---

This template connects raw processing, exploration, cleaning, statistics, annotation and pathway analysis while saving intermediate outputs. Successful execution is not scientific validation. Replace all paths and group labels and review the example thresholds for your study.

[Download the complete R script](/tutorial-files/tidymass-workflow.R). It is designed for your real inputs and contains no fabricated study results; raw processing and database stages require the indicated files.

```r
# TidyMass LC-MS workflow template. Reviewed 2026-09-23.
# Replace paths/groups and review every analysis choice before execution.
# This script does not contain study data or claim validated instrument parameters.
library(tidymass)
library(dplyr)
```

## 1. Prepare inputs and process raw files

The example starts with positive-mode mzML/mzXML; analyze negative mode separately. The sample sheet needs sample_id, group and class; use Subject for biological samples and QC only for quantitative QCs. Basenames in the QC/Subject directories must be unique. Validate example processing parameters on representative files first.

```r
# 1. Inputs and raw processing -------------------------------------------------
raw_dir <- "analysis/MS1"                 # mzML/mzXML in QC/Subject subdirectories
sample_csv <- "analysis/sample_info.csv"
output_dir <- "analysis/results"
control_group <- "Control"
case_group <- "Treatment"
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
stopifnot(dir.exists(raw_dir), file.exists(sample_csv))
writeLines(capture.output(sessionInfo()), file.path(output_dir, "sessionInfo.txt"))
set.seed(20260923)
massprocesser::process_data(
  path = raw_dir, polarity = "positive",
  ppm = 15, peakwidth = c(5, 30), snthresh = 10,
  threads = 2, min_fraction = 0.5, fill_peaks = FALSE,
  output_tic = TRUE, output_bpc = TRUE
)
result_file <- file.path(raw_dir, "Result", "object")
stopifnot(file.exists(result_file))
saved <- new.env()
load(result_file, envir = saved)
objects <- mget(ls(saved), envir = saved)
keep <- vapply(objects, function(x) inherits(x, "mass_dataset"), logical(1))
stopifnot(sum(keep) == 1L)
object <- objects[[which(keep)]]
```

## 2. Match metadata and explore

Align metadata by exact sample ID, not row position. This example reconstructs the object after extracting the raw-processing matrix; retain the original processing directory and object to preserve the original provenance. Inspect sample/feature counts, missingness, RT and QCs.

```r
# 2. Match metadata and inspect ------------------------------------------------
si <- read.csv(sample_csv, check.names = FALSE, stringsAsFactors = FALSE,
               colClasses = "character")
stopifnot(all(c("sample_id", "group", "class") %in% names(si)),
          !anyNA(si$sample_id), !anyDuplicated(si$sample_id))
ids <- colnames(massdataset::extract_expression_data(object))
stopifnot(setequal(ids, si$sample_id))
si <- si[match(ids, si$sample_id), , drop = FALSE]
if ("injection.order" %in% names(si)) {
  si$injection.order <- as.numeric(si$injection.order)
  stopifnot(!anyNA(si$injection.order))
}
# Reconstruct with the matched metadata before attaching MS2/annotations.
object <- massdataset::create_mass_dataset(
  expression_data = massdataset::extract_expression_data(object),
  sample_info = si,
  variable_info = massdataset::extract_variable_info(object)
)
saveRDS(object, file.path(output_dir, "01-imported.rds"))
massdataset::show_sample_missing_values(object)
massdataset::show_variable_missing_values(object)
# Optional report, with a working report-rendering environment:
# massqc::massqc_report(object, path = file.path(output_dir, "qc_before"), type = "html")
```

## 3. Filter, impute and normalize

The explicit example retains a feature if missingness is at most 50% in either comparison group and, when QCs exist, at most 20% in QCs. These are example criteria, not a universal standard. It removes blanks before median imputation and normalization. Decide QC drift correction, outlier exclusions and cross-batch integration from your actual design.

```r
# 3. Filter, impute and normalize ---------------------------------------------
# Illustrative criteria; revise and document for your study.
expr <- massdataset::extract_expression_data(object)
ctrl <- si$sample_id[si$class == "Subject" & si$group == control_group]
case <- si$sample_id[si$class == "Subject" & si$group == case_group]
qc <- si$sample_id[si$class == "QC"]
stopifnot(length(ctrl) >= 3L, length(case) >= 3L)
keep_feature <- rowMeans(is.na(expr[, ctrl, drop = FALSE])) <= 0.5 |
                rowMeans(is.na(expr[, case, drop = FALSE])) <= 0.5
if (length(qc) > 0L) {
  keep_feature <- keep_feature & rowMeans(is.na(expr[, qc, drop = FALSE])) <= 0.2
}
write.csv(data.frame(variable_id = rownames(expr), keep = keep_feature),
          file.path(output_dir, "filter_decisions.csv"), row.names = FALSE)
# Exclude blanks from the illustrative normalized matrix.
stopifnot(any(keep_feature))
object <- object[which(keep_feature), si$sample_id[si$class %in% c("Subject", "QC")]]
stopifnot(nrow(object) > 1L)
cleaned <- masscleaner::impute_mv(object, method = "median")
normalized <- masscleaner::normalize_data(cleaned, method = "median")
saveRDS(normalized, file.path(output_dir, "02-normalized.rds"))
# For QC-based SVR/LOESS, first verify quantitative QC coverage and metadata.
# Review outliers/batches with acquisition records; do not remove PCA outliers blindly.
```

## 4. PCA and independent-group statistics

PCA uses biological samples, removes nonfinite or zero-variance features, and uses mean centering/unit-variance scaling. Fold changes and tests use unscaled normalized intensities. The code uses an independent-group t test with BH correction; it is not an unadjusted repeated-measures analysis. Align subjects and choose the appropriate paired test or model for paired observations.

```r
# 4. PCA and independent-group statistics ------------------------------------
# Keep scaled values out of fold-change calculation.
expr <- massdataset::extract_expression_data(normalized)
biological <- c(ctrl, case)
expr <- expr[, biological, drop = FALSE]
valid <- apply(expr, 1, function(x) all(is.finite(x)) && stats::sd(x) > 0)
stopifnot(sum(valid) >= 2L)
pca <- stats::prcomp(t(expr[valid, , drop = FALSE]), center = TRUE, scale. = TRUE)
write.csv(pca$x, file.path(output_dir, "pca_scores.csv"))
stats_object <- massstat::mutate_fc(normalized, ctrl, case, mean_median = "mean")
stats_object <- massstat::mutate_p_value(stats_object, ctrl, case,
  method = "t.test", p_adjust_methods = "BH")
feature_stats <- massdataset::extract_variable_info(stats_object)
write.csv(feature_stats, file.path(output_dir, "feature_statistics.csv"), row.names = FALSE)
saveRDS(stats_object, file.path(output_dir, "03-statistics.rds"))
```

## 5. Attach MS2 and annotate

Provide experimental MS2 and a metid databaseClass. The example disables incompatible reference RT matching and scoring. Preserve candidates and inspect mirror spectra, mass errors and ambiguity. Missing resources cause an explicit skip, not invented annotations. Statistics and annotation can be performed separately, then combined when preparing pathway inputs.

```r
# 5. Attach MS2 and annotate ---------------------------------------------------
# Replace these paths and run this block when these resources are available.
ms2_dir <- "analysis/MS2"
reference_rds <- "analysis/reference_database.rds"
if (dir.exists(ms2_dir) && file.exists(reference_rds)) {
  with_ms2 <- massdataset::mutate_ms2(stats_object, path = ms2_dir,
    column = "rp", polarity = "positive",
    ms1.ms2.match.mz.tol = 15, ms1.ms2.match.rt.tol = 30)
  database <- readRDS(reference_rds)
  stopifnot(inherits(database, "databaseClass"))
  annotated <- metid::annotate_metabolites_mass_dataset(
    object = with_ms2, database = database, polarity = "positive", column = "rp",
    ms1.match.ppm = 15, ms2.match.ppm = 30,
    rt.match.tol = NA, rt.match.weight = 0, candidate.num = 3, threads = 2)
  saveRDS(annotated, file.path(output_dir, "04-annotated.rds"))
  write.csv(massdataset::extract_annotation_table(annotated),
    file.path(output_dir, "annotation_candidates.csv"), row.names = FALSE)
} else {
  message("Annotation not run: provide experimental MS2 and a compatible reference database.")
}
```

## 6. Analyze pathways after candidate review

Prepare a de-duplicated kegg_id list using your prespecified statistical selection and reviewed annotations. Multiple adducts are not independent compounds. The example enrichment background is the supplied database coverage, not automatically the compounds measured by your experiment. Construct and verify a suitable restricted database when a measured universe is required. Missing resources cause an explicit skip.

```r
# 6. Pathway analysis after candidate review ----------------------------------
# Prepare reviewed_kegg_ids.csv with one KEGG ID per row in a kegg_id column.
# Select using the prespecified statistical rule and reviewed annotation evidence.
# Do not count multiple features/adducts as independent compounds.
query_csv <- "analysis/reviewed_kegg_ids.csv"
pathway_rds <- "analysis/pathway_database.rds"
if (file.exists(query_csv) && file.exists(pathway_rds)) {
  query <- read.csv(query_csv, colClasses = "character")
  stopifnot("kegg_id" %in% names(query))
  query_ids <- unique(query$kegg_id[!is.na(query$kegg_id) & nzchar(query$kegg_id)])
  stopifnot(length(query_ids) > 0L, all(grepl("^C[0-9]{5}$", query_ids)))
  pathway_database <- readRDS(pathway_rds)
  enrichment <- metpath::enrich_kegg(query_id = query_ids, query_type = "compound",
    id_type = "KEGG", pathway_database = pathway_database,
    p_adjust_method = "BH", method = "hypergeometric", p_cutoff = 0.05, threads = 2)
  saveRDS(enrichment, file.path(output_dir, "05-pathway-enrichment.rds"))
  # Background is defined by the supplied pathway database, not automatically by measured compounds.
} else {
  message("Pathway analysis not run: provide reviewed compound IDs and a pathway database.")
}
```

## 7. Archive for reproduction

Archive the script, parameters, sample sheet, raw files, reference provenance/versions, objects, statistical/candidate tables and sessionInfo. An RDS does not include every external input. Report sample selection, filters, missingness handling, comparison direction, correction, identification evidence and pathway background.

```r
# 7. Archive -----------------------------------------------------------------
writeLines(capture.output(sessionInfo()), file.path(output_dir, "sessionInfo.txt"))
# Back up this script, parameter choices, all inputs/reference versions and all results.
```
