---
date: "2019-05-05T00:00:00+01:00"
title: "使用 metid 识别单个峰"
linktitle: "6 识别单个峰"
author: admin
type: book
weight: 6
commentable: true
---



有时我们只需要匹配一个峰值。可以使用 `identify_single_peak()` 函数来识别单个峰。

## 数据准备


``` r
library(massdataset)
library(tidyverse)
library(metid)

ms1_data =
  readr::read_csv(file.path(
    system.file("ms1_peak", package = "metid"),
    "ms1.peak.table.csv"
  ))

ms1_data = data.frame(ms1_data, sample1 = 1, sample2 = 2)

expression_data = ms1_data %>%
  dplyr::select(-c(name:rt))

variable_info =
  ms1_data %>%
  dplyr::select(name:rt) %>%
  dplyr::rename(variable_id = name)

sample_info =
  data.frame(
    sample_id = colnames(expression_data),
    injection.order = c(1, 2),
    class = c("Subject", "Subject"),
    group = c("Subject", "Subject")
  )
rownames(expression_data) = variable_info$variable_id

object = create_mass_dataset(
  expression_data = expression_data,
  sample_info = sample_info,
  variable_info = variable_info
)

object
#> -------------------- 
#> massdataset version: 1.0.34 
#> -------------------- 
#> 1.expression_data:[ 100 x 2 data.frame]
#> 2.sample_info:[ 2 x 4 data.frame]
#> 2 samples:sample1 sample2
#> 3.variable_info:[ 100 x 3 data.frame]
#> 100 variables:pRPLC_376 pRPLC_391 pRPLC_603 ... pRPLC_21734 pRPLC_22098
#> 4.sample_info_note:[ 4 x 2 data.frame]
#> 5.variable_info_note:[ 3 x 2 data.frame]
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 1 processings in total
#> create_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset create_mass_dataset() 2024-09-25 21:40:38
```

## 将 MS2 数据添加到 `mass_dataset` 对象


``` r
path = "./metabolite_annotation"
dir.create(path)

ms2_data <- system.file("ms2_data", package = "metid")
file.copy(
  from = file.path(ms2_data, "QC1_MSMS_NCE25.mgf"),
  to = path,
  overwrite = TRUE,
  recursive = TRUE
)
#> [1] TRUE

object =
  massdataset::mutate_ms2(
    object = object,
    column = "rp",
    polarity = "positive",
    ms1.ms2.match.mz.tol = 10,
    ms1.ms2.match.rt.tol = 30, 
    path = path
  )

object
#> -------------------- 
#> massdataset version: 1.0.34 
#> -------------------- 
#> 1.expression_data:[ 100 x 2 data.frame]
#> 2.sample_info:[ 2 x 4 data.frame]
#> 2 samples:sample1 sample2
#> 3.variable_info:[ 100 x 3 data.frame]
#> 100 variables:pRPLC_376 pRPLC_391 pRPLC_603 ... pRPLC_21734 pRPLC_22098
#> 4.sample_info_note:[ 4 x 2 data.frame]
#> 5.variable_info_note:[ 3 x 2 data.frame]
#> 6.ms2_data:[ 16 variables x 16 MS2 spectra]
#> -------------------- 
#> Processing information
#> 2 processings in total
#> create_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset create_mass_dataset() 2024-09-25 21:40:38
#> mutate_ms2 ---------- 
#>       Package Function.used                Time
#> 1 massdataset  mutate_ms2() 2024-09-25 22:08:30

object@ms2_data
#> $QC1_MSMS_NCE25.mgf
#> -------------------- 
#> column: rp 
#> polarity: positive 
#> mz_tol: 10 
#> rt_tol (second): 30 
#> -------------------- 
#> 16 variables:
#> pRPLC_603 pRPLC_1112 pRPLC_1307 pRPLC_1860 pRPLC_3927...
#> 16 MS2 spectra.
#> mz162.112344859731rt35.281947 mz209.092013478675rt62.786886 mz314.232098215226rt415.887162 mz249.184679448673rt585.115404 mz232.154251098633rt84.328626...
```

## 注释单个峰值


``` r
data("snyder_database_rplc0.0.3", package = "metid")

annotate_single_peak_mass_dataset(
  object = object,
  variable_index = 3,
  based_on_rt = FALSE,
  based_on_ms2 = FALSE,
  database = snyder_database_rplc0.0.3,
  add_to_annotation_table = FALSE
)
#>   variable_id ms2_files_id ms2_spectrum_id  Compound.name   CAS.ID   HMDB.ID
#> 1   pRPLC_603           NA              NA L(-)-Carnitine     <NA>      <NA>
#> 2   pRPLC_603           NA              NA    L-Carnitine 541-15-1 HMDB00062
#>   KEGG.ID   Lab.ID Adduct mz.error mz.match.score RT.error RT.match.score CE SS
#> 1    <NA>  RPLC_54 (M+H)+  0.05375      0.9999977       NA             NA NA NA
#> 2  C00318 RPLC_406 (M+H)+  1.86625      0.9972176       NA             NA NA NA
#>   Total.score Database Level
#> 1   0.9999977 MS_0.0.2     3
#> 2   0.9972176 MS_0.0.2     3
```


``` r
annotate_single_peak_mass_dataset(
  object = object,
  variable_index = 3,
  based_on_rt = TRUE,
  based_on_ms2 = FALSE,
  database = snyder_database_rplc0.0.3,
  add_to_annotation_table = FALSE
)
#>   variable_id ms2_files_id ms2_spectrum_id  Compound.name   CAS.ID   HMDB.ID
#> 1   pRPLC_603           NA              NA L(-)-Carnitine     <NA>      <NA>
#> 2   pRPLC_603           NA              NA    L-Carnitine 541-15-1 HMDB00062
#>   KEGG.ID   Lab.ID Adduct mz.error mz.match.score RT.error RT.match.score CE SS
#> 1    <NA>  RPLC_54 (M+H)+  0.05375      0.9999977    0.746      0.9996909 NA NA
#> 2  C00318 RPLC_406 (M+H)+  1.86625      0.9972176    2.254      0.9971815 NA NA
#>   Total.score Database Level
#> 1   0.9998443 MS_0.0.2     2
#> 2   0.9971995 MS_0.0.2     2
```


``` r
annotate_single_peak_mass_dataset(
  object = object,
  variable_index = 3,
  based_on_rt = TRUE,
  based_on_ms2 = TRUE,
  database = snyder_database_rplc0.0.3,
  add_to_annotation_table = FALSE
)
#> 
  |                                                                            
  |                                                                      |   0%
  |                                                                            
  |====                                                                  |   6%
  |                                                                            
  |=========                                                             |  12%
  |                                                                            
  |=============                                                         |  19%
  |                                                                            
  |==================                                                    |  25%
  |                                                                            
  |======================                                                |  31%
  |                                                                            
  |==========================                                            |  38%
  |                                                                            
  |===============================                                       |  44%
  |                                                                            
  |===================================                                   |  50%
  |                                                                            
  |=======================================                               |  56%
  |                                                                            
  |============================================                          |  62%
  |                                                                            
  |================================================                      |  69%
  |                                                                            
  |====================================================                  |  75%
  |                                                                            
  |=========================================================             |  81%
  |                                                                            
  |=============================================================         |  88%
  |                                                                            
  |==================================================================    |  94%
  |                                                                            
  |======================================================================| 100%
#>   variable_id       ms2_files_id               ms2_spectrum_id Compound.name
#> 1   pRPLC_603 QC1_MSMS_NCE25.mgf mz162.112344859731rt35.281947   L-Carnitine
#>     CAS.ID   HMDB.ID KEGG.ID   Lab.ID Adduct mz.error mz.match.score RT.error
#> 1 541-15-1 HMDB00062  C00318 RPLC_406 (M+H)+ 1.424649      0.9983776 0.718053
#>   RT.match.score    CE        SS Total.score Database Level
#> 1      0.9997136 NCE25 0.5995589   0.7993023 MS_0.0.2     1
```

## 将注释结果添加到对象


``` r

object@annotation_table
#> data frame with 0 columns and 0 rows

object1 = 
annotate_single_peak_mass_dataset(
  object = object,
  variable_index = 3,
  based_on_rt = FALSE,
  based_on_ms2 = FALSE,
  database = snyder_database_rplc0.0.3,
  add_to_annotation_table = TRUE
)

object1@annotation_table
#>   variable_id ms2_files_id ms2_spectrum_id  Compound.name   CAS.ID   HMDB.ID
#> 1   pRPLC_603           NA              NA L(-)-Carnitine     <NA>      <NA>
#> 2   pRPLC_603           NA              NA    L-Carnitine 541-15-1 HMDB00062
#>   KEGG.ID   Lab.ID Adduct mz.error mz.match.score RT.error RT.match.score CE SS
#> 1    <NA>  RPLC_54 (M+H)+  0.05375      0.9999977       NA             NA NA NA
#> 2  C00318 RPLC_406 (M+H)+  1.86625      0.9972176       NA             NA NA NA
#>   Total.score Database Level
#> 1   0.9999977 MS_0.0.2     3
#> 2   0.9972176 MS_0.0.2     3
```


``` r
object2 = 
annotate_single_peak_mass_dataset(
  object = object1,
  variable_index = 3,
  based_on_rt = TRUE,
  based_on_ms2 = FALSE,
  database = snyder_database_rplc0.0.3,
  add_to_annotation_table = TRUE
)

object2@annotation_table
#>   variable_id ms2_files_id ms2_spectrum_id  Compound.name   CAS.ID   HMDB.ID
#> 1   pRPLC_603           NA              NA L(-)-Carnitine     <NA>      <NA>
#> 2   pRPLC_603           NA              NA    L-Carnitine 541-15-1 HMDB00062
#> 3   pRPLC_603           NA              NA L(-)-Carnitine     <NA>      <NA>
#>   KEGG.ID   Lab.ID Adduct mz.error mz.match.score RT.error RT.match.score CE SS
#> 1    <NA>  RPLC_54 (M+H)+  0.05375      0.9999977    0.746      0.9996909 NA NA
#> 2  C00318 RPLC_406 (M+H)+  1.86625      0.9972176    2.254      0.9971815 NA NA
#> 3    <NA>  RPLC_54 (M+H)+  0.05375      0.9999977       NA             NA NA NA
#>   Total.score Database Level
#> 1   0.9998443 MS_0.0.2     2
#> 2   0.9971995 MS_0.0.2     2
#> 3   0.9999977 MS_0.0.2     3
```


``` r
object3 =
  annotate_single_peak_mass_dataset(
    object = object2,
    variable_index = 3,
    based_on_rt = TRUE,
    based_on_ms2 = FALSE,
    database = snyder_database_rplc0.0.3,
    add_to_annotation_table = TRUE
  )

object3@annotation_table
#>   variable_id ms2_files_id ms2_spectrum_id  Compound.name   CAS.ID   HMDB.ID
#> 1   pRPLC_603           NA              NA L(-)-Carnitine     <NA>      <NA>
#> 2   pRPLC_603           NA              NA    L-Carnitine 541-15-1 HMDB00062
#>   KEGG.ID   Lab.ID Adduct mz.error mz.match.score RT.error RT.match.score CE SS
#> 1    <NA>  RPLC_54 (M+H)+  0.05375      0.9999977    0.746      0.9996909 NA NA
#> 2  C00318 RPLC_406 (M+H)+  1.86625      0.9972176    2.254      0.9971815 NA NA
#>   Total.score Database Level
#> 1   0.9998443 MS_0.0.2     2
#> 2   0.9971995 MS_0.0.2     2
```

## 会话信息


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
#> [1] stats4    stats     graphics  grDevices utils     datasets  methods  
#> [8] base     
#> 
#> other attached packages:
#>  [1] MSnbase_2.30.1      ProtGenerics_1.36.0 S4Vectors_0.42.1   
#>  [4] mzR_2.38.0          Rcpp_1.0.13         Biobase_2.64.0     
#>  [7] BiocGenerics_0.50.0 metid_1.2.34        lubridate_1.9.3    
#> [10] forcats_1.0.0       stringr_1.5.1       purrr_1.0.2        
#> [13] readr_2.1.5         tidyr_1.3.1         tibble_3.2.1       
#> [16] tidyverse_2.0.0     ggplot2_3.5.1       dplyr_1.1.4        
#> [19] magrittr_2.0.3      masstools_1.0.13    massdataset_1.0.34 
#> 
#> loaded via a namespace (and not attached):
#>   [1] RColorBrewer_1.1-3          rstudioapi_0.16.0          
#>   [3] jsonlite_1.8.8              shape_1.4.6.1              
#>   [5] MultiAssayExperiment_1.30.3 MALDIquant_1.22.3          
#>   [7] rmarkdown_2.28              GlobalOptions_0.1.2        
#>   [9] zlibbioc_1.50.0             vctrs_0.6.5                
#>  [11] RCurl_1.98-1.16             blogdown_1.19              
#>  [13] progress_1.2.3              htmltools_0.5.8.1          
#>  [15] S4Arrays_1.4.1              cellranger_1.1.0           
#>  [17] SparseArray_1.4.8           mzID_1.42.0                
#>  [19] sass_0.4.9                  parallelly_1.38.0          
#>  [21] bslib_0.8.0                 htmlwidgets_1.6.4          
#>  [23] plyr_1.8.9                  impute_1.78.0              
#>  [25] plotly_4.10.4               cachem_1.1.0               
#>  [27] igraph_2.0.3                lifecycle_1.0.4            
#>  [29] iterators_1.0.14            pkgconfig_2.0.3            
#>  [31] Matrix_1.7-0                R6_2.5.1                   
#>  [33] fastmap_1.2.0               GenomeInfoDbData_1.2.12    
#>  [35] MatrixGenerics_1.16.0       future_1.34.0              
#>  [37] clue_0.3-65                 digest_0.6.37              
#>  [39] pcaMethods_1.96.0           colorspace_2.1-1           
#>  [41] furrr_0.3.1                 rprojroot_2.0.4            
#>  [43] GenomicRanges_1.56.1        fansi_1.0.6                
#>  [45] timechange_0.3.0            httr_1.4.7                 
#>  [47] abind_1.4-5                 compiler_4.4.1             
#>  [49] here_1.0.1                  remotes_2.5.0              
#>  [51] bit64_4.0.5                 withr_3.0.1                
#>  [53] doParallel_1.0.17           BiocParallel_1.38.0        
#>  [55] MASS_7.3-61                 DelayedArray_0.30.1        
#>  [57] rjson_0.2.22                tools_4.4.1                
#>  [59] PSMatch_1.8.0               zip_2.3.1                  
#>  [61] glue_1.7.0                  QFeatures_1.14.2           
#>  [63] grid_4.4.1                  cluster_2.1.6              
#>  [65] reshape2_1.4.4              generics_0.1.3             
#>  [67] gtable_0.3.5                tzdb_0.4.0                 
#>  [69] preprocessCore_1.66.0       data.table_1.16.0          
#>  [71] hms_1.1.3                   utf8_1.2.4                 
#>  [73] XVector_0.44.0              foreach_1.5.2              
#>  [75] pillar_1.9.0                vroom_1.6.5                
#>  [77] limma_3.60.4                circlize_0.4.16            
#>  [79] lattice_0.22-6              bit_4.0.5                  
#>  [81] tidyselect_1.2.1            ComplexHeatmap_2.20.0      
#>  [83] pbapply_1.7-2               knitr_1.48                 
#>  [85] bookdown_0.40               IRanges_2.38.1             
#>  [87] SummarizedExperiment_1.34.0 xfun_0.47                  
#>  [89] statmod_1.5.0               matrixStats_1.3.0          
#>  [91] stringi_1.8.4               UCSC.utils_1.0.0           
#>  [93] lazyeval_0.2.2              yaml_2.3.10                
#>  [95] evaluate_0.24.0             codetools_0.2-20           
#>  [97] MsCoreUtils_1.16.1          BiocManager_1.30.25        
#>  [99] cli_3.6.3                   affyio_1.74.0              
#> [101] munsell_0.5.1               jquerylib_0.1.4            
#> [103] readxl_1.4.3                GenomeInfoDb_1.40.1        
#> [105] globals_0.16.3              png_0.1-8                  
#> [107] XML_3.99-0.17               parallel_4.4.1             
#> [109] prettyunits_1.2.0           AnnotationFilter_1.28.0    
#> [111] bitops_1.0-8                listenv_0.9.1              
#> [113] viridisLite_0.4.2           scales_1.3.0               
#> [115] affy_1.82.0                 openxlsx_4.2.7             
#> [117] ncdf4_1.23                  crayon_1.5.3               
#> [119] GetoptLong_1.0.5            rlang_1.1.4                
#> [121] vsn_3.72.0
```
