---
title: "Complete untargeted workflow"
linktitle: "Complete untargeted workflow"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 3
toc: true
commentable: false
editable: false
translationKey: "windows-workflow"
---

[Tutorial contents](/windows/) · Applies to: 0.1.63

## 1. Data import

Choose mzML/mzXML files and sample information, review the groups and click **Import raw files**. Import registers files; it does not detect chromatographic peaks. Folder grouping is a convenience, so check it against the biological design.

## 2. Raw data processing

Configure peak detection, RT correction and feature grouping. The software calls massprocesser/XCMS-related functions. Review m/z tolerance against instrument accuracy and the peak-width interval against observed chromatography. Signal/noise, noise and prefilter settings control low-quality signals; grouping bandwidth and minimum fraction control feature correspondence across samples.

**Fill peaks** integrates missing chromatographic signals where supported. It differs from later matrix imputation. Set **Worker processes** to match available memory as well as CPU capacity. Inspect representative samples in a separate test project, then click **Process raw data** in the formal project for the complete imported set.

Inspect the resulting feature table and `mass_dataset`. **Project folder** opens the saved outputs; use the run ID to find the correct execution.

## 3. Data exploration

Review m/z–RT distributions, sample and feature missingness, batches, peak shapes, spectra and intensities. Select a feature to inspect its evidence. **Feature filters** change the displayed subset. Manual **Exclude** is a review label; it does not remove rows from the downstream matrix.

## 4. Data cleaning

Choose missingness filtering, investigate potential outlier samples, impute remaining missing values, normalize, and apply batch integration only when appropriate. QC-based filtering and correction require suitable quantitative QCs. A PCA outlier alone does not justify exclusion.

Check the dataset size and metrics before and after each operation. Separately fitted before/after PCAs do not share a fixed coordinate system. Retain the unmodified input and document exclusion decisions.

## 5. Metabolite annotation

Choose a metid-compatible database, polarity, chromatography, adducts and matching tolerances. Use RT matching only when reference and experimental conditions are compatible. Select candidates to inspect experimental/reference MS2 mirrors, mass error and supporting evidence. An MS1-only match is a candidate, not MS2-supported identification.

Where available, **Skip annotation for statistics** lets you continue feature-level analysis. Annotation-dependent pathway analysis requires suitable annotations and updated downstream steps.

## 6. Statistical analysis

Inspect PCA and explicitly choose the comparison groups. Check which input dataset and intensity transformation are used. Paired analysis requires a correct subject column and one matching observation in each group per included subject; sample order cannot establish pairing. Record the test, fold-change direction and multiple-testing correction.

## 7. Pathway analysis

Check compound IDs, candidate ambiguity, input selection, organism, pathway database and background definition. Do not count multiple ion features as independent confirmations of one compound. Empty results can be valid: investigate coverage and mappings before changing thresholds.

## 8. Results & export

Export complete tables, objects, parameters, code, logs and session information for the desired run scope. A paginated preview is not the complete table. Keep external raw files and databases with the project backup.

## Continue or rerun

Reopen a saved project to continue at the first unfinished step whose prerequisites are satisfied. A successful upstream rerun makes dependent downstream results **stale**; rerun the affected steps. Old results remain in **Run history**. A failed or canceled retry does not replace the previous successful result.

Recovery operates between saved steps, not at an arbitrary scan inside interrupted peak detection.
