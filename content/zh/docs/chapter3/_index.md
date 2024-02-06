---
date: "2018-09-09T00:00:00Z"
icon: book-reader
icon_pack: fas
linktitle: Chapter 3 Data format converter
summary: Data format converter
title: Data format converter
commentable: true
type: book
weight: 3
---

## About 

`massconverter` can be used to convert mass spectrometry data to other format data based on msconvert docker image.

> Now this is only supports mac or Linux OS.

## Installation

You can install `massconverter` from [GitLab](https://gitlab.com/tidymass/massconverter).

```
if(!require(remotes)){
install.packages("remotes")
}
remotes::install_gitlab("jaspershen/massconverter")
```

or [GitHub](https://github.com/tidymass/massconverter)

```
remotes::install_github("tidymass/massconverter")
```

or tidymass.org

```
source("https://www.tidymass.org/tidymass-packages/install_tidymass.txt")
install_tidymass(from = "tidymass.org", which_package = "massconverter")
```

## Citation

If you use `massconverter` in your publications, please cite this paper:

1. Shen, X., Yan, H., Wang, C. et al. TidyMass an object-oriented reproducible analysis framework for LC–MS data. Nat Commun 13, 4365 (2022). [Weblink](https://www.nature.com/articles/s41467-022-32155-w)

Thanks very much!

