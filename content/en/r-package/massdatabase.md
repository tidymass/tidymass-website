---
title: "massdatabase — Retrieve and build reference resources"
linktitle: "massdatabase"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 8
toc: true
commentable: false
editable: false
translationKey: "r-package-massdatabase"
---

**Version checked for this guide: 1.0.14** · 2026-09-23

massdatabase retrieves, parses and converts compound, spectrum and pathway resources. It is not itself one universal metabolite database. Choose the source and the identifier system needed by your next analysis.

A typical spectral route downloads a source library, reads its documented MSP/XML/SDF format and converts it into a metid database. A pathway route downloads organism-specific KEGG or another supported resource, reads it and converts it into a metpath object. Preserve the original resource, retrieval date, organism, conversion parameters and source version.

The exported API includes KEGG, HMDB, MassBank, MoNA, GNPS, PubChem, ChEBI, LipidMaps, FooDB, BiGG, SMPDB, Reactome and WikiPathways-related tasks; different sources provide different combinations of download/read/request/convert functions. Network services and file schemas can change. A failed request is not evidence that a metabolite is absent. Inspect source terms and database coverage before redistributing a derived database.

## Functional scope

Source-specific web requests and downloads; spectrum/compound/pathway parsers; conversion to metid and metpath; identifier and source utilities.

## Example

```r
# Use the source-specific reader matching your downloaded data.
help("read_msp_data", package = "massdatabase")
help("convert_mona2metid", package = "massdatabase")
help("download_kegg_pathway", package = "massdatabase")
help("convert_kegg2metpath", package = "massdatabase")
```

## Find a function

The checked source exports the following APIs, including compatibility interfaces and utilities. Consult the installed version with `help("function_name", package = "massdatabase")` for argument details.

<details>
<summary>Show exported functions</summary>

`convert2metid`, `convert_bigg_universal2metid`, `convert_chebi2metid`, `convert_foodb2metid`, `convert_gnps2metid`, `convert_hmdb2metid`, `convert_kegg2metid`, `convert_kegg2metpath`, `convert_lipidbank2metid`, `convert_lipidmaps2metid`, `convert_massbank2metid`, `convert_massbank2metid_nist`, `convert_massbank2metid_riken`, `convert_mona2metid`, `convert_nist2metid`, `convert_smpdb2metpath`, `convert_species2source`, `download_bigg_model`, `download_bigg_universal_metabolite`, `download_chebi_compound`, `download_foodb_compound`, `download_gnps_spectral_library`, `download_kegg_compound`, `download_kegg_drug`, `download_kegg_pathway`, `download_kegg_rclass`, `download_kegg_reaction`, `download_lipidbank_lipid_class`, `download_lipidmaps_lipid`, `download_massbank_compound`, `download_pubchem_compound`, `download_smpdb_pathway`, `get_words_similarity`, `massdatabase_logo`, `massdatabase_packages`, `parse_pubchem_compound`, `parse_reactome_pathway`, `parse_reactome_reaction`, `read_bigg_model`, `read_bigg_universal_metabolite`, `read_chebi_compound`, `read_foodb_compound`, `read_gpml`, `read_kegg_compound`, `read_kegg_drug`, `read_kegg_pathway`, `read_msp_data`, `read_msp_data_gnps`, `read_msp_data_massbank`, `read_msp_data_mona`, `read_msp_data_nist`, `read_sdf_data_lipidmaps`, `read_smpdb_pathway`, `read_xml_data`, `read_xml_data_hmdb`, `request_bigg_model_info`, `request_bigg_reaction_info`, `request_bigg_universal_metabolite`, `request_bigg_universal_metabolite_info`, `request_bigg_universal_reaction`, `request_bigg_universal_reaction_info`, `request_bigg_version`, `request_chebi_compound`, `request_foodb_compound`, `request_foodb_compound_info`, `request_foodb_compound_info_crawler`, `request_foodb_compound_ms2`, `request_hmdb_metabolite`, `request_hmdb_reaction`, `request_kegg_compound`, `request_kegg_compound_info`, `request_kegg_drug`, `request_kegg_drug_info`, `request_kegg_pathway`, `request_kegg_pathway_info`, `request_kegg_rclass`, `request_kegg_rclass_info`, `request_kegg_reaction`, `request_kegg_reaction_info`, `request_lipidbank_lipid_class`, `request_lipidmaps_lipid`, `request_pubchem_compound`, `request_reactome_organisms_info`, `request_reactome_pathway`, `request_reactome_pathway_info`, `request_reactome_reaction`, `request_reactome_reaction_info`, `request_wikidata_metabolite`, `request_wikipathway`, `request_wikipathway_info`, `request_wikipathway_organisms_info`, `request_wikipedia_compound`, `request_wikipedia_scientific_classification`, `search_hmdb_database`, `show_progresser`

</details>

[Package source and reference documentation](https://github.com/tidymass/massdatabase) · [Complete workflow](../workflow/)
