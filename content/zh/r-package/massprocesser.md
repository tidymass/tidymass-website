---
title: "massprocesser — 峰检测与样品对齐"
linktitle: "massprocesser"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 5
toc: true
commentable: false
editable: false
translationKey: "r-package-massprocesser"
---

**文档核对版本: 1.0.11** · 2026-09-23

输入转换后的 mzML/mzXML，使用独立处理目录，通常按 QC、Subject 等样品类型建立子目录。正负离子模式分别处理。`process_data()` 完成原始数据处理并在 `Result` 中写入结果。

ppm 依据仪器表现设置，peakwidth 以秒表示并参考实际色谱；使用代表性文件调整信噪比、prefilter 和 noise。`bw`、`min_fraction` 影响跨样品分组；`fill_peaks` 控制色谱补峰，不是统计填补。内存不足时降低 threads。

检查 TIC/BPC、RT 校正、峰表和 EIC。需要后续审查时保留中间文件。下例参数仅展示调用形式，并非适用于所有仪器的方法。运行后检查输出文件，不要把函数返回值直接当作最终数据集。

## 功能范围

原始数据处理、EIC 提取、色谱可视化、校正 RT 可视化及靶向表格校验。

## 使用示例

```r
# Requires your converted files under analysis/MS1/.
# massprocesser::process_data(
#   path = "analysis/MS1", polarity = "positive",
#   ppm = 15, peakwidth = c(5, 30), snthresh = 10,
#   threads = 2, min_fraction = 0.5, fill_peaks = FALSE,
#   output_tic = TRUE, output_bpc = TRUE
# )
help("process_data", package = "massprocesser")
```

## 函数查询

下面列出已核对源码中导出的 API，包括兼容接口与辅助函数。具体参数以安装版本的 R 帮助为准；例如运行 `help("函数名", package = "massprocesser")`。

<details>
<summary>展开导出函数列表</summary>

`check_targeted_table`, `extract_eic`, `get_massprocesser_version`, `massprocesser_conflicts`, `massprocesser_logo`, `massprocesser_packages`, `plot_adjusted_rt`, `plot_chromatogram`, `process_data`

</details>

[包源码与参考文档](https://github.com/tidymass/massprocesser) · [完整工作流](../workflow/)
