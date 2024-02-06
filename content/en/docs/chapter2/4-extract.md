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


```r
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
#> massdataset version: 1.0.25 
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
#> 1 massdataset create_mass_dataset() 2023-09-03 10:40:06
```

In `massdataset` package, there are a series of functions named as `extract_xxx()`, users can use them to extract data from `mass_dataset` calss object.


```r
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
#> time: 2023-09-03 10:40:06.394313 
#> parameters:
#> no : no
```

## Use `slot()` function


```r
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
#> time: 2023-09-03 10:40:06.394313 
#> parameters:
#> no : no
slot(object = object, name = "annotation_table") 
#> data frame with 0 columns and 0 rows
```

## Use `@`

`mass_data` class is a S4 object. So we can also use `@`.


```r
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
#> time: 2023-09-03 10:40:06.394313 
#> parameters:
#> no : no
object@ms2_data
#> list()
object@annotation_table
#> data frame with 0 columns and 0 rows
```

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
#> other attached packages:
#>  [1] lubridate_1.9.2    forcats_1.0.0      stringr_1.5.0      purrr_1.0.1       
#>  [5] readr_2.1.4        tidyr_1.3.0        tibble_3.2.1       tidyverse_2.0.0   
#>  [9] ggplot2_3.4.2      dplyr_1.1.2        magrittr_2.0.3     masstools_1.0.10  
#> [13] massdataset_1.0.25
#> 
#> loaded via a namespace (and not attached):
#>   [1] bitops_1.0-7                pbapply_1.7-0              
#>   [3] remotes_2.4.2               rlang_1.1.1                
#>   [5] clue_0.3-64                 GetoptLong_1.0.5           
#>   [7] matrixStats_1.0.0           compiler_4.3.0             
#>   [9] png_0.1-8                   vctrs_0.6.2                
#>  [11] ProtGenerics_1.32.0         pkgconfig_2.0.3            
#>  [13] shape_1.4.6                 crayon_1.5.2               
#>  [15] fastmap_1.1.1               XVector_0.40.0             
#>  [17] utf8_1.2.3                  rmarkdown_2.22             
#>  [19] tzdb_0.4.0                  preprocessCore_1.62.1      
#>  [21] xfun_0.39                   zlibbioc_1.46.0            
#>  [23] cachem_1.0.8                GenomeInfoDb_1.36.0        
#>  [25] jsonlite_1.8.5              DelayedArray_0.26.3        
#>  [27] BiocParallel_1.34.2         parallel_4.3.0             
#>  [29] cluster_2.1.4               R6_2.5.1                   
#>  [31] stringi_1.7.12              bslib_0.5.0                
#>  [33] RColorBrewer_1.1-3          limma_3.56.2               
#>  [35] GenomicRanges_1.52.0        jquerylib_0.1.4            
#>  [37] Rcpp_1.0.10                 bookdown_0.34              
#>  [39] SummarizedExperiment_1.30.2 iterators_1.0.14           
#>  [41] knitr_1.43                  IRanges_2.34.0             
#>  [43] timechange_0.2.0            Matrix_1.5-4               
#>  [45] tidyselect_1.2.0            rstudioapi_0.14            
#>  [47] yaml_2.3.7                  doParallel_1.0.17          
#>  [49] codetools_0.2-19            affy_1.78.0                
#>  [51] blogdown_1.18.1             lattice_0.21-8             
#>  [53] plyr_1.8.8                  withr_2.5.0                
#>  [55] Biobase_2.60.0              evaluate_0.21              
#>  [57] zip_2.3.0                   circlize_0.4.15            
#>  [59] pillar_1.9.0                affyio_1.70.0              
#>  [61] BiocManager_1.30.21         MatrixGenerics_1.12.2      
#>  [63] foreach_1.5.2               stats4_4.3.0               
#>  [65] MSnbase_2.26.0              MALDIquant_1.22.1          
#>  [67] ncdf4_1.21                  generics_0.1.3             
#>  [69] rprojroot_2.0.3             RCurl_1.98-1.12            
#>  [71] hms_1.1.3                   S4Vectors_0.38.1           
#>  [73] munsell_0.5.0               scales_1.2.1               
#>  [75] glue_1.6.2                  tools_4.3.0                
#>  [77] mzID_1.38.0                 vsn_3.68.0                 
#>  [79] mzR_2.34.0                  openxlsx_4.2.5.2           
#>  [81] XML_3.99-0.14               grid_4.3.0                 
#>  [83] impute_1.74.1               MsCoreUtils_1.12.0         
#>  [85] colorspace_2.1-0            GenomeInfoDbData_1.2.10    
#>  [87] cli_3.6.1                   fansi_1.0.4                
#>  [89] S4Arrays_1.0.4              ComplexHeatmap_2.16.0      
#>  [91] pcaMethods_1.92.0           gtable_0.3.3               
#>  [93] sass_0.4.6                  digest_0.6.31              
#>  [95] BiocGenerics_0.46.0         rjson_0.2.21               
#>  [97] htmltools_0.5.5             lifecycle_1.0.3            
#>  [99] here_1.0.1                  GlobalOptions_0.1.2        
#> [101] Rdisop_1.60.0               MASS_7.3-58.4
```
