---
date: "2019-05-05T00:00:00+01:00"
title: "Convert data using proteowizard"
linktitle: "1 proteowizard"
author: admin
type: book
weight: 1
commentable: true
---





``` r
getwd()
#> [1] "/Users/xiaotaoshen/project/tidymass/tidymass-website/content/docs/chapter3"
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


``` r
sessionInfo()
#> R version 4.4.1 (2024-06-14)
#> Platform: aarch64-apple-darwin20
#> Running under: macOS 15.0
#> 
#> Matrix products: default
#> BLAS:   /Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/lib/libRblas.0.dylib 
#> LAPACK: /Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/lib/libRlapack.dylib;  LAPACK version 3.12.0
#> 
#> locale:
#> [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
#> 
#> time zone: Asia/Singapore
#> tzcode source: internal
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> loaded via a namespace (and not attached):
#>  [1] digest_0.6.37     R6_2.5.1          codetools_0.2-20  bookdown_0.40    
#>  [5] fastmap_1.2.0     xfun_0.47         blogdown_1.19     cachem_1.1.0     
#>  [9] knitr_1.48        htmltools_0.5.8.1 rmarkdown_2.28    lifecycle_1.0.4  
#> [13] cli_3.6.3         sass_0.4.9        jquerylib_0.1.4   compiler_4.4.1   
#> [17] rprojroot_2.0.4   here_1.0.1        rstudioapi_0.16.0 tools_4.4.1      
#> [21] evaluate_0.24.0   bslib_0.8.0       yaml_2.3.10       jsonlite_1.8.8   
#> [25] rlang_1.1.4
```
