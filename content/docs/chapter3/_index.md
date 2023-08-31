---
date: "2018-09-09T00:00:00Z"
icon: book-reader
icon_pack: fas
linktitle: Chapter 3 Data format converter
summary: Data format converter
title: Data format converter
commentable: true
type: book
weight: 1
---

## About 

massconverter can be used to convert mass spectrometry data to other format data based on msconvert docker image.

> Now this is only supports mac or Linux OS.

More information can be found [here](https://hub.docker.com/r/chambm/pwiz-skyline-i-agree-to-the-vendor-licenses).

## Installation

You can install massconverter from [GitLab](https://gitlab.com/jaspershen/massconverter)

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

