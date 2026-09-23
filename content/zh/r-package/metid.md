---
title: "metid — Feature 注释与谱图审查"
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

**文档核对版本: 1.3.2** · 2026-09-23

metid 将前体质量、条件相容的 RT 及可用 MS2 与 `databaseClass` 匹配。先导入或构建参考数据库，再给 `mass_dataset` 关联实验 MS2，核对离子模式、色谱和加合物。

当前 API 包含 `annotate_metabolites_mass_dataset()`，也保留 `metIdentify*`、`mzIdentify*` 等接口，不能混用参数名。下例针对色谱不可比的参考库明确关闭 RT 证据；质量容差需依据自己的仪器设置，示例值只用于说明。

审查完整候选证据，不只看最高分。MS1 候选不是结构确认；自建库也需要标准品和实际测量满足证据要求，不能仅按库名判断置信度。保留歧义，记录候选筛选和加合物去重规则。来源注释是数据库关联，不是样品中实际合成来源的直接证明。

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/r-package-metid-zh.svg" caption="建立注释证据链。步骤编号表示阅读顺序；此图为流程示意。" >}}

复核候选时依次检查质量误差、可比条件下的 RT 证据、MS2 匹配与未匹配碎片，并核对加合物与极性。证据不足以区分时保留多个候选；最高分是当前条件下的排序，不代表绝对确定。

## 功能范围

数据库构建校验、MS1/MS2 注释、单峰查询、匹配分数和镜像谱、置信度/候选/加合物筛选及来源汇总。

## 使用示例

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

## 函数查询

下面列出已核对源码中导出的 API，包括兼容接口与辅助函数。具体参数以安装版本的 R 帮助为准；例如运行 `help("函数名", package = "metid")`。

<details>
<summary>展开导出函数列表</summary>

`analyze_metabolite_origins`, `annotate_metabolites`, `annotate_metabolites_mass_dataset`, `annotate_peaks_mz_rt_ms2`, `annotate_single_peak_mass_dataset`, `calculate_confidence_level`, `calculate_dotproduct`, `calculate_ms2_matching_score`, `calculate_mz_match_score`, `calculate_rt_match_score`, `calculate_total_score`, `check_adduct_table`, `check_database`, `check_mass_dataset`, `check_ms1_ms2_info`, `check_object4metablite_origin`, `check_parameters4annotate_metabolites`, `check_parameters4calculate_total_score`, `construct_database`, `construct_massbank_database`, `construct_mona_database`, `correct_database_rt`, `extract_database_name`, `extract_ms1_database`, `extract_ms1_info`, `extract_ms2_database`, `extract_ms2_info`, `filter`, `filter_adducts`, `filter_identification`, `getIdentificationTable2`, `getMS2spectrum`, `get_iden_info`, `get_identification_table`, `get_identification_table_all`, `get_ms2_spectrum`, `get_ms2_spectrum_from_object`, `get_parameters`, `get_parameters_metid`, `identify_metabolite_all`, `identify_metabolites`, `identify_metabolites_params`, `identify_ms2_only`, `identify_peak`, `identify_single_peak`, `load_adduct_table`, `match_ms2_fragments`, `match_ms2_temp`, `metIdentification`, `metIdentify`, `metIdentify_mass_dataset`, `metabolite_origin_network`, `metabolite_origin_upsetplot`, `metid`, `metid_conflicts`, `metid_logo`, `metid_packages`, `ms2_plot_mass_dataset`, `ms2plot`, `mzIdentify`, `mzIdentifyParam`, `mzIdentify_mass_dataset`, `plot_ms2_matching`, `readMGF`, `readMSP`, `readMSP_MoNA`, `readMZXML`, `read_mgf_experiment`, `read_mgf_gnps`, `read_mgf_mona`, `read_msp`, `read_msp_database`, `read_msp_gnps`, `read_msp_mona`, `remove_impossible_annotations`, `remove_impossible_annotations_fix`, `remove_noise`, `source_metabolite_network`, `source_network`, `specific_source_network`, `summary_annotation_table`, `trans_to_new_style`, `which_has_identification`, `write_mgf_gnps`, `write_mgf_massbank`, `write_mgf_mona`, `write_msp`, `write_msp_gnps`, `write_msp_massbank`, `write_msp_mona`

</details>

[包源码与参考文档](https://github.com/tidymass/metid) · [完整工作流](../workflow/)
