---
title: "metpath — Analyze pathways and feature modules"
linktitle: "metpath"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 11
toc: true
commentable: false
editable: false
translationKey: "r-package-metpath"
---

**Version checked for this guide: 1.0.10** · 2026-09-23

For compound-level enrichment, prepare de-duplicated compound IDs, a pathway database for the organism and an explicit selection rule. Match KEGG IDs to KEGG resources and HMDB IDs to compatible resources; human-readable names are not a substitute for these identifiers.

`enrich_kegg()`, `enrich_hmdb()` and `enrich_pathways()` support the documented pathway enrichment interfaces. Specify the adjustment method instead of silently accepting a default. In `enrich_kegg()`, the background derives from the supplied pathway database; the interface does not expose a separate `background` argument. If your experiment requires a measured-compound universe, construct and verify an appropriately restricted database or use a method with an explicit universe. Do not silently report the full database as the measured background.

Feature-based functionality includes isotope annotation, RT grouping, candidate assignment, activity scoring, null distributions and `perform_fpa()`. It extends analysis beyond confidently annotated compounds while retaining annotation uncertainty. Such modules are hypotheses, not confirmation of every compound or pathway activity. Bar, scatter and network displays summarize supported results.

## Functional scope

Pathway data access/filtering; over-representation tests; enrichment plots/networks; isotope/feature grouping and functional module analysis.

## Example

```r
# Requires your deduplicated IDs and a pathway_database object.
# enrichment <- metpath::enrich_kegg(
#   query_id = unique(selected_kegg_ids), query_type = "compound",
#   id_type = "KEGG", pathway_database = pathway_database,
#   method = "hypergeometric", p_adjust_method = "BH",
#   p_cutoff = 0.05, threads = 2
# )
help("perform_fpa", package = "metpath")
```

## Find a function

The checked source exports the following APIs, including compatibility interfaces and utilities. Consult the installed version with `help("function_name", package = "metpath")` for argument details.

<details>
<summary>Show exported functions</summary>

`annotate_isotope`, `annotate_metabolites_fpa`, `arrange`, `calculate_activity_score`, `calculate_activity_socre`, `calculate_centrality`, `calculate_redundance`, `compound_list`, `database_info`, `describtion`, `enrich_bar_plot`, `enrich_hmdb`, `enrich_kegg`, `enrich_metabolic_pathway`, `enrich_network`, `enrich_pathways`, `enrich_scatter_plot`, `filter`, `filter_pathway`, `gene_list`, `generate_null_activity_score_distribution`, `get_hidden_metabolites`, `get_pathway_class`, `group_peaks_rt`, `identify_metabolic_modules`, `metpath_conflicts`, `metpath_logo`, `metpath_packages`, `pathway_class`, `pathway_id`, `pathway_name`, `perform_fpa`, `plot_metabolic_module_fpa`, `plot_metabolic_network_fpa`, `reference_list`, `related_disease`, `related_module`, `remove_redundancy`, `score_peak_group`

</details>

[Package source and reference documentation](https://github.com/tidymass/metpath) · [Complete workflow](../workflow/)
