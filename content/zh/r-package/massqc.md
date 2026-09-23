---
title: "massqc — 质量评估与报告"
linktitle: "massqc"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 7
toc: true
commentable: false
editable: false
translationKey: "r-package-massqc"
---

**文档核对版本: 1.0.8** · 2026-09-23

清洗前后都应评估质量。为 massqc 提供样品用途、批次和进样顺序正确的 `mass_dataset`，将报告写入新的输出目录，并保留生成报告的输入对象。

检查按样品/feature 汇总的缺失值、强度分布、QC RSD、相关性和 PCA。QC RSD 需要真实定量 QC 重复。低 RSD 不代表身份已确认，PCA 异常点也可能反映生物学差异。报告中写清输入是否已填补或归一化，因为这些处理影响指标。

HTML 报告需要可用的渲染依赖；PDF 还需要相应文档工具链。渲染失败时先检查日志，可以先输出单独诊断图，再修复缺少的渲染环境。

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/r-package-massqc-zh.svg" caption="从两个层面查看质量。步骤编号表示阅读顺序；此图为流程示意。" >}}

某个样本的缺失值明显偏多可能提示采集问题；某个特征在许多样本中缺失可能不适合预定分析。应分别检查这两个层面。使用明确保存的对象生成处理前后报告，才能追溯变化由哪一步造成。

## 功能范围

HTML/PDF 报告、样品与 feature 缺失值、m/z–RT 分布、RSD 曲线、强度箱线图、PCA 和样品相关性。

## 使用示例

```r
# Requires object and the report-rendering dependencies.
# massqc::massqc_report(object, path = "qc_before", type = "html")
massqc::show_sample_missing_values(object)
massqc::show_variable_missing_values(object)
```

## 函数查询

下面列出已核对源码中导出的 API，包括兼容接口与辅助函数。具体参数以安装版本的 R 帮助为准；例如运行 `help("函数名", package = "massqc")`。

<details>
<summary>展开导出函数列表</summary>

`extract_expression_data`, `extract_process_info`, `extract_sample_info`, `extract_variable_info`, `get_mv_number`, `massqc_conflicts`, `massqc_cumulative_rsd_plot`, `massqc_logo`, `massqc_packages`, `massqc_pca`, `massqc_pca_pc1`, `massqc_report`, `massqc_rsd_plot`, `massqc_sample_boxplot`, `massqc_sample_correlation`, `show_missing_values`, `show_mz_rt_plot`, `show_sample_missing_values`, `show_variable_missing_values`

</details>

[包源码与参考文档](https://github.com/tidymass/massqc) · [完整工作流](../workflow/)

## 看图操作：阅读包内示例的缺失情况

{{< tutorial-figure src="/tutorial-images/r/missingness.png" caption="阅读包内示例的缺失情况。使用 massdataset 的 expression_data 实际生成：1,000 个特征 × 8 个样本；这些是教学数据。" >}}

1. 左图以 1,000 个特征为分母显示每个样本的缺失比例，应先比较各样本再判断是否异常。
2. 右图汇总每个特征在八个样本中的缺失比例；全部样本都缺失的特征不提供定量证据。
3. 结合诊断选择并记录过滤条件；此图不规定通用阈值。
