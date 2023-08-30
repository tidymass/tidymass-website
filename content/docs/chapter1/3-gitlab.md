---
date: "2019-05-05T00:00:00+01:00"
title: "GitLab"
linktitle: GitLab
author: admin
type: book
weight: 3
commentable: true
---



## Update R version

`tidymicrobiome` require R version > 4.1.

You can check your R version in your console:


```r
version
##                _                           
## platform       x86_64-apple-darwin20       
## arch           x86_64                      
## os             darwin20                    
## system         x86_64, darwin20            
## status                                     
## major          4                           
## minor          3.0                         
## year           2023                        
## month          04                          
## day            21                          
## svn rev        84292                       
## language       R                           
## version.string R version 4.3.0 (2023-04-21)
## nickname       Already Tomorrow
```

If your R version is < 4.1, please download and install the [latest version of R](https://cran.r-project.org/mirrors.html), and then restart your R.

## Install `tidymicrobiome`

Copy and paste the below code in your console.


```r
if(!require(remotes)){
  install.packages("remotes")
}
remotes::install_gitlab("tidymicrobiome/tidymicrobiome", dependencies = TRUE)
```

## Some issues

1. During the installation, it will ask if you want to update some packages for few times, just enter `Enter` or `Reurn` key to skip it.

