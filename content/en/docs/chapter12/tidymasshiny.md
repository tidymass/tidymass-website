---
date: "2025-05-06T00:00:00+01:00"
title: "TidyMass Shiny Application"
linktitle: TidyMass Shiny Application
author: admin
type: book
weight: 1
commentable: true
---



If you haven't installed `TidyMass` yet, please install it according to [the installation instructions](https://www.tidymass.org/docs/chapter1/1-installation/).

Install the necessary packages:


``` r
if (!require('remotes')) install.packages('remotes');
if (!require('tidyverse')) install.packages('tidyverse');
if (!require('writexl')) install.packages("writexl");
if (!require('hexbin')) install.packages('hexbin')
if (!require('ComplexUpset'))install.packages('ComplexUpset');
if (!require('shinyalert'))install.packages('shinyalert');
if (!require('shinyFiles')) remotes::install_github('thomasp85/shinyFiles');
if (!require('shinyWidgets')) remotes::install_github("dreamRs/shinyWidgets");
if (!require('shiny')) install.packages('shiny');
if (!require('bsicons')) install.packages('bsicons');
if (!require('bslib')) install.packages('bslib');
if (!require('plotly')) install.packages('plotly');
if (!require('colourpicker')) install.packages('colourpicker');
if (!require('massdbbuildin')) remotes::install_github('tidymass/massdbbuildin')
```

Then install Tidymass shinyapp with the code:


``` r
remotes::install_github('tidymass/tidymass_shiny')
```

To start the Tidymass shinyapp:


``` r
library(tidyverse)
library(tidymass)
library(tidymassshiny)
run_tidymass_shiny()
```

The completerd tutorials of TidyMassShiny can be found here: [https://www.tidymass.org/tidymassshiny-tutorial/](https://www.tidymass.org/tidymassshiny-tutorial/)

## Session information


``` r
sessionInfo()
#> R version 4.4.1 (2024-06-14)
#> Platform: aarch64-apple-darwin20
#> Running under: macOS 15.4.1
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
#>  [1] digest_0.6.37     R6_2.5.1          bookdown_0.41     fastmap_1.2.0    
#>  [5] xfun_0.49         blogdown_1.21     cachem_1.1.0      knitr_1.49       
#>  [9] htmltools_0.5.8.1 rmarkdown_2.29    lifecycle_1.0.4   cli_3.6.3        
#> [13] sass_0.4.9        jquerylib_0.1.4   compiler_4.4.1    rprojroot_2.0.4  
#> [17] here_1.0.1        rstudioapi_0.17.1 tools_4.4.1       evaluate_1.0.1   
#> [21] bslib_0.8.0       yaml_2.3.10       jsonlite_1.8.9    rlang_1.1.4
```
