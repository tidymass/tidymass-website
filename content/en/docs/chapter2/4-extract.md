---
date: "2019-05-05T00:00:00+01:00"
title: "Extract data from mass_dataset"
linktitle: "4 Extract data"
author: admin
type: book
weight: 4
commentable: true
---





## Use `extract_xxx` functions

We first created a `mass_dataset` class object.


``` r
library(massdataset)
library(tidyverse)

data("expression_data")
data("sample_info")
data("sample_info_note")
data("variable_info")
data("variable_info_note")

object =
  create_mass_dataset(
    expression_data = expression_data,
    sample_info = sample_info,
    variable_info = variable_info,
    sample_info_note = sample_info_note,
    variable_info_note = variable_info_note
  )
  
object
#> -------------------- 
#> massdataset version: 1.0.34 
#> -------------------- 
#> 1.expression_data:[ 1000 x 8 data.frame]
#> 2.sample_info:[ 8 x 4 data.frame]
#> 8 samples:Blank_3 Blank_4 QC_1 ... PS4P3 PS4P4
#> 3.variable_info:[ 1000 x 3 data.frame]
#> 1000 variables:M136T55_2_POS M79T35_POS M307T548_POS ... M232T937_POS M301T277_POS
#> 4.sample_info_note:[ 4 x 2 data.frame]
#> 5.variable_info_note:[ 3 x 2 data.frame]
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 1 processings in total
#> create_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset create_mass_dataset() 2024-09-25 19:11:32
```

In `massdataset` package, there are a series of functions named as `extract_xxx()`, users can use them to extract data from `mass_dataset` calss object.


``` r
##sample_info
extract_sample_info(object)
#>   sample_id injection.order   class   group
#> 1   Blank_3               1   Blank   Blank
#> 2   Blank_4               2   Blank   Blank
#> 3      QC_1               3      QC      QC
#> 4      QC_2               4      QC      QC
#> 5     PS4P1               5 Subject Subject
#> 6     PS4P2               6 Subject Subject
#> 7     PS4P3               7 Subject Subject
#> 8     PS4P4               8 Subject Subject
##variable_info
extract_variable_info(object) %>% head()
#>     variable_id        mz        rt
#> 1 M136T55_2_POS 136.06140  54.97902
#> 2    M79T35_POS  79.05394  35.36550
#> 3  M307T548_POS 307.14035 547.56641
#> 4  M183T224_POS 183.06209 224.32777
#> 5   M349T47_POS 349.01584  47.00262
#> 6  M182T828_POS 181.99775 828.35712
##expression_data
extract_expression_data(object) %>% head()
#>               Blank_3 Blank_4      QC_1      QC_2     PS4P1     PS4P2   PS4P3
#> M136T55_2_POS      NA      NA 1857924.8 1037763.8 1494436.1 3496912.1 1959179
#> M79T35_POS         NA      NA 2821550.2 1304875.3 2471336.1 3333582.7 2734244
#> M307T548_POS       NA      NA  410387.6  273687.8  288590.2  137297.5      NA
#> M183T224_POS       NA      NA        NA        NA        NA 5059068.1 5147422
#> M349T47_POS        NA      NA 8730104.8 4105598.5 5141073.2 8424315.6 7896633
#> M182T828_POS  3761893 2572593        NA 3662819.1 5700534.8 4600172.4 5557015
#>                   PS4P4
#> M136T55_2_POS 1005418.8
#> M79T35_POS    3361452.3
#> M307T548_POS   271318.3
#> M183T224_POS         NA
#> M349T47_POS   6441449.0
#> M182T828_POS  4433034.2
##sample_info_note
extract_sample_info_note(object) 
#>              name         meaning
#> 1       sample_id       sample_id
#> 2 injection.order injection.order
#> 3           class           class
#> 4           group           group
##variable_info_note
extract_variable_info_note(object) 
#>          name     meaning
#> 1 variable_id variable_id
#> 2          mz          mz
#> 3          rt          rt
##ms2_data
extract_ms2_data(object)
#> list()
##process_info
extract_annotation_table(object)
#> data frame with 0 columns and 0 rows
##process_info
extract_process_info(object)
#> $create_mass_dataset
#> -------------------- 
#> pacakge_name: massdataset 
#> function_name: create_mass_dataset() 
#> time: 2024-09-25 19:11:32.302406 
#> parameters:
#> no : no
```

## Use `slot()` function


``` r
slot(object = object, name = "sample_info")
#>   sample_id injection.order   class   group
#> 1   Blank_3               1   Blank   Blank
#> 2   Blank_4               2   Blank   Blank
#> 3      QC_1               3      QC      QC
#> 4      QC_2               4      QC      QC
#> 5     PS4P1               5 Subject Subject
#> 6     PS4P2               6 Subject Subject
#> 7     PS4P3               7 Subject Subject
#> 8     PS4P4               8 Subject Subject
slot(object = object, name = "variable_info") %>% head()
#>     variable_id        mz        rt
#> 1 M136T55_2_POS 136.06140  54.97902
#> 2    M79T35_POS  79.05394  35.36550
#> 3  M307T548_POS 307.14035 547.56641
#> 4  M183T224_POS 183.06209 224.32777
#> 5   M349T47_POS 349.01584  47.00262
#> 6  M182T828_POS 181.99775 828.35712
slot(object = object, name = "expression_data") %>% head()
#>               Blank_3 Blank_4      QC_1      QC_2     PS4P1     PS4P2   PS4P3
#> M136T55_2_POS      NA      NA 1857924.8 1037763.8 1494436.1 3496912.1 1959179
#> M79T35_POS         NA      NA 2821550.2 1304875.3 2471336.1 3333582.7 2734244
#> M307T548_POS       NA      NA  410387.6  273687.8  288590.2  137297.5      NA
#> M183T224_POS       NA      NA        NA        NA        NA 5059068.1 5147422
#> M349T47_POS        NA      NA 8730104.8 4105598.5 5141073.2 8424315.6 7896633
#> M182T828_POS  3761893 2572593        NA 3662819.1 5700534.8 4600172.4 5557015
#>                   PS4P4
#> M136T55_2_POS 1005418.8
#> M79T35_POS    3361452.3
#> M307T548_POS   271318.3
#> M183T224_POS         NA
#> M349T47_POS   6441449.0
#> M182T828_POS  4433034.2
slot(object = object, name = "sample_info_note") 
#>              name         meaning
#> 1       sample_id       sample_id
#> 2 injection.order injection.order
#> 3           class           class
#> 4           group           group
slot(object = object, name = "variable_info_note") 
#>          name     meaning
#> 1 variable_id variable_id
#> 2          mz          mz
#> 3          rt          rt
slot(object = object, name = "ms2_data") 
#> list()
slot(object = object, name = "process_info") 
#> $create_mass_dataset
#> -------------------- 
#> pacakge_name: massdataset 
#> function_name: create_mass_dataset() 
#> time: 2024-09-25 19:11:32.302406 
#> parameters:
#> no : no
slot(object = object, name = "annotation_table") 
#> data frame with 0 columns and 0 rows
```

## Use `@`

`mass_data` class is a S4 object. So we can also use `@`.


``` r
object@expression_data %>% head()
#>               Blank_3 Blank_4      QC_1      QC_2     PS4P1     PS4P2   PS4P3
#> M136T55_2_POS      NA      NA 1857924.8 1037763.8 1494436.1 3496912.1 1959179
#> M79T35_POS         NA      NA 2821550.2 1304875.3 2471336.1 3333582.7 2734244
#> M307T548_POS       NA      NA  410387.6  273687.8  288590.2  137297.5      NA
#> M183T224_POS       NA      NA        NA        NA        NA 5059068.1 5147422
#> M349T47_POS        NA      NA 8730104.8 4105598.5 5141073.2 8424315.6 7896633
#> M182T828_POS  3761893 2572593        NA 3662819.1 5700534.8 4600172.4 5557015
#>                   PS4P4
#> M136T55_2_POS 1005418.8
#> M79T35_POS    3361452.3
#> M307T548_POS   271318.3
#> M183T224_POS         NA
#> M349T47_POS   6441449.0
#> M182T828_POS  4433034.2
object@sample_info
#>   sample_id injection.order   class   group
#> 1   Blank_3               1   Blank   Blank
#> 2   Blank_4               2   Blank   Blank
#> 3      QC_1               3      QC      QC
#> 4      QC_2               4      QC      QC
#> 5     PS4P1               5 Subject Subject
#> 6     PS4P2               6 Subject Subject
#> 7     PS4P3               7 Subject Subject
#> 8     PS4P4               8 Subject Subject
object@variable_info %>% head()
#>     variable_id        mz        rt
#> 1 M136T55_2_POS 136.06140  54.97902
#> 2    M79T35_POS  79.05394  35.36550
#> 3  M307T548_POS 307.14035 547.56641
#> 4  M183T224_POS 183.06209 224.32777
#> 5   M349T47_POS 349.01584  47.00262
#> 6  M182T828_POS 181.99775 828.35712
object@sample_info_note
#>              name         meaning
#> 1       sample_id       sample_id
#> 2 injection.order injection.order
#> 3           class           class
#> 4           group           group
object@variable_info_note
#>          name     meaning
#> 1 variable_id variable_id
#> 2          mz          mz
#> 3          rt          rt
object@process_info
#> $create_mass_dataset
#> -------------------- 
#> pacakge_name: massdataset 
#> function_name: create_mass_dataset() 
#> time: 2024-09-25 19:11:32.302406 
#> parameters:
#> no : no
object@ms2_data
#> list()
object@annotation_table
#> data frame with 0 columns and 0 rows
```

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
#> other attached packages:
#>  [1] lubridate_1.9.3    forcats_1.0.0      stringr_1.5.1      purrr_1.0.2       
#>  [5] readr_2.1.5        tidyr_1.3.1        tibble_3.2.1       tidyverse_2.0.0   
#>  [9] ggplot2_3.5.1      dplyr_1.1.4        magrittr_2.0.3     masstools_1.0.13  
#> [13] massdataset_1.0.34
#> 
#> loaded via a namespace (and not attached):
#>   [1] bitops_1.0-8                pbapply_1.7-2              
#>   [3] remotes_2.5.0               rlang_1.1.4                
#>   [5] clue_0.3-65                 GetoptLong_1.0.5           
#>   [7] matrixStats_1.3.0           compiler_4.4.1             
#>   [9] png_0.1-8                   vctrs_0.6.5                
#>  [11] reshape2_1.4.4              ProtGenerics_1.36.0        
#>  [13] pkgconfig_2.0.3             shape_1.4.6.1              
#>  [15] crayon_1.5.3                fastmap_1.2.0              
#>  [17] XVector_0.44.0              utf8_1.2.4                 
#>  [19] rmarkdown_2.28              tzdb_0.4.0                 
#>  [21] preprocessCore_1.66.0       UCSC.utils_1.0.0           
#>  [23] xfun_0.47                   MultiAssayExperiment_1.30.3
#>  [25] zlibbioc_1.50.0             cachem_1.1.0               
#>  [27] GenomeInfoDb_1.40.1         jsonlite_1.8.8             
#>  [29] DelayedArray_0.30.1         BiocParallel_1.38.0        
#>  [31] parallel_4.4.1              cluster_2.1.6              
#>  [33] R6_2.5.1                    bslib_0.8.0                
#>  [35] stringi_1.8.4               RColorBrewer_1.1-3         
#>  [37] limma_3.60.4                GenomicRanges_1.56.1       
#>  [39] jquerylib_0.1.4             Rcpp_1.0.13                
#>  [41] bookdown_0.40               SummarizedExperiment_1.34.0
#>  [43] iterators_1.0.14            knitr_1.48                 
#>  [45] IRanges_2.38.1              timechange_0.3.0           
#>  [47] Matrix_1.7-0                igraph_2.0.3               
#>  [49] tidyselect_1.2.1            rstudioapi_0.16.0          
#>  [51] abind_1.4-5                 yaml_2.3.10                
#>  [53] affy_1.82.0                 doParallel_1.0.17          
#>  [55] codetools_0.2-20            blogdown_1.19              
#>  [57] lattice_0.22-6              plyr_1.8.9                 
#>  [59] withr_3.0.1                 Biobase_2.64.0             
#>  [61] evaluate_0.24.0             zip_2.3.1                  
#>  [63] circlize_0.4.16             BiocManager_1.30.25        
#>  [65] affyio_1.74.0               pillar_1.9.0               
#>  [67] MatrixGenerics_1.16.0       foreach_1.5.2              
#>  [69] stats4_4.4.1                MSnbase_2.30.1             
#>  [71] MALDIquant_1.22.3           ncdf4_1.23                 
#>  [73] generics_0.1.3              RCurl_1.98-1.16            
#>  [75] rprojroot_2.0.4             hms_1.1.3                  
#>  [77] S4Vectors_0.42.1            munsell_0.5.1              
#>  [79] scales_1.3.0                glue_1.7.0                 
#>  [81] lazyeval_0.2.2              tools_4.4.1                
#>  [83] mzID_1.42.0                 QFeatures_1.14.2           
#>  [85] vsn_3.72.0                  mzR_2.38.0                 
#>  [87] openxlsx_4.2.7              XML_3.99-0.17              
#>  [89] grid_4.4.1                  impute_1.78.0              
#>  [91] MsCoreUtils_1.16.1          colorspace_2.1-1           
#>  [93] GenomeInfoDbData_1.2.12     PSMatch_1.8.0              
#>  [95] cli_3.6.3                   fansi_1.0.6                
#>  [97] S4Arrays_1.4.1              ComplexHeatmap_2.20.0      
#>  [99] AnnotationFilter_1.28.0     pcaMethods_1.96.0          
#> [101] gtable_0.3.5                sass_0.4.9                 
#> [103] digest_0.6.37               BiocGenerics_0.50.0        
#> [105] SparseArray_1.4.8           rjson_0.2.22               
#> [107] htmltools_0.5.8.1           lifecycle_1.0.4            
#> [109] httr_1.4.7                  here_1.0.1                 
#> [111] statmod_1.5.0               GlobalOptions_0.1.2        
#> [113] MASS_7.3-61
```
