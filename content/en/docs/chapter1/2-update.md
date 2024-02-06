---
date: "2019-05-05T00:00:00+01:00"
title: "Update tidymass"
linktitle: "2 Update tidymass"
author: admin
type: book
weight: 2
commentable: true
---



## Check `tidymass` version

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
## ##tidymass/metid is up-to-date devel version
## ##tidymass/massstat is up-to-date devel version
## ##tidymass/metpath is up-to-date devel version
## ##tidymass/masstools is up-to-date devel version
## Use update_tidymass() to update the following pacakges.
##   package installed_version latest_version up_to_date
## 1  massqc             1.0.6          1.0.5      FALSE
```

This will list all the packages version and if there are some new versions can be updated.

## Update `tidymass`

The `update_tidymass()` function can be used to update `tidymass` and packages within it.


```r
tidymass::update_tidymass(from = "gitlab")
```

You can change the `from` argument if `from = "gitlab"` doesn't work.

1. "github"

2. "gitee"

3. "tidymass.org"

If all the options of `from` don't work, you can try to set `fastgit` as `TRUE`.


```r
tidymass::update_tidymass(from = "gitlab",
                          fastgit = TRUE)
```

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
##   [1] splines_4.3.0               bitops_1.0-7               
##   [3] cellranger_1.1.0            tibble_3.2.1               
##   [5] polyclip_1.10-4             preprocessCore_1.62.1      
##   [7] XML_3.99-0.14               rpart_4.1.19               
##   [9] fastDummies_1.6.3           lifecycle_1.0.3            
##  [11] doParallel_1.0.17           globals_0.16.2             
##  [13] lattice_0.21-8              MASS_7.3-58.4              
##  [15] backports_1.4.1             magrittr_2.0.3             
##  [17] plotly_4.10.2               openxlsx_4.2.5.2           
##  [19] limma_3.56.2                Hmisc_5.1-0                
##  [21] sass_0.4.6                  rmarkdown_2.22             
##  [23] jquerylib_0.1.4             yaml_2.3.7                 
##  [25] remotes_2.4.2               doRNG_1.8.6                
##  [27] zip_2.3.0                   MsCoreUtils_1.12.0         
##  [29] pbapply_1.7-0               metid_1.2.30               
##  [31] RColorBrewer_1.1-3          zlibbioc_1.46.0            
##  [33] GenomicRanges_1.52.0        purrr_1.0.1                
##  [35] ggraph_2.1.0                BiocGenerics_0.46.0        
##  [37] itertools_0.1-3             RCurl_1.98-1.12            
##  [39] nnet_7.3-18                 tweenr_2.0.2               
##  [41] massstat_1.0.5              circlize_0.4.15            
##  [43] GenomeInfoDbData_1.2.10     IRanges_2.34.0             
##  [45] S4Vectors_0.38.1            ggrepel_0.9.3              
##  [47] listenv_0.9.0               ellipse_0.4.5              
##  [49] masstools_1.0.10            RSpectra_0.16-1            
##  [51] missForest_1.5              parallelly_1.36.0          
##  [53] MSnbase_2.26.0              ncdf4_1.21                 
##  [55] codetools_0.2-19            DelayedArray_0.26.3        
##  [57] ggforce_0.4.1               tidyselect_1.2.0           
##  [59] shape_1.4.6                 farver_2.1.1               
##  [61] viridis_0.6.3               massdataset_1.0.25         
##  [63] matrixStats_1.0.0           stats4_4.3.0               
##  [65] base64enc_0.1-3             massqc_1.0.6               
##  [67] jsonlite_1.8.5              GetoptLong_1.0.5           
##  [69] multtest_2.56.0             e1071_1.7-13               
##  [71] tidygraph_1.2.3             Formula_1.2-5              
##  [73] survival_3.5-5              iterators_1.0.14           
##  [75] foreach_1.5.2               progress_1.2.2             
##  [77] tools_4.3.0                 Rcpp_1.0.10                
##  [79] glue_1.6.2                  rARPACK_0.11-0             
##  [81] gridExtra_2.3               xfun_0.39                  
##  [83] mixOmics_6.24.0             MatrixGenerics_1.12.2      
##  [85] ggfortify_0.4.16            GenomeInfoDb_1.36.0        
##  [87] dplyr_1.1.2                 withr_2.5.0                
##  [89] BiocManager_1.30.21         fastmap_1.1.1              
##  [91] fansi_1.0.4                 blogdown_1.18.1            
##  [93] digest_0.6.31               R6_2.5.1                   
##  [95] colorspace_2.1-0            utf8_1.2.3                 
##  [97] tidyr_1.3.0                 generics_0.1.3             
##  [99] data.table_1.14.8           corpcor_1.6.10             
## [101] robustbase_0.95-1           class_7.3-21               
## [103] graphlayouts_1.0.0          prettyunits_1.1.1          
## [105] httr_1.4.6                  htmlwidgets_1.6.2          
## [107] S4Arrays_1.0.4              pkgconfig_2.0.3            
## [109] gtable_0.3.3                robust_0.7-1               
## [111] tidymass_1.0.8              ComplexHeatmap_2.16.0      
## [113] impute_1.74.1               MassSpecWavelet_1.66.0     
## [115] XVector_0.40.0              furrr_0.3.1                
## [117] pcaPP_2.0-3                 htmltools_0.5.5            
## [119] bookdown_0.34               MALDIquant_1.22.1          
## [121] ProtGenerics_1.32.0         clue_0.3-64                
## [123] scales_1.2.1                Biobase_2.60.0             
## [125] png_0.1-8                   knitr_1.43                 
## [127] rstudioapi_0.14             tzdb_0.4.0                 
## [129] reshape2_1.4.4              rjson_0.2.21               
## [131] checkmate_2.2.0             ggcorrplot_0.1.4           
## [133] proxy_0.4-27                cachem_1.0.8               
## [135] GlobalOptions_0.1.2         stringr_1.5.0              
## [137] parallel_4.3.0              foreign_0.8-84             
## [139] mzID_1.38.0                 vsn_3.68.0                 
## [141] pillar_1.9.0                grid_4.3.0                 
## [143] vctrs_0.6.2                 MsFeatures_1.8.0           
## [145] RANN_2.6.1                  pcaMethods_1.92.0          
## [147] randomForest_4.7-1.1        cluster_2.1.4              
## [149] htmlTable_2.4.1             evaluate_0.21              
## [151] readr_2.1.4                 mvtnorm_1.2-2              
## [153] cli_3.6.1                   compiler_4.3.0             
## [155] rlang_1.1.1                 crayon_1.5.2               
## [157] rngtools_1.5.2              Rdisop_1.60.0              
## [159] rrcov_1.7-3                 affy_1.78.0                
## [161] plyr_1.8.8                  masscleaner_1.0.11         
## [163] stringi_1.7.12              viridisLite_0.4.2          
## [165] BiocParallel_1.34.2         Biostrings_2.68.1          
## [167] munsell_0.5.0               lazyeval_0.2.2             
## [169] fit.models_0.64             xcms_3.22.0                
## [171] massprocesser_1.0.10        Matrix_1.5-4               
## [173] hms_1.1.3                   patchwork_1.1.2            
## [175] future_1.32.0               ggplot2_3.4.2              
## [177] KEGGREST_1.40.0             SummarizedExperiment_1.30.2
## [179] mzR_2.34.0                  igraph_1.4.3               
## [181] affyio_1.70.0               bslib_0.5.0                
## [183] DEoptimR_1.0-14             metpath_1.0.8              
## [185] readxl_1.4.2
```
