---
title: "Assess quality and clean data"
linktitle: "Assess quality and clean data"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 3
toc: true
commentable: false
editable: false
translationKey: "r-shiny-quality-and-cleaning"
---

Based on the current published tutorial and the public tidymassshiny 1.0.0 source; checked September 23, 2026.

## Generate an overview

Open **Overview** and click **START**. Review m/z–RT distribution, missingness by sample/feature, QC RSD, intensity distributions, PCA and sample correlations. Select the relevant group, batch or injection-order coloring and download plots with their settings.

QC RSD describes technical repeatability where suitable quantitative QCs exist. Matrix intensity totals are not automatically raw TIC. Investigate suspicious samples against acquisition records before excluding them.

## Remove noisy features

Choose QC and biological-group missingness cutoffs, run the filtering step and inspect its retained feature count and missingness plots. The existing tutorial's 20% QC / 50% group examples are adjustable choices, not universal cutoffs. Do not activate a QC-dependent condition when quantitative QCs are absent. Confirm how group criteria are combined in the installed module.

## Review outlier samples

Generate missingness/PCA displays. **By tidymass** offers the documented missingness, PC SD, PC MAD and distance-based strategies; **By myself** permits explicit selections. Review candidate IDs and experimental reasons, then run the exclusion operation. Preserve both the original object and your exclusion decisions.

## Impute missing values

Choose a method and inspect its parameter panel. kNN uses neighbors and row/column missingness controls; random forest uses iteration/tree controls; PPCA uses component and convergence settings. `maxp` in kNN concerns the maximum block size used by the underlying algorithm, not a percentage. Record the seed when provided.

Click **START**, wait for completion and verify that the intended sample subset was processed. Avoid imputing a wholly unobserved feature as if it were supported quantitative evidence.

## Normalize and integrate

Select a method appropriate to the experiment. SVR and LOESS require suitable QCs and acquisition information; PQN, median, mean and total are sample-wise approaches. Review keep_scale, optimization, reference and thread controls. Click **Start analysis**, then **Show plot** to inspect before/after results.

Record batch handling separately from normalization. No normalization method can rescue a completely confounded biological-group/batch design. Separately fitted PCAs should not be compared as a single unchanged coordinate system.

Save cleaned objects and diagnostic outputs before proceeding to annotation or statistics.

[Original tutorial and screenshots](https://www.tidymass.org/tidymassshiny-tutorial/upstream-data-processing.html#data-cleaning)
