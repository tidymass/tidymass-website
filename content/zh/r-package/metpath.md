---
title: "metpath — 通路与 feature 模块分析"
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

**文档核对版本: 1.0.10** · 2026-09-23

化合物层面的富集需要去重后的化合物 ID、对应物种的通路库和明确的筛选规则。KEGG ID 与 KEGG 资源对应，HMDB ID 与相容资源对应，不能直接用名称替代 ID。

`enrich_kegg()`、`enrich_hmdb()`、`enrich_pathways()` 提供相应富集接口，显式设置多重校正方法。`enrich_kegg()` 的背景来自传入的通路数据库，没有独立的 `background` 参数。如果实验需要以实际测到的化合物为背景，应构造并核验受限数据库，或采用可显式指定背景的方法，不能把完整数据库暗称为实测背景。

Feature 方法包括同位素注释、RT 分组、候选分配、活性评分、零分布和 `perform_fpa()`。它拓展对未充分鉴定 feature 的解释，但保留注释不确定性。模块结果是待验证假设，不能确认其中每个化合物或实际通路活性。柱状图、散点图和网络图用于展示相应结果。

## 功能范围

通路数据提取筛选、过度表达富集检验、富集图和网络、同位素/feature 分组及功能模块分析。

## 使用示例

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

## 函数查询

下面列出已核对源码中导出的 API，包括兼容接口与辅助函数。具体参数以安装版本的 R 帮助为准；例如运行 `help("函数名", package = "metpath")`。

<details>
<summary>展开导出函数列表</summary>

`annotate_isotope`, `annotate_metabolites_fpa`, `arrange`, `calculate_activity_score`, `calculate_activity_socre`, `calculate_centrality`, `calculate_redundance`, `compound_list`, `database_info`, `describtion`, `enrich_bar_plot`, `enrich_hmdb`, `enrich_kegg`, `enrich_metabolic_pathway`, `enrich_network`, `enrich_pathways`, `enrich_scatter_plot`, `filter`, `filter_pathway`, `gene_list`, `generate_null_activity_score_distribution`, `get_hidden_metabolites`, `get_pathway_class`, `group_peaks_rt`, `identify_metabolic_modules`, `metpath_conflicts`, `metpath_logo`, `metpath_packages`, `pathway_class`, `pathway_id`, `pathway_name`, `perform_fpa`, `plot_metabolic_module_fpa`, `plot_metabolic_network_fpa`, `reference_list`, `related_disease`, `related_module`, `remove_redundancy`, `score_peak_group`

</details>

[包源码与参考文档](https://github.com/tidymass/metpath) · [完整工作流](../workflow/)
