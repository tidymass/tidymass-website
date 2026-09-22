---
title: "massconverter — Convert vendor files"
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

**Version checked for this guide: 1.0.3** · 2026-09-23

Use massconverter to configure a ProteoWizard/msconvert conversion workflow and convert vendor files into open formats. It is separate from chromatographic peak detection. Successful conversion depends on the vendor reader, platform, container and access to the source directory.

Choose mzML/mzXML, centroiding method, polarity and MS levels deliberately. Preserve MS2 when later annotation needs it. Keep the original acquisition files. First convert one file, then inspect scan counts, RT range, polarity and TIC before batching. Vendor centroiding is only available where the reader supports it; a container does not make every vendor format universally compatible.

The example builds a parameter object; the commented call performs file conversion after you configure Docker/ProteoWizard and replace paths.

## Functional scope

Conversion parameter creation and validation; command generation; container preparation; batch file conversion.

## Example

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

## Find a function

The checked source exports the following APIs, including compatibility interfaces and utilities. Consult the installed version with `help("function_name", package = "massconverter")` for argument details.

<details>
<summary>Show exported functions</summary>

`check_msconvert_parameter`, `convert_raw_data`, `create_msconvert_parameter`, `docker_pull_pwiz`, `from_msconvert_parameter_to_code`, `get_massconverter_version`, `get_run_code`, `massconverter_logo`, `massconverter_packages`

</details>

[Package source and reference documentation](https://github.com/tidymass/massconverter) · [Complete workflow](../workflow/)
