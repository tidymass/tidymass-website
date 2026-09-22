---
title: "MetNormalizer — 使用独立归一化流程"
linktitle: "MetNormalizer"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 13
toc: true
commentable: false
editable: false
translationKey: "r-package-metnormalizer"
---

**文档核对版本: 1.3.02** · 2026-09-23

MetNormalizer 是官网包目录列出的独立 QC 归一化工具，其文件式 `metNor()` 接口不同于 `masscleaner::normalize_data()`。必须准备对应格式，不能直接把它替换进 `mass_dataset` 流程。

按包示例准备 MS1 表和样品信息 CSV，包含所需 QC 与采集信息。在独立目录中检查过滤比例和优化参数，运行后查看归一化数据与诊断结果，保留原始输入和设置。

当前接口中 `multiple = 1` 使用基于进样顺序的 SVR，更大的值使用相关峰，应根据采集与研究设计选择。新的对象式 TidyMass 流程通常可以直接采用 masscleaner 的归一化入口。

## 功能范围

输入校验与独立的 QC/SVR 归一化流程。

## 使用示例

```r
# Requires MetNormalizer-format CSV files in normalization_input/.
# MetNormalizer::metNor(
#   ms1.data.name = "data.csv",
#   sample.info.name = "sample.info.csv",
#   path = "normalization_input", optimization = TRUE,
#   multiple = 1, threads = 2
# )
help("metNor", package = "MetNormalizer")
```

## 函数查询

下面列出已核对源码中导出的 API，包括兼容接口与辅助函数。具体参数以安装版本的 R 帮助为准；例如运行 `help("函数名", package = "MetNormalizer")`。

<details>
<summary>展开导出函数列表</summary>

`MetNormalizer_logo`, `checkData`, `metNor`

</details>

[包源码与参考文档](https://github.com/jaspershen/MetNormalizer) · [完整工作流](../workflow/)
