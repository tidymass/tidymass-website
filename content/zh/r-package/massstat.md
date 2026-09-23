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

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/r-package-massstat-zh.svg" caption="从实验设计到统计结果。步骤编号表示阅读顺序；此图为流程示意。" >}}

检验前明确倍数变化的分子组与分母组，核对样本数、配对关系和变换方式。结合效应量与校正 P 值解释结果，重要特征还要回到峰证据复核。PCA 分离本身不是假设检验。

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

## 看图操作：阅读明确进行了缩放的 PCA

{{< tutorial-figure src="/tutorial-images/r/pca.png" caption="阅读明确进行了缩放的 PCA。使用四个 Subject 示例样本实际生成，不暗示存在两组生物学比较。" >}}

1. 每个点代表样本，坐标轴百分比表示相应主成分解释的方差。
2. 示例预处理后保留有限且非常量特征，使用 prcomp 的 center = TRUE 和 scale. = TRUE。
3. 不能根据此图宣称某个聚类显著；组间比较需要有效实验设计与适合的推断检验。
