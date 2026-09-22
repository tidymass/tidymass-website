---
title: "MetNormalizer — Use the standalone normalization workflow"
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

**Version checked for this guide: 1.3.02** · 2026-09-23

MetNormalizer is the standalone QC-based normalization package linked from the TidyMass package catalogue. Its file-based `metNor()` interface is different from `masscleaner::normalize_data()` and should not be substituted into a `mass_dataset` pipeline without preparing its input format.

Prepare the MS1 table and sample-information CSV according to the package example, including the required QC and acquisition metadata. Work in a dedicated directory, review filtering fractions and optimization settings, then inspect the saved normalized data and diagnostics. Preserve the input and method settings.

`multiple = 1` uses injection-order-based SVR in the documented interface; larger values use correlated peaks. Choose according to acquisition and study design, not simply because a larger value looks more powerful. For a new object-based TidyMass workflow, masscleaner usually provides the direct integration point.

## Functional scope

Input checks and a standalone QC/SVR normalization workflow.

## Example

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

## Find a function

The checked source exports the following APIs, including compatibility interfaces and utilities. Consult the installed version with `help("function_name", package = "MetNormalizer")` for argument details.

<details>
<summary>Show exported functions</summary>

`MetNormalizer_logo`, `checkData`, `metNor`

</details>

[Package source and reference documentation](https://github.com/jaspershen/MetNormalizer) · [Complete workflow](../workflow/)
