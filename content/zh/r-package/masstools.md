---
title: "masstools — 分子式、谱图与 ID 工具"
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

**文档核对版本: 0.99.1** · 2026-09-23

masstools 提供其他包共用的辅助工具：分子式校验与质量计算、加合物处理、m/z–RT 匹配、谱图读取转换、去噪及匹配分数。存在同名函数时使用包命名空间。

中性精确质量不是实测前体 m/z，应按离子/加合物和电荷正确转换。谱图相似度受容差、强度处理和碎片覆盖影响，分数本身不等于鉴定。

ID 转换依赖上游服务，保留输入、输出、服务及失败记录，使用结构标识核验一对多映射。LLM 或其他远程服务接口为可选功能，需要配置；生成的 ID 必须独立核验后才能用于注释或富集。

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/r-package-masstools-zh.svg" caption="明确辅助计算的含义。步骤编号表示阅读顺序；此图为流程示意。" >}}

使用辅助计算结果前检查单位和约定：秒与分钟不可混用，中性分子精确质量也不等于加合离子 m/z。先用已知分子式核对，并记录输出类型；各参数以安装版本帮助页为准。

## 功能范围

分子式与加合物操作、质量转换、谱图解析转换与相似度、m/z–RT 匹配、ID 服务及化合物分类查询。

## 使用示例

```r
masstools::calculate_mass("C6H12O6", which = "exact_mass")
help("convert_precursor_mz2accurate_mass", package = "masstools")
help("read_mgf", package = "masstools")
help("calculate_spectra_match_score", package = "masstools")
```

## 函数查询

下面列出已核对源码中导出的 API，包括兼容接口与辅助函数。具体参数以安装版本的 R 帮助为准；例如运行 `help("函数名", package = "masstools")`。

<details>
<summary>展开导出函数列表</summary>

`build_progress_table`, `calculate_dot_product`, `calculate_mass`, `calculate_spectra_match_score`, `check_adduct_formula`, `check_chemical_element`, `check_chemical_formula`, `combine_formula_adduct`, `convert_metabolite_id`, `convert_metabolite_id_chemspider`, `convert_metabolite_id_oliver`, `convert_metabolite_id_openai`, `convert_precursor_mz2accurate_mass`, `deduplicate_names`, `detect_os`, `df_to_spectra`, `getDP`, `getSpectraMatchScore`, `get_compound_class`, `get_dp`, `get_os`, `get_spectra_match_score`, `keep_best_match`, `keep_one`, `list_masstools_packages`, `list_metabolite_id_systems`, `masstools_logo`, `masstools_packages`, `match_mz_rt`, `ms2Match`, `ms2_match`, `ms2_plot`, `mz_rt_match`, `name_duplicated`, `parse_chemical_formula`, `plot_ms2`, `read_mgf`, `read_mgf4database`, `read_mgf_database`, `read_mzxml`, `removeNoise`, `remove_noise`, `report_conflicts`, `request_chemspider_metabolite`, `request_metabolite_id_systems`, `retrieve_chemspider_metabolite`, `retrieve_compound_class`, `show_progresser`, `spectra_to_df`, `split_formula`, `sum_formula`, `trans_ID`

</details>

[包源码与参考文档](https://github.com/tidymass/masstools) · [完整工作流](../workflow/)
