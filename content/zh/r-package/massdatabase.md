---
title: "massdatabase — 获取与构建参考数据库"
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

**文档核对版本: 1.0.14** · 2026-09-23

massdatabase 用于获取、解析和转换化合物、谱图及通路资源，本身不是一个包罗所有化合物的数据库。先确定后续分析需要的数据来源和 ID 系统。

典型谱库流程为：下载来源文件 → 按 MSP/XML/SDF 等格式读取 → 转为 metid 数据库。通路流程为：获取物种对应的 KEGG 或其他支持资源 → 读取 → 转为 metpath 对象。保存原始资源、获取日期、物种、转换参数和来源版本。

导出 API 覆盖 KEGG、HMDB、MassBank、MoNA、GNPS、PubChem、ChEBI、LipidMaps、FooDB、BiGG、SMPDB、Reactome、WikiPathways 等相关操作，各来源支持的下载/读取/查询/转换组合不同。在线服务和文件结构可能变化；请求失败不代表化合物不存在。共享衍生数据库前检查来源使用条件和覆盖范围。

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/r-package-massdatabase-zh.svg" caption="追溯参考数据库。步骤编号表示阅读顺序；此图为流程示意。" >}}

按任务选择数据库：化合物元数据、谱图注释和通路分析需要不同资源。解析后核对 ID 命名空间与覆盖率，随结果保存来源链接、版本日期与获取日期。完成 ID 映射不代表实验鉴定成立。

## 功能范围

来源特定的在线查询下载、谱图/化合物/通路解析、metid/metpath 格式转换及 ID/来源辅助工具。

## 使用示例

```r
# Use the source-specific reader matching your downloaded data.
help("read_msp_data", package = "massdatabase")
help("convert_mona2metid", package = "massdatabase")
help("download_kegg_pathway", package = "massdatabase")
help("convert_kegg2metpath", package = "massdatabase")
```

## 函数查询

下面列出已核对源码中导出的 API，包括兼容接口与辅助函数。具体参数以安装版本的 R 帮助为准；例如运行 `help("函数名", package = "massdatabase")`。

<details>
<summary>展开导出函数列表</summary>

`convert2metid`, `convert_bigg_universal2metid`, `convert_chebi2metid`, `convert_foodb2metid`, `convert_gnps2metid`, `convert_hmdb2metid`, `convert_kegg2metid`, `convert_kegg2metpath`, `convert_lipidbank2metid`, `convert_lipidmaps2metid`, `convert_massbank2metid`, `convert_massbank2metid_nist`, `convert_massbank2metid_riken`, `convert_mona2metid`, `convert_nist2metid`, `convert_smpdb2metpath`, `convert_species2source`, `download_bigg_model`, `download_bigg_universal_metabolite`, `download_chebi_compound`, `download_foodb_compound`, `download_gnps_spectral_library`, `download_kegg_compound`, `download_kegg_drug`, `download_kegg_pathway`, `download_kegg_rclass`, `download_kegg_reaction`, `download_lipidbank_lipid_class`, `download_lipidmaps_lipid`, `download_massbank_compound`, `download_pubchem_compound`, `download_smpdb_pathway`, `get_words_similarity`, `massdatabase_logo`, `massdatabase_packages`, `parse_pubchem_compound`, `parse_reactome_pathway`, `parse_reactome_reaction`, `read_bigg_model`, `read_bigg_universal_metabolite`, `read_chebi_compound`, `read_foodb_compound`, `read_gpml`, `read_kegg_compound`, `read_kegg_drug`, `read_kegg_pathway`, `read_msp_data`, `read_msp_data_gnps`, `read_msp_data_massbank`, `read_msp_data_mona`, `read_msp_data_nist`, `read_sdf_data_lipidmaps`, `read_smpdb_pathway`, `read_xml_data`, `read_xml_data_hmdb`, `request_bigg_model_info`, `request_bigg_reaction_info`, `request_bigg_universal_metabolite`, `request_bigg_universal_metabolite_info`, `request_bigg_universal_reaction`, `request_bigg_universal_reaction_info`, `request_bigg_version`, `request_chebi_compound`, `request_foodb_compound`, `request_foodb_compound_info`, `request_foodb_compound_info_crawler`, `request_foodb_compound_ms2`, `request_hmdb_metabolite`, `request_hmdb_reaction`, `request_kegg_compound`, `request_kegg_compound_info`, `request_kegg_drug`, `request_kegg_drug_info`, `request_kegg_pathway`, `request_kegg_pathway_info`, `request_kegg_rclass`, `request_kegg_rclass_info`, `request_kegg_reaction`, `request_kegg_reaction_info`, `request_lipidbank_lipid_class`, `request_lipidmaps_lipid`, `request_pubchem_compound`, `request_reactome_organisms_info`, `request_reactome_pathway`, `request_reactome_pathway_info`, `request_reactome_reaction`, `request_reactome_reaction_info`, `request_wikidata_metabolite`, `request_wikipathway`, `request_wikipathway_info`, `request_wikipathway_organisms_info`, `request_wikipedia_compound`, `request_wikipedia_scientific_classification`, `search_hmdb_database`, `show_progresser`

</details>

[包源码与参考文档](https://github.com/tidymass/massdatabase) · [完整工作流](../workflow/)
