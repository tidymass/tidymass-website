---
title: "metid — Annotate features and inspect spectra"
linktitle: "metid"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 9
toc: true
commentable: false
editable: false
translationKey: "r-package-metid"
---

**Version checked for this guide: 1.3.2** · 2026-09-23

metid matches precursor masses, compatible RT and available MS2 against a `databaseClass`. Import or construct the reference database and attach experimental MS2 to your `mass_dataset` first. Check ion polarity, chromatography and adduct settings.

The current API includes `annotate_metabolites_mass_dataset()` alongside established `metIdentify*` and `mzIdentify*` interfaces. Do not mix argument names from different interfaces. The example explicitly disables RT evidence for a reference whose chromatography is not comparable. Review tolerances against your instrument; these values are illustrative.

Inspect all candidate evidence, not just a top score. An MS1 candidate is not a confirmed structure. An in-house database can support stronger identification when standards and measurements meet the actual evidence criteria; the database's name alone does not establish confidence. Retain ambiguous candidates and record any filtering or adduct de-duplication. Origin annotations report database associations, not direct evidence of synthesis in your sample.

## Functional scope

Database construction and validation; MS1/MS2 annotation; single-peak queries; matching scores and mirror spectra; confidence/candidate/adduct filtering; origin summaries.

## Example

```r
# Requires an MS2-associated object and a compatible databaseClass.
# database <- readRDS("reference_database.rds")
# annotated <- metid::annotate_metabolites_mass_dataset(
#   object = object, database = database,
#   polarity = "positive", column = "rp",
#   ms1.match.ppm = 15, ms2.match.ppm = 30,
#   rt.match.tol = NA, rt.match.weight = 0,
#   candidate.num = 3, threads = 2
# )
help("annotate_metabolites_mass_dataset", package = "metid")
```

## Find a function

The checked source exports the following APIs, including compatibility interfaces and utilities. Consult the installed version with `help("function_name", package = "metid")` for argument details.

<details>
<summary>Show exported functions</summary>

`analyze_metabolite_origins`, `annotate_metabolites`, `annotate_metabolites_mass_dataset`, `annotate_peaks_mz_rt_ms2`, `annotate_single_peak_mass_dataset`, `calculate_confidence_level`, `calculate_dotproduct`, `calculate_ms2_matching_score`, `calculate_mz_match_score`, `calculate_rt_match_score`, `calculate_total_score`, `check_adduct_table`, `check_database`, `check_mass_dataset`, `check_ms1_ms2_info`, `check_object4metablite_origin`, `check_parameters4annotate_metabolites`, `check_parameters4calculate_total_score`, `construct_database`, `construct_massbank_database`, `construct_mona_database`, `correct_database_rt`, `extract_database_name`, `extract_ms1_database`, `extract_ms1_info`, `extract_ms2_database`, `extract_ms2_info`, `filter`, `filter_adducts`, `filter_identification`, `getIdentificationTable2`, `getMS2spectrum`, `get_iden_info`, `get_identification_table`, `get_identification_table_all`, `get_ms2_spectrum`, `get_ms2_spectrum_from_object`, `get_parameters`, `get_parameters_metid`, `identify_metabolite_all`, `identify_metabolites`, `identify_metabolites_params`, `identify_ms2_only`, `identify_peak`, `identify_single_peak`, `load_adduct_table`, `match_ms2_fragments`, `match_ms2_temp`, `metIdentification`, `metIdentify`, `metIdentify_mass_dataset`, `metabolite_origin_network`, `metabolite_origin_upsetplot`, `metid`, `metid_conflicts`, `metid_logo`, `metid_packages`, `ms2_plot_mass_dataset`, `ms2plot`, `mzIdentify`, `mzIdentifyParam`, `mzIdentify_mass_dataset`, `plot_ms2_matching`, `readMGF`, `readMSP`, `readMSP_MoNA`, `readMZXML`, `read_mgf_experiment`, `read_mgf_gnps`, `read_mgf_mona`, `read_msp`, `read_msp_database`, `read_msp_gnps`, `read_msp_mona`, `remove_impossible_annotations`, `remove_impossible_annotations_fix`, `remove_noise`, `source_metabolite_network`, `source_network`, `specific_source_network`, `summary_annotation_table`, `trans_to_new_style`, `which_has_identification`, `write_mgf_gnps`, `write_mgf_massbank`, `write_mgf_mona`, `write_msp`, `write_msp_gnps`, `write_msp_massbank`, `write_msp_mona`

</details>

[Package source and reference documentation](https://github.com/tidymass/metid) · [Complete workflow](../workflow/)
