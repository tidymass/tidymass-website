---
date: "2018-09-09T00:00:00Z"
icon: book-reader
icon_pack: fas
linktitle: Chapter 2 massDataset
summary: massDataset package to organize microbiome data.
title: massDataset
commentable: true
type: book
weight: 1
---

## About

massdataset provide the mass_dataset class which is specifically developed and designed to organize the rectangular metabolomics data sets into a standard structure. massdataset package also provide a lot of base processing functions to process and operate the mass_dataset class. In additional, the mass_dataset class can be processed by all the packages from tidymass.

## Installation

You can install massdataset from [GitLab](https://gitlab.com/jaspershen/massdataset).

```
if(!require(remotes)){
install.packages("remotes")
}
remotes::install_gitlab("jaspershen/massdataset")
```

or [GitHub](https://github.com/tidymass/massdataset)

```
remotes::install_github("tidymass/massdataset")
```

## Citation

If you use massdataset in your publications, please cite this paper:

Shen, X., Yan, H., Wang, C. et al. TidyMass an object-oriented reproducible analysis framework for LC–MS data. Nat Commun 13, 4365 (2022).

[Link](https://www.nature.com/articles/s41467-022-32155-w)