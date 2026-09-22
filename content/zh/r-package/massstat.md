---
title: "massstat — 探索变异与组间比较"
linktitle: "massstat"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 10
toc: true
commentable: false
editable: false
translationKey: "r-package-massstat"
---

**文档核对版本: 1.0.6** · 2026-09-23

使用适当清洗的数据和预先定义的比较方案。QC/Blank 不参与生物学假设检验。按用途选择变换与缩放：PCA 使用缩放不意味着 fold change 也要从缩放值计算。

`run_pca()` 返回 PCA 模型，`pca_score_plot()` 绘制得分；`mutate_fc()` 按均值或中位数计算 case/control；`mutate_p_value()` 支持 t 检验和 Wilcoxon 检验，并添加多重校正结果。配对检验前明确对齐同一个体。下例为独立分组比较，组名来自样品信息；这些 massstat 接口要求每个比较组至少三个样品。

其他功能包括热图、相关性、距离、图结构转换、PLS 和 PLS-DA。训练数据上的监督分离不是预测验证，需使用合适的留出或嵌套验证，不能先在全部数据上筛选特征再切分。

## 功能范围

PCA 与缩放、倍数变化和假设检验、火山图与热图、相关性/距离/图结构，以及 PLS/PLS-DA。

## 使用示例

```r
si <- massdataset::extract_sample_info(normalized)
control <- si$sample_id[si$group == "Control"]
case <- si$sample_id[si$group == "Treatment"]
# Replace labels to match your experimental design.
if (length(control) >= 3 && length(case) >= 3) {
  stats_object <- massstat::mutate_fc(normalized, control, case,
                                     mean_median = "mean")
  stats_object <- massstat::mutate_p_value(stats_object, control, case,
    method = "t.test", p_adjust_methods = "BH")
  write.csv(massdataset::extract_variable_info(stats_object),
            "feature_statistics.csv", row.names = FALSE)
}
```

## 函数查询

下面列出已核对源码中导出的 API，包括兼容接口与辅助函数。具体参数以安装版本的 R 帮助为准；例如运行 `help("函数名", package = "massstat")`。

<details>
<summary>展开导出函数列表</summary>

`Heatmap`, `convert_dummy_variable`, `convert_mass_dataset2graph`, `cor_mass_dataset`, `dist_mass_dataset`, `massstat_conflicts`, `massstat_logo`, `massstat_packages`, `mutate_fc`, `mutate_p_value`, `pca_score_plot`, `pls`, `plsda`, `run_pca`, `scale_data`, `scale_data1`, `scale_data2`, `volcano_plot`

</details>

[包源码与参考文档](https://github.com/tidymass/massstat) · [完整工作流](../workflow/)
