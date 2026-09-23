---
title: "Annotation, statistics and enrichment"
linktitle: "Annotation, statistics and enrichment"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 4
toc: true
commentable: false
editable: false
translationKey: "r-shiny-annotation-and-statistics"
---

Based on the current published tutorial and the public tidymassshiny 1.0.0 source; checked September 23, 2026.

## Visual guide: the route through this chapter

{{< tutorial-figure src="/tutorial-images/r-shiny-annotation-and-statistics-en.svg" caption="Connect evidence to interpretation. Numbers show the reading order; this is a schematic." >}}

Check the selected dataset before each module. Confirm annotation evidence, comparison direction, statistical correction and pathway organism in turn. Do not copy numeric thresholds from example screenshots without checking your design and data.

## Attach experimental MS2

Choose **Select MS2 folder** and the prepared MGF files, separated by polarity. Set chromatography and precursor m/z/RT association tolerances, then click **Start**. Association tolerance links a spectrum to a feature; it is distinct from matching to a reference library.

## Annotate metabolites

Place compatible reference databases in a dedicated directory and select **Choose folder**. Set MS1/MS2 tolerances, RT tolerance, candidate count, column and threads, then click **Start annotation** once. Watch the logs and wait for the task to finish.

MoNA, MassBank and HMDB are public resources, not automatically in-house standards. Use reference RT only for comparable chromatography. Inspect candidates and available spectral evidence before accepting a name. Software confidence labels require interpretation in light of the actual measurements; an MS1-only candidate does not become a confirmed structure by receiving a level label.

## Filter annotations and inspect origins

Choose how to retain multiple candidates, handle redundant adducts and filter supported evidence levels. Use **Adduct for level 3 annotation** where appropriate and run **START**. Preserve the unfiltered candidates and the rule used to reduce them.

In **Metabolites origin**, use **Check database**, then **Start**. An UpSet view summarizes origin associations and intersections. Select a compound and **Show network plot** for its database relationships. These are reference associations, not demonstrated biosynthetic origins in your sample.

## Differential analysis

Use **Wake up object**, choose the sample attribute and explicitly select the control/reference group. Run the comparison, then inspect PCA and volcano plots. Confirm fold-change direction and distinguish a raw P-value cutoff from FDR/adjusted P-value. Retain the full table, including nonsignificant features.

Use only the biological samples intended for the test. Do not infer pairing from row order. If the module cannot represent the study's repeated measures or covariates, export the object and use the appropriate R model.

## Pathway enrichment

Choose KEGG/HMDB or **Upload custom database**, verify the organism and ID system, and set the adjustment method, cutoff and threads. Inspect the bar/scatter plots and mapping coverage. Review candidate ambiguity, collapse redundant compound IDs and record the background used by the method. Enrichment is a statistical association with a reference set, not direct proof of pathway activation.



Screenshot from the existing published tutorial.

[Original tutorial and screenshots](https://www.tidymass.org/tidymassshiny-tutorial/downstream-data-processing.html)

## Walkthrough: Configure annotation evidence

{{< tutorial-figure src="/tutorial-images/shiny/metabolite_annotation.png" caption="Configure annotation evidence. Reproduced from the published TidyMassShiny tutorial; interface details can differ by deployment." >}}

1. Select the data, reference database and polarity. Confirm chromatography and adduct choices before setting mass and RT tolerances.
2. Run annotation and inspect candidate-level evidence. A candidate without experimental MS2 cannot be described as MS2-confirmed.
3. Download the full candidate table, including scores and database provenance, before proceeding to statistics.

## Walkthrough: Read the group-comparison view

{{< tutorial-figure src="/tutorial-images/shiny/dam.png" caption="Read the group-comparison view. Reproduced from the published TidyMassShiny tutorial; interface details can differ by deployment." >}}

1. Check the current object and Column index, then select First group and Second group. Record the fold-change direction used by the installed module.
2. Set effect-size and statistical thresholds deliberately. The screenshot’s FDR value of 1 is permissive and should not be copied as a recommended discovery cutoff.
3. Click Start and inspect the full table, especially fc, p_value and p_value_adjust. Read PCA as descriptive structure; return to individual peak evidence before interpreting prominent volcano points.

## Walkthrough: Inspect pathway enrichment

{{< tutorial-figure src="/tutorial-images/shiny/enrichment.png" caption="Inspect pathway enrichment. Reproduced from the published TidyMassShiny tutorial; interface details can differ by deployment." >}}

1. Select a database appropriate to the organism. The pictured KEGG (hsa) option is human-specific; another organism needs an appropriate resource.
2. Set the adjustment method, test and cutoff, then Start enrichment. Inspect mapped compounds and background assumptions alongside the reported pathway table.
3. Download the full results, not just the bar chart. Large visual effects or disease names in a pathway label do not establish causation in your study.
