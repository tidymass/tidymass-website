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

The `tidymass` package allows you to check the version of all packages and update them. To check for updates specifically for `tidymass` and its associated packages, you can use the following code.


``` r
tidymass::check_tidymass_version()
## Warning in fun(libname, pkgname): mzR has been built against a different Rcpp version (1.0.12)
## than is installed on your system (1.0.13). This might lead to errors
## when loading mzR. If you encounter such issues, please send a report,
## including the output of sessionInfo() to the Bioc support forum at 
## https://support.bioconductor.org/. For details see also
## https://github.com/sneumann/mzR/wiki/mzR-Rcpp-compiler-linker-issue.
## Registered S3 method overwritten by 'Hmisc':
##   method       from      
##   vcov.default fit.models
## Warning: replacing previous import 'massdataset::check_mass_dataset' by
## 'metid::check_mass_dataset' when loading 'tidymass'
## Warning: replacing previous import 'masstools::remove_noise' by
## 'metid::remove_noise' when loading 'tidymass'
## ##tidymass/tidymass is up-to-date devel version
## ##tidymass/massconverter is up-to-date devel version
## ##tidymass/massdataset is up-to-date devel version
## ##tidymass/massprocesser is up-to-date devel version
## ##tidymass/masscleaner is up-to-date devel version
## ##tidymass/massqc is up-to-date devel version
## ##tidymass/metid is up-to-date devel version
## ##tidymass/massstat is up-to-date devel version
## ##tidymass/metpath is up-to-date devel version
## ##tidymass/masstools is up-to-date devel version
## No package to update.
```

This will list all the packages version and if there are some new versions can be updated.

## Update `tidymass`

The `update_tidymass()` function can be used to update `tidymass` and packages within it.


``` r
tidymass::update_tidymass(from = "gitlab")
```

You can change the `from` argument if `from = "gitlab"` doesn't work.

1. "github"

2. "gitee"

3. "tidymass.org"

If all the options of `from` don't work, you can try to set `fastgit` as `TRUE`.


``` r
tidymass::update_tidymass(from = "gitlab",
                          fastgit = TRUE)
```

## Session information


``` r
sessionInfo()
## R version 4.4.1 (2024-06-14)
## Platform: aarch64-apple-darwin20
## Running under: macOS 15.0
## 
## Matrix products: default
## BLAS:   /Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/lib/libRblas.0.dylib 
## LAPACK: /Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/lib/libRlapack.dylib;  LAPACK version 3.12.0
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## time zone: Asia/Singapore
## tzcode source: internal
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## loaded via a namespace (and not attached):
##   [1] bitops_1.0-8                cellranger_1.1.0           
##   [3] tibble_3.2.1                polyclip_1.10-7            
##   [5] preprocessCore_1.66.0       fastDummies_1.7.4          
##   [7] XML_3.99-0.17               rpart_4.1.23               
##   [9] lifecycle_1.0.4             doParallel_1.0.17          
##  [11] globals_0.16.3              lattice_0.22-6             
##  [13] MASS_7.3-61                 MultiAssayExperiment_1.30.3
##  [15] backports_1.5.0             magrittr_2.0.3             
##  [17] plotly_4.10.4               openxlsx_4.2.7             
##  [19] limma_3.60.4                Hmisc_5.1-3                
##  [21] sass_0.4.9                  rmarkdown_2.28             
##  [23] jquerylib_0.1.4             yaml_2.3.10                
##  [25] remotes_2.5.0               doRNG_1.8.6                
##  [27] zip_2.3.1                   metid_1.2.33               
##  [29] MsCoreUtils_1.16.1          pbapply_1.7-2              
##  [31] DBI_1.2.3                   RColorBrewer_1.1-3         
##  [33] abind_1.4-5                 zlibbioc_1.50.0            
##  [35] GenomicRanges_1.56.1        purrr_1.0.2                
##  [37] ggraph_2.2.1                AnnotationFilter_1.28.0    
##  [39] BiocGenerics_0.50.0         itertools_0.1-3            
##  [41] RCurl_1.98-1.16             nnet_7.3-19                
##  [43] tweenr_2.0.3                massstat_1.0.6             
##  [45] circlize_0.4.16             GenomeInfoDbData_1.2.12    
##  [47] IRanges_2.38.1              S4Vectors_0.42.1           
##  [49] ggrepel_0.9.5               listenv_0.9.1              
##  [51] ellipse_0.5.0               masstools_1.0.13           
##  [53] RSpectra_0.16-2             missForest_1.5             
##  [55] parallelly_1.38.0           MSnbase_2.30.1             
##  [57] ncdf4_1.23                  codetools_0.2-20           
##  [59] DelayedArray_0.30.1         ggforce_0.4.2              
##  [61] tidyselect_1.2.1            Spectra_1.14.1             
##  [63] shape_1.4.6.1               farver_2.1.2               
##  [65] UCSC.utils_1.0.0            viridis_0.6.5              
##  [67] massdataset_1.0.34          matrixStats_1.3.0          
##  [69] stats4_4.4.1                base64enc_0.1-3            
##  [71] massqc_1.0.7                jsonlite_1.8.8             
##  [73] GetoptLong_1.0.5            e1071_1.7-14               
##  [75] tidygraph_1.3.1             Formula_1.2-5              
##  [77] iterators_1.0.14            foreach_1.5.2              
##  [79] tools_4.4.1                 progress_1.2.3             
##  [81] rARPACK_0.11-0              Rcpp_1.0.13                
##  [83] glue_1.7.0                  gridExtra_2.3              
##  [85] SparseArray_1.4.8           mixOmics_6.28.0            
##  [87] xfun_0.47                   MatrixGenerics_1.16.0      
##  [89] ggfortify_0.4.17            GenomeInfoDb_1.40.1        
##  [91] dplyr_1.1.4                 withr_3.0.1                
##  [93] BiocManager_1.30.25         fastmap_1.2.0              
##  [95] fansi_1.0.6                 blogdown_1.19              
##  [97] digest_0.6.37               R6_2.5.1                   
##  [99] colorspace_2.1-1            utf8_1.2.4                 
## [101] tidyr_1.3.1                 generics_0.1.3             
## [103] corpcor_1.6.10              data.table_1.16.0          
## [105] robustbase_0.99-4           class_7.3-22               
## [107] graphlayouts_1.1.1          htmlwidgets_1.6.4          
## [109] prettyunits_1.2.0           PSMatch_1.8.0              
## [111] httr_1.4.7                  S4Arrays_1.4.1             
## [113] pkgconfig_2.0.3             gtable_0.3.5               
## [115] robust_0.7-5                tidymass_1.0.9             
## [117] ComplexHeatmap_2.20.0       impute_1.78.0              
## [119] MassSpecWavelet_1.70.0      XVector_0.44.0             
## [121] furrr_0.3.1                 pcaPP_2.0-5                
## [123] htmltools_0.5.8.1           bookdown_0.40              
## [125] MALDIquant_1.22.3           ProtGenerics_1.36.0        
## [127] clue_0.3-65                 scales_1.3.0               
## [129] Biobase_2.64.0              png_0.1-8                  
## [131] knitr_1.48                  MetaboCoreUtils_1.12.0     
## [133] rstudioapi_0.16.0           tzdb_0.4.0                 
## [135] reshape2_1.4.4              rjson_0.2.22               
## [137] checkmate_2.3.2             ggcorrplot_0.1.4.1         
## [139] proxy_0.4-27                cachem_1.1.0               
## [141] GlobalOptions_0.1.2         stringr_1.5.1              
## [143] parallel_4.4.1              foreign_0.8-87             
## [145] mzID_1.42.0                 vsn_3.72.0                 
## [147] pillar_1.9.0                grid_4.4.1                 
## [149] vctrs_0.6.5                 MsFeatures_1.12.0          
## [151] pcaMethods_1.96.0           randomForest_4.7-1.1       
## [153] cluster_2.1.6               htmlTable_2.4.3            
## [155] evaluate_0.24.0             readr_2.1.5                
## [157] mvtnorm_1.3-1               cli_3.6.3                  
## [159] compiler_4.4.1              rlang_1.1.4                
## [161] crayon_1.5.3                rngtools_1.5.2             
## [163] rrcov_1.7-6                 QFeatures_1.14.2           
## [165] affy_1.82.0                 plyr_1.8.9                 
## [167] masscleaner_1.0.12          fs_1.6.4                   
## [169] stringi_1.8.4               viridisLite_0.4.2          
## [171] BiocParallel_1.38.0         Biostrings_2.72.1          
## [173] munsell_0.5.1               fit.models_0.64            
## [175] lazyeval_0.2.2              xcms_4.2.3                 
## [177] massprocesser_1.0.10        Matrix_1.7-0               
## [179] hms_1.1.3                   patchwork_1.2.0            
## [181] future_1.34.0               MsExperiment_1.6.0         
## [183] ggplot2_3.5.1               KEGGREST_1.44.1            
## [185] statmod_1.5.0               SummarizedExperiment_1.34.0
## [187] mzR_2.38.0                  memoise_2.0.1              
## [189] igraph_2.0.3                affyio_1.74.0              
## [191] bslib_0.8.0                 DEoptimR_1.1-3             
## [193] metpath_1.0.8               readxl_1.4.3
```
