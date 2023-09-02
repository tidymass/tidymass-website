---
date: "2019-05-05T00:00:00+01:00"
title: "Update"
linktitle: Update
author: admin
type: book
weight: 5
commentable: true
---



## Check version

You can use the `tidymass` to check the version of all packages and update them.

If you want to check if there are updates for `tidymass` and packages in it. Just check it like this.


```r
tidymass::check_tidymass_version()
## Registered S3 method overwritten by 'Hmisc':
##   method       from      
##   vcov.default fit.models
## ##tidymass/tidymass is up-to-date devel version
## ##tidymass/massconverter is up-to-date devel version
## ##tidymass/massdataset is up-to-date devel version
## ##tidymass/massprocesser is up-to-date devel version
## ##tidymass/masscleaner is up-to-date devel version
## ##tidymass/massstat is up-to-date devel version
## ##tidymass/metpath is up-to-date devel version
## ##tidymass/masstools is up-to-date devel version
## Use update_tidymass() to update the following pacakges.
##   package installed_version latest_version up_to_date
## 1  massqc             1.0.6          1.0.5      FALSE
## 2   metid            1.2.29         1.2.28      FALSE
```

This will list all the packages version and if there are some new versions can be updated.

## Update `tidymass`

The update_tidymass() function can be used to update tidymass and packages within it.


```r
tidymass::update_tidymass(from = "gitlab")
```

You can change the `from` argument if `gitlab` doesn't work.

1. "github"

2. "gitee"

3. "tidymass.org"

## Session information


```r
sessionInfo()
## R version 4.3.0 (2023-04-21)
## Platform: x86_64-apple-darwin20 (64-bit)
## Running under: macOS Ventura 13.5.1
## 
## Matrix products: default
## BLAS:   /Library/Frameworks/R.framework/Versions/4.3-x86_64/Resources/lib/libRblas.0.dylib 
## LAPACK: /Library/Frameworks/R.framework/Versions/4.3-x86_64/Resources/lib/libRlapack.dylib;  LAPACK version 3.11.0
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## time zone: America/Los_Angeles
## tzcode source: internal
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## loaded via a namespace (and not attached):
##  [1] digest_0.6.31   R6_2.5.1        bookdown_0.34   fastmap_1.1.1  
##  [5] xfun_0.39       blogdown_1.18.1 cachem_1.0.8    knitr_1.43     
##  [9] htmltools_0.5.5 rmarkdown_2.22  cli_3.6.1       sass_0.4.6     
## [13] jquerylib_0.1.4 compiler_4.3.0  rstudioapi_0.14 tools_4.3.0    
## [17] evaluate_0.21   bslib_0.5.0     yaml_2.3.7      jsonlite_1.8.5 
## [21] rlang_1.1.1
```
