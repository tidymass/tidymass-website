---
title: "tidymass — Install and manage the ecosystem"
linktitle: "tidymass"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 2
toc: true
commentable: false
editable: false
translationKey: "r-package-tidymass"
---

**Version checked for this guide: 2.0.10** · 2026-09-23

`tidymass` installs and attaches a coordinated set of packages. It does not replace their individual functions. Start here to inspect the package set, detect namespace conflicts and record versions. Load extra packages such as massdatabase and massconverter explicitly when needed.

Use a fresh R session for installation or updates. Save the old project's package versions before upgrading, restart R afterwards and rerun a representative analysis. A successful update check is not a guarantee that every remote repository was reachable.

## Functional scope

Package discovery; conflict reporting; version checks; coordinated updates.

## Example

```r
library(tidymass)
tidymass::tidymass_packages()
tidymass::tidymass_conflicts()
packageVersion("tidymass")
sessionInfo()
# Run deliberately when checking/updating the environment:
# tidymass::check_tidymass_version(packages = "all")
# tidymass::update_tidymass(packages = "all", from = "github")
```

## Find a function

The checked source exports the following APIs, including compatibility interfaces and utilities. Consult the installed version with `help("function_name", package = "tidymass")` for argument details.

<details>
<summary>Show exported functions</summary>

`check_tidymass_version`, `tidymass_conflicts`, `tidymass_logo`, `tidymass_packages`, `update_tidymass`

</details>

[Package source and reference documentation](https://github.com/tidymass/tidymass) · [Complete workflow](../workflow/)
