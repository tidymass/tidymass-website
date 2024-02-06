---
date: "2019-05-05T00:00:00+01:00"
title: "Processing information in mass_data class"
linktitle: "5 Processing information"
author: admin
type: book
weight: 5
commentable: true
---





## Data preparation

In `mass_dataset` class object, it contains all the processing information in it. We can trace the analysis and parameters so we can do the reproducible analysis.


```r
library(massdataset)

data("expression_data")
data("sample_info")
data("variable_info")

object =
  create_mass_dataset(
    expression_data = expression_data,
    sample_info = sample_info,
    variable_info = variable_info
  )

library(tidyverse)

object =
  object %>%
  activate_mass_dataset(what = "expression_data") %>%
  filter(!is.na(QC_1))

object =
  object %>%
  activate_mass_dataset(what = "expression_data") %>%
  filter(!is.na(QC_2))

object =
  object %>%
  mutate_mean_intensity()

object =
  object %>%
  mutate_median_intensity() %>%
  mutate_rsd()
```

## `process_info`


```r
process_info = extract_process_info(object)
process_info
#> $create_mass_dataset
#> -------------------- 
#> pacakge_name: massdataset 
#> function_name: create_mass_dataset() 
#> time: 2023-09-03 10:46:22.299476 
#> parameters:
#> no : no 
#> 
#> $filter
#> $filter[[1]]
#> -------------------- 
#> pacakge_name: massdataset 
#> function_name: filter() 
#> time: 2023-09-03 10:46:22.712919 
#> parameters:
#> parameter : `~!is.na(QC_1)` 
#> 
#> $filter[[2]]
#> -------------------- 
#> pacakge_name: massdataset 
#> function_name: filter() 
#> time: 2023-09-03 10:46:22.716696 
#> parameters:
#> parameter : `~!is.na(QC_2)` 
#> 
#> 
#> $mutate_mean_intensity
#> -------------------- 
#> pacakge_name: massdataset 
#> function_name: mutate_mean_intensity() 
#> time: 2023-09-03 10:46:22.724256 
#> parameters:
#> according_to_samples : c("Blank_3", "Blank_4", "QC_1", "QC_2", "PS4P1", "PS4P2", "PS4P3", "PS4P4") 
#> 
#> $mutate_median_intensity
#> -------------------- 
#> pacakge_name: massdataset 
#> function_name: mutate_median_intensity() 
#> time: 2023-09-03 10:46:22.747706 
#> parameters:
#> according_to_samples : c("Blank_3", "Blank_4", "QC_1", "QC_2", "PS4P1", "PS4P2", "PS4P3", "PS4P4") 
#> 
#> $mutate_rsd
#> -------------------- 
#> pacakge_name: massdataset 
#> function_name: mutate_rsd() 
#> time: 2023-09-03 10:46:22.760049 
#> parameters:
#> according_to_samples : c("Blank_3", "Blank_4", "QC_1", "QC_2", "PS4P1", "PS4P2", "PS4P3", "PS4P4")
```

The process_info contains all the steps which are ordered by time.


```r
process_info$mutate_median_intensity
#> -------------------- 
#> pacakge_name: massdataset 
#> function_name: mutate_median_intensity() 
#> time: 2023-09-03 10:46:22.747706 
#> parameters:
#> according_to_samples : c("Blank_3", "Blank_4", "QC_1", "QC_2", "PS4P1", "PS4P2", "PS4P3", "PS4P4")
process_info$mutate_median_intensity@parameter
#> $according_to_samples
#> [1] "Blank_3" "Blank_4" "QC_1"    "QC_2"    "PS4P1"   "PS4P2"   "PS4P3"  
#> [8] "PS4P4"
```

## Output html processing information

We can output the `process_info` into a html format file, so we can know what processing steps have been made to this object and the accurate parameters.

Then we can use `report_parameters()` to output this into a html file.


```r
report_parameters(object = object, 
                  path = "data_cleaning")
```

A html file named as `parameter_report.html` will be generated and saved in `data_cleaning` folder. 

![](/docs/chapter2/figures/Screen7.png)

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
