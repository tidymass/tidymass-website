---
date: "2019-05-05T00:00:00+01:00"
title: "Identify single peak with metid"
linktitle: "5 Identify single peak"
author: admin
type: book
weight: 5
commentable: true
---



Some times we only want to match one peak. We can use `identify_single_peak()` function to identify single peak.

## Data preparation


```r
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
#> massdataset version: 1.0.25 
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
#> 1 massdataset create_mass_dataset() 2023-09-02 10:42:06
```

## Add MS2 to `mass_dataset` object


```r
path = "./metabolite_annotation"
dir.create(path)

ms2_data <- system.file("ms2_data", package = "metid")
file.copy(
  from = file.path(ms2_data, "QC1_MSMS_NCE25.mgf"),
  to = path,
  overwrite = TRUE,
  recursive = TRUE
)
#> [1] FALSE

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
#> massdataset version: 1.0.25 
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
#> 1 massdataset create_mass_dataset() 2023-09-02 10:42:06
#> mutate_ms2 ---------- 
#>       Package Function.used                Time
#> 1 massdataset  mutate_ms2() 2023-09-02 10:52:12

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

## Annotate single peaks



```r
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



```r
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


```r
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

## Add annotation result to object


```r

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


```r
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


```r
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
#> [1] grid      stats4    stats     graphics  grDevices utils     datasets 
#> [8] methods   base     
#> 
#> other attached packages:
#>  [1] lubridate_1.9.2       forcats_1.0.0         stringr_1.5.0        
#>  [4] purrr_1.0.1           readr_2.1.4           tibble_3.2.1         
#>  [7] tidyverse_2.0.0       metid_1.2.29          metpath_1.0.8        
#> [10] ComplexHeatmap_2.16.0 mixOmics_6.24.0       lattice_0.21-8       
#> [13] MASS_7.3-58.4         massstat_1.0.5        tidyr_1.3.0          
#> [16] ggfortify_0.4.16      massqc_1.0.6          masscleaner_1.0.11   
#> [19] xcms_3.22.0           MSnbase_2.26.0        ProtGenerics_1.32.0  
#> [22] S4Vectors_0.38.1      mzR_2.34.0            Rcpp_1.0.10          
#> [25] Biobase_2.60.0        BiocGenerics_0.46.0   BiocParallel_1.34.2  
#> [28] massprocesser_1.0.10  ggplot2_3.4.2         dplyr_1.1.2          
#> [31] magrittr_2.0.3        masstools_1.0.10      massdataset_1.0.25   
#> [34] tidymass_1.0.8       
#> 
#> loaded via a namespace (and not attached):
#>   [1] splines_4.3.0               bitops_1.0-7               
#>   [3] cellranger_1.1.0            polyclip_1.10-4            
#>   [5] preprocessCore_1.62.1       XML_3.99-0.14              
#>   [7] rpart_4.1.19                fastDummies_1.6.3          
#>   [9] lifecycle_1.0.3             doParallel_1.0.17          
#>  [11] rprojroot_2.0.3             globals_0.16.2             
#>  [13] backports_1.4.1             plotly_4.10.2              
#>  [15] openxlsx_4.2.5.2            limma_3.56.2               
#>  [17] Hmisc_5.1-0                 sass_0.4.6                 
#>  [19] rmarkdown_2.22              jquerylib_0.1.4            
#>  [21] yaml_2.3.7                  remotes_2.4.2              
#>  [23] doRNG_1.8.6                 zip_2.3.0                  
#>  [25] MsCoreUtils_1.12.0          pbapply_1.7-0              
#>  [27] RColorBrewer_1.1-3          zlibbioc_1.46.0            
#>  [29] GenomicRanges_1.52.0        ggraph_2.1.0               
#>  [31] itertools_0.1-3             RCurl_1.98-1.12            
#>  [33] nnet_7.3-18                 tweenr_2.0.2               
#>  [35] circlize_0.4.15             GenomeInfoDbData_1.2.10    
#>  [37] IRanges_2.34.0              ggrepel_0.9.3              
#>  [39] listenv_0.9.0               ellipse_0.4.5              
#>  [41] RSpectra_0.16-1             missForest_1.5             
#>  [43] parallelly_1.36.0           ncdf4_1.21                 
#>  [45] codetools_0.2-19            DelayedArray_0.26.3        
#>  [47] ggforce_0.4.1               tidyselect_1.2.0           
#>  [49] shape_1.4.6                 farver_2.1.1               
#>  [51] viridis_0.6.3               matrixStats_1.0.0          
#>  [53] base64enc_0.1-3             jsonlite_1.8.5             
#>  [55] GetoptLong_1.0.5            multtest_2.56.0            
#>  [57] e1071_1.7-13                tidygraph_1.2.3            
#>  [59] Formula_1.2-5               survival_3.5-5             
#>  [61] iterators_1.0.14            foreach_1.5.2              
#>  [63] progress_1.2.2              tools_4.3.0                
#>  [65] glue_1.6.2                  rARPACK_0.11-0             
#>  [67] gridExtra_2.3               xfun_0.39                  
#>  [69] here_1.0.1                  MatrixGenerics_1.12.2      
#>  [71] GenomeInfoDb_1.36.0         withr_2.5.0                
#>  [73] BiocManager_1.30.21         fastmap_1.1.1              
#>  [75] fansi_1.0.4                 blogdown_1.18.1            
#>  [77] digest_0.6.31               timechange_0.2.0           
#>  [79] R6_2.5.1                    colorspace_2.1-0           
#>  [81] utf8_1.2.3                  generics_0.1.3             
#>  [83] data.table_1.14.8           corpcor_1.6.10             
#>  [85] robustbase_0.95-1           class_7.3-21               
#>  [87] graphlayouts_1.0.0          prettyunits_1.1.1          
#>  [89] httr_1.4.6                  htmlwidgets_1.6.2          
#>  [91] S4Arrays_1.0.4              pkgconfig_2.0.3            
#>  [93] gtable_0.3.3                robust_0.7-1               
#>  [95] impute_1.74.1               MassSpecWavelet_1.66.0     
#>  [97] XVector_0.40.0              furrr_0.3.1                
#>  [99] pcaPP_2.0-3                 htmltools_0.5.5            
#> [101] bookdown_0.34               MALDIquant_1.22.1          
#> [103] clue_0.3-64                 scales_1.2.1               
#> [105] png_0.1-8                   knitr_1.43                 
#> [107] rstudioapi_0.14             reshape2_1.4.4             
#> [109] tzdb_0.4.0                  rjson_0.2.21               
#> [111] checkmate_2.2.0             ggcorrplot_0.1.4           
#> [113] proxy_0.4-27                cachem_1.0.8               
#> [115] GlobalOptions_0.1.2         parallel_4.3.0             
#> [117] foreign_0.8-84              mzID_1.38.0                
#> [119] vsn_3.68.0                  pillar_1.9.0               
#> [121] vctrs_0.6.2                 MsFeatures_1.8.0           
#> [123] RANN_2.6.1                  pcaMethods_1.92.0          
#> [125] randomForest_4.7-1.1        cluster_2.1.4              
#> [127] htmlTable_2.4.1             evaluate_0.21              
#> [129] mvtnorm_1.2-2               cli_3.6.1                  
#> [131] compiler_4.3.0              rlang_1.1.1                
#> [133] crayon_1.5.2                rngtools_1.5.2             
#> [135] Rdisop_1.60.0               rrcov_1.7-3                
#> [137] affy_1.78.0                 plyr_1.8.8                 
#> [139] stringi_1.7.12              viridisLite_0.4.2          
#> [141] Biostrings_2.68.1           munsell_0.5.0              
#> [143] lazyeval_0.2.2              fit.models_0.64            
#> [145] Matrix_1.5-4                hms_1.1.3                  
#> [147] patchwork_1.1.2             future_1.32.0              
#> [149] KEGGREST_1.40.0             SummarizedExperiment_1.30.2
#> [151] igraph_1.4.3                affyio_1.70.0              
#> [153] bslib_0.5.0                 DEoptimR_1.0-14            
#> [155] readxl_1.4.2
```


