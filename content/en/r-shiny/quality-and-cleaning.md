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

## Visual guide: the route through this chapter

{{< tutorial-figure src="/tutorial-images/r-shiny-quality-and-cleaning-en.svg" caption="Keep the cleaning order explicit. Numbers show the reading order; this is a schematic." >}}

Generate the overview before making changes. Record the missingness criteria and any removed samples, then impute and normalize. Save intermediate objects so a later analysis can return to the correct input rather than repeat undocumented operations.

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

## Walkthrough: Read the overview panels

{{< tutorial-figure src="/tutorial-images/shiny/Overview1.png" caption="Read the overview panels. Reproduced from the published TidyMassShiny tutorial; interface details can differ by deployment." >}}

1. Click Start to generate the overview and select Positive or Negative consistently across panels.
2. Read m/z–RT density at upper left, the missing-value matrix at upper right, and sample/feature missingness below. These views answer different quality questions.
3. Investigate a suspicious sample against acquisition records. Download the before-cleaning plots before applying any exclusion.

## Walkthrough: Filter noisy features

{{< tutorial-figure src="/tutorial-images/shiny/noisy_metabolites.png" caption="Filter noisy features. Reproduced from the published TidyMassShiny tutorial; interface details can differ by deployment." >}}

1. Set the QC missingness cutoff only if suitable quantitative QCs exist, and choose the biological grouping column.
2. Set the group missingness threshold and click Start. The 20%/50% values pictured are tutorial examples, not universal standards.
3. Read the updated object dimensions in Status and use Show plot to inspect the chosen sample class. Save the retained-feature list and criteria.

## Walkthrough: Configure missing-value imputation

{{< tutorial-figure src="/tutorial-images/shiny/imputation1.png" caption="Configure missing-value imputation. Reproduced from the published TidyMassShiny tutorial; interface details can differ by deployment." >}}

1. Select the method first. The picture shows kNN and its k, rowmax, colmax, maxp and random-seed controls.
2. Choose k with regard to the available data; rowmax/colmax control admissible missingness while maxp is a block-size control, not a missingness percentage.
3. After running, check the expression table and Status history. Compare missing-value counts before and after; investigate remaining NA values rather than silently discarding them.
