---
title: "Installation and versions"
linktitle: "Installation and versions"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 1
toc: true
commentable: false
editable: false
translationKey: "r-package-installation"
---

## Prepare R

This guide checks tidymass 2.0.10 and the current source of its companion packages. Some packages declare R 4.1 as a minimum, but current masstools requires R ≥ 4.5. Use R 4.5 or a later compatible release satisfying the full dependency set, with a writable user library and your preferred IDE.

Source compilation on Windows needs a toolchain matching R; macOS may need command-line development tools and package-specific system libraries. Diagnose the first substantive installation error before adding dependencies. Docker/ProteoWizard is an additional requirement for relevant raw-format conversion, not for reading an existing peak table.

## Install

The commands use official GitHub sources. Dependency metadata can also reference GitLab and Bioconductor, so those sources must be reachable. Installation accesses the network and may compile packages.

```r
if (!requireNamespace("remotes", quietly = TRUE)) install.packages("remotes")
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
remotes::install_github("tidymass/tidymass")
# Additional packages when your analysis needs them:
remotes::install_github("tidymass/massdatabase")
remotes::install_github("tidymass/massconverter")
# Standalone legacy normalization interface:
# remotes::install_github("jaspershen/MetNormalizer")
library(tidymass)
sessionInfo()
```

## Record versions and diagnose problems

Restart R, load tidymass, and inspect `packageVersion()`, `.libPaths()` and `sessionInfo()`. The umbrella version is not the version of every companion package. Use `package::function()` to resolve overlapping function names.

Run `tidymass::check_tidymass_version(packages = "all")` to inspect updates and `update_tidymass()` only when you intend to upgrade. Mirrors can differ and network failures can leave version information incomplete. Preserve a lockfile/environment record and analysis code before upgrading an active or published project, then validate the new environment.

## Begin an analysis

Learn the data structure in [massdataset](../massdataset/) or follow the [complete workflow](../workflow/) for raw files. Each package chapter gives its scope, an example and its exported API. Run data-dependent examples only after preparing the specified inputs. Example parameters are not a validated universal method.
