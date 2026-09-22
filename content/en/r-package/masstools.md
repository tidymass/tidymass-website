---
title: "masstools — Work with formulas, spectra and IDs"
linktitle: "masstools"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 12
toc: true
commentable: false
editable: false
translationKey: "r-package-masstools"
---

**Version checked for this guide: 0.99.1** · 2026-09-23

masstools supplies utilities shared by other packages: formula checks and masses, adduct handling, m/z–RT matching, spectrum input/conversion, noise removal and matching scores. Call with the package namespace when names overlap.

A calculated neutral exact mass is not the measured precursor m/z. Choose the correct ion/adduct conversion and check charge. Spectrum similarity depends on tolerance, intensity treatment and the available fragments; a score alone is not identification.

ID-conversion helpers depend on their upstream providers. Preserve input, output, service and failures, and verify one-to-many mappings against structure identifiers. Functions that use an LLM or another remote service are optional and require configuration; generated IDs need independent verification before annotation or enrichment.

## Functional scope

Formula and adduct operations; mass conversion; spectrum parsing, conversion and similarity; m/z–RT matching; ID services and compound-class lookup.

## Example

```r
masstools::calculate_mass("C6H12O6", which = "exact_mass")
help("convert_precursor_mz2accurate_mass", package = "masstools")
help("read_mgf", package = "masstools")
help("calculate_spectra_match_score", package = "masstools")
```

## Find a function

The checked source exports the following APIs, including compatibility interfaces and utilities. Consult the installed version with `help("function_name", package = "masstools")` for argument details.

<details>
<summary>Show exported functions</summary>

`build_progress_table`, `calculate_dot_product`, `calculate_mass`, `calculate_spectra_match_score`, `check_adduct_formula`, `check_chemical_element`, `check_chemical_formula`, `combine_formula_adduct`, `convert_metabolite_id`, `convert_metabolite_id_chemspider`, `convert_metabolite_id_oliver`, `convert_metabolite_id_openai`, `convert_precursor_mz2accurate_mass`, `deduplicate_names`, `detect_os`, `df_to_spectra`, `getDP`, `getSpectraMatchScore`, `get_compound_class`, `get_dp`, `get_os`, `get_spectra_match_score`, `keep_best_match`, `keep_one`, `list_masstools_packages`, `list_metabolite_id_systems`, `masstools_logo`, `masstools_packages`, `match_mz_rt`, `ms2Match`, `ms2_match`, `ms2_plot`, `mz_rt_match`, `name_duplicated`, `parse_chemical_formula`, `plot_ms2`, `read_mgf`, `read_mgf4database`, `read_mgf_database`, `read_mzxml`, `removeNoise`, `remove_noise`, `report_conflicts`, `request_chemspider_metabolite`, `request_metabolite_id_systems`, `retrieve_chemspider_metabolite`, `retrieve_compound_class`, `show_progresser`, `spectra_to_df`, `split_formula`, `sum_formula`, `trans_ID`

</details>

[Package source and reference documentation](https://github.com/tidymass/masstools) · [Complete workflow](../workflow/)
