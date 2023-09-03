---
date: "2018-09-09T00:00:00Z"
icon: book-reader
icon_pack: fas
linktitle: Chapter 7 Metabolite annotation
summary: Metabolite annotation
title: Metabolite annotation
commentable: true
type: book
weight: 7
---

## Introduction

In tidyMass, `metid` package is  used for metabolite identification based
on in-house database and public database based on accurate mass (m/z),
retention time (RT) and/or MS2 spectra.

![](/docs/chapter7/figures/Figure_1.png)

## Installation

You can install `metid` from [GitLab](https://gitlab.com/tidymass/metid).

```
if(!require(remotes)){
install.packages("remotes")
}
remotes::install_gitlab("jaspershen/metid")
```

or [GitHub](https://github.com/tidymass/metid)

```
remotes::install_github("tidymass/metid")
```

or tidymass.org

```
source("https://www.tidymass.org/tidymass-packages/install_tidymass.txt")
install_tidymass(from = "tidymass.org", which_package = "metid")
```

## Citation

If you use `metid` in your publications, please cite this paper:

1. Xiaotao Shen, Si Wu, Liang Liang, Songjie Chen, Kevin Contrepois, Zheng-Jiang Zhu\*, Michael Snyder\* (Corresponding Author). metID: A R package for automatable compound annotation for LC−MS-based data. Bioinformatics, btab583, [https://doi.org/10.1093/bioinformatics/btab583](https://doi.org/10.1093/bioinformatics/btab583)

2. Shen, X., Yan, H., Wang, C. et al. TidyMass an object-oriented reproducible analysis framework for LC–MS data. Nat Commun 13, 4365 (2022). [Weblink](https://www.nature.com/articles/s41467-022-32155-w)

Thanks very much!