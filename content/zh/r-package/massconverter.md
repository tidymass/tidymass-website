---
title: "massconverter — 转换厂商原始文件"
linktitle: "massconverter"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 4
toc: true
commentable: false
editable: false
translationKey: "r-package-massconverter"
---

**文档核对版本: 1.0.3** · 2026-09-23

massconverter 用于配置 ProteoWizard/msconvert，将厂商文件转换为开放格式；这一步不做色谱峰检测。是否能转换取决于厂商读取器、操作系统、容器环境和目录访问权限。

明确选择 mzML/mzXML、质心化方法、离子模式和 MS level。后续鉴定需要 MS2 时保留相关扫描。保留原始采集文件，先转换一个文件并检查扫描数、RT 范围、模式和 TIC，再批量处理。vendor 质心化需要读取器支持，容器不代表兼容所有厂商格式。

下例构建参数对象；配置 Docker/ProteoWizard 并替换路径后，才能执行注释掉的转换调用。

## 功能范围

转换参数构建与校验、命令生成、容器准备和批量文件转换。

## 使用示例

```r
parameter <- massconverter::create_msconvert_parameter(
  output_format = "mzML",
  peak_picking_algorithm = "vendor",
  subset_polarity = "positive",
  subset_mslevels = c(1, NA)
)
parameter
# massconverter::convert_raw_data(
#   input_path = "vendor_raw", output_path = "converted",
#   msconvert_parameter = parameter
# )
```

## 函数查询

下面列出已核对源码中导出的 API，包括兼容接口与辅助函数。具体参数以安装版本的 R 帮助为准；例如运行 `help("函数名", package = "massconverter")`。

<details>
<summary>展开导出函数列表</summary>

`check_msconvert_parameter`, `convert_raw_data`, `create_msconvert_parameter`, `docker_pull_pwiz`, `from_msconvert_parameter_to_code`, `get_massconverter_version`, `get_run_code`, `massconverter_logo`, `massconverter_packages`

</details>

[包源码与参考文档](https://github.com/tidymass/massconverter) · [完整工作流](../workflow/)
