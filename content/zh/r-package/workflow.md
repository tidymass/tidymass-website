---
title: "完整 LC-MS 分析工作流"
linktitle: "完整 LC-MS 分析工作流"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 30
toc: true
commentable: false
editable: false
translationKey: "r-package-workflow"
---

这份模板连接原始处理、探索、清洗、统计、注释和通路分析。每个环节都保留输出，不把程序执行成功当作科学结论得到验证。所有数据路径、组名和示例阈值都需要按研究修改。

[下载完整 R 脚本](/tutorial-files/tidymass-workflow.R)。代码为自己的真实输入准备，不包含虚构实验结果；原始数据处理和数据库步骤需有相应文件。

```r
# TidyMass LC-MS workflow template. Reviewed 2026-09-23.
# Replace paths/groups and review every analysis choice before execution.
# This script does not contain study data or claim validated instrument parameters.
library(tidymass)
library(dplyr)
```

## 1. 准备数据与原始处理

示例从正离子 mzML/mzXML 开始，负离子模式另建分析。样品表至少有 sample_id、group、class；QC 使用定量 QC，研究样品用 Subject。路径中 QC/Subject 子目录的文件名去扩展名后必须唯一。参数只是起点，先在代表性文件上验证。

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

## 2. 匹配样品信息与探索

按精确 ID 对齐样品信息，不按原表行号。示例从原始结果提取矩阵后重新构建带元数据的对象，因此务必保留原处理目录及原对象以保存原始处理记录。检查样品/feature 数、缺失值、RT 和 QC。

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

## 3. 过滤、填补与归一化

示例保留至少一个比较组中缺失不超过 50% 的 feature；有 QC 时再加 QC 缺失不超过 20% 的条件。这是明确写出的示例规则，不是默认科学标准。它移除 Blank 后做中位数填补与归一化。QC 漂移校正、异常样品删除和跨批次整合需要按设计另行决定。

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

## 4. PCA 与独立组间统计

PCA 仅用研究样品，并去除非有限值或零方差 feature，使用均值中心化与单位方差缩放；fold change 和检验使用未缩放的归一化值。该代码是独立组 t 检验及 BH 校正，不适用于未调整的重复测量设计。配对数据应先对齐个体，并选择相应检验或模型。

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

## 5. 关联 MS2 与注释

提供实验 MS2 目录和 metid databaseClass。关闭不相容参考 RT 的匹配和分数权重。保留候选表，检查镜像谱、质量误差与歧义。没有所需输入时明确跳过，不生成假注释。统计与注释可分别完成，但进入通路前应综合其证据。

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

## 6. 候选审查后的通路分析

依据预先确定的统计筛选与注释审查，准备去重的 kegg_id 列表。多个加合物不能当作多个化合物。示例的富集背景是传入数据库覆盖的化合物，不自动等于本实验测到的化合物；如需实测背景，先明确构造并验证相应数据库。没有 ID/数据库时明确跳过。

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

## 7. 导出与复现

保存脚本、参数、样品表、原始文件、数据库来源/版本、R 对象、统计表、候选表和 sessionInfo。RDS 结果不会自动携带所有外部输入。公开结果时说明分析方法、样品范围、过滤阈值、缺失处理、比较方向、校正方法、鉴定证据及通路背景。

```r
# 7. Archive -----------------------------------------------------------------
writeLines(capture.output(sessionInfo()), file.path(output_dir, "sessionInfo.txt"))
# Back up this script, parameter choices, all inputs/reference versions and all results.
```
