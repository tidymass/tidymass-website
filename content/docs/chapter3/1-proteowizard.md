---
date: "2019-05-05T00:00:00+01:00"
title: "Convert data using proteowizard"
linktitle: "1 proteowizard"
author: admin
type: book
weight: 1
commentable: true
---





```r
getwd()
#> [1] "/Users/xiaotaoshen/tidymass/tidymass-website/content/docs/chapter3"
```

## Install `Proteowizard`

`Proteowizard` only supports Windows OS. So if you don't use Windows OS, consider [massconverter](../2-data_convert).

Download [Proteowizard](https://proteowizard.sourceforge.io/) and install it.

## Data preparation

Please place the raw data in one folder according to MS1 and MS2. Then you can convert them using `Proteowizard` package.

## Convert MS1 data to `mzXML` format data

Just convert data into `mzXML` format data according to the parameters below:

![](/docs/chapter3/figures/fig1.png)
## Convert MS2 data to `mzXML` or `mgf` format data

Just convert data into `mzXML` or `mgf` format data according to the parameters below:

![](/docs/chapter3/figures/fig2.png)

## Session information


```r
sessionInfo()
#> R version 4.3.0 (2023-04-21)
#> Platform: x86_64-apple-darwin20 (64-bit)
#> Running under: macOS Ventura 13.5.1
#> 
#> Matrix products: default
#> BLAS:   /Library/Frameworks/R.framework/Versions/4.3-x86_64/Resources/lib/libRblas.0.dylib 
#> LAPACK: /Library/Frameworks/R.framework/Versions/4.3-x86_64/Resources/lib/libRlapack.dylib;  LAPACK version 3.11.0
#> 
#> locale:
#> [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
#> 
#> time zone: America/Los_Angeles
#> tzcode source: internal
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> loaded via a namespace (and not attached):
#>  [1] digest_0.6.31    R6_2.5.1         codetools_0.2-19 bookdown_0.34   
#>  [5] fastmap_1.1.1    xfun_0.39        blogdown_1.18.1  cachem_1.0.8    
#>  [9] knitr_1.43       htmltools_0.5.5  rmarkdown_2.22   cli_3.6.1       
#> [13] sass_0.4.6       jquerylib_0.1.4  compiler_4.3.0   rprojroot_2.0.3 
#> [17] here_1.0.1       rstudioapi_0.14  tools_4.3.0      evaluate_0.21   
#> [21] bslib_0.5.0      yaml_2.3.7       jsonlite_1.8.5   rlang_1.1.1
```
