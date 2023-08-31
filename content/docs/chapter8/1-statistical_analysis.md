---
date: "2019-05-05T00:00:00+01:00"
title: "Statistical analysis"
linktitle: Statistical analysis
author: admin
type: book
weight: 1
commentable: true
---



## Data preparation

Now the positive mode and negative mode have been annotated respectively. We need to merge positive and negative mode data.


```r
library(tidymass)
#> Registered S3 method overwritten by 'Hmisc':
#>   method       from      
#>   vcov.default fit.models
#> ── Attaching packages ──────────────────────────────────────── tidymass 1.0.8 ──
#> ✔ massdataset   1.0.25     ✔ metid         1.2.28
#> ✔ massprocesser 1.0.10     ✔ masstools     1.0.10
#> ✔ masscleaner   1.0.11     ✔ dplyr         1.1.2 
#> ✔ massqc        1.0.6      ✔ ggplot2       3.4.2 
#> ✔ massstat      1.0.5      ✔ magrittr      2.0.3 
#> ✔ metpath       1.0.8
library(tidyverse)
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ forcats   1.0.0     ✔ readr     2.1.4
#> ✔ lubridate 1.9.2     ✔ stringr   1.5.0
#> ✔ purrr     1.0.1     ✔ tibble    3.2.1
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ xcms::collect()          masks dplyr::collect()
#> ✖ MSnbase::combine()       masks Biobase::combine(), BiocGenerics::combine(), dplyr::combine()
#> ✖ tidyr::expand()          masks S4Vectors::expand()
#> ✖ tidyr::extract()         masks magrittr::extract()
#> ✖ metid::filter()          masks metpath::filter(), dplyr::filter(), massdataset::filter(), stats::filter()
#> ✖ S4Vectors::first()       masks dplyr::first()
#> ✖ xcms::groups()           masks dplyr::groups()
#> ✖ dplyr::lag()             masks stats::lag()
#> ✖ purrr::map()             masks mixOmics::map()
#> ✖ BiocGenerics::Position() masks ggplot2::Position(), base::Position()
#> ✖ purrr::reduce()          masks MSnbase::reduce()
#> ✖ S4Vectors::rename()      masks dplyr::rename(), massdataset::rename()
#> ✖ lubridate::second()      masks S4Vectors::second()
#> ✖ lubridate::second<-()    masks S4Vectors::second<-()
#> ✖ MASS::select()           masks dplyr::select(), massdataset::select()
#> ✖ purrr::set_names()       masks magrittr::set_names()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
```

### Load data


```r
load("metabolite_annotation/object_pos2")
load("metabolite_annotation/object_neg2")
```

### Remove the features without annotations

### Positive mode


```r
object_pos2 <- 
  object_pos2 %>% 
  activate_mass_dataset(what = "annotation_table") %>% 
  filter(!is.na(Level)) %>% 
  filter(Level == 1 | Level == 2)
```


```r
object_pos2
#> -------------------- 
#> massdataset version: 0.99.1 
#> -------------------- 
#> 1.expression_data:[ 206 x 259 data.frame]
#> 2.sample_info:[ 259 x 6 data.frame]
#> 259 samples:sample_06 sample_103 sample_11 ... sample_QC_38 sample_QC_39
#> 3.variable_info:[ 206 x 6 data.frame]
#> 206 variables:M86T95_POS M95T100_1_POS M100T160_POS ... M568T622_POS M609T427_POS
#> 4.sample_info_note:[ 6 x 2 data.frame]
#> 5.variable_info_note:[ 6 x 2 data.frame]
#> 6.ms2_data:[ 1042 variables x 951 MS2 spectra]
#> -------------------- 
#> Processing information
#> 11 processings in total
#> Latest 3 processings show
#> update_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset update_mass_dataset() 2022-01-19 21:53:01
#> mutate_ms2 ---------- 
#>       Package Function.used                Time
#> 1 massdataset  mutate_ms2() 2022-01-19 21:53:36
#> annotate_metabolites_mass_dataset ---------- 
#>   Package                       Function.used                       Time
#> 1   metid annotate_metabolites_mass_dataset()  2022-02-22 21:16:23.17454
#> 2   metid annotate_metabolites_mass_dataset() 2022-02-22 21:30:10.706486
#> 3   metid annotate_metabolites_mass_dataset() 2022-02-22 21:47:59.474422
```

### Negative mode


```r
object_neg2 <- 
  object_neg2 %>% 
  activate_mass_dataset(what = "annotation_table") %>% 
  filter(!is.na(Level)) %>% 
  filter(Level == 1 | Level == 2)
```


```r
object_neg2
#> -------------------- 
#> massdataset version: 0.99.1 
#> -------------------- 
#> 1.expression_data:[ 165 x 259 data.frame]
#> 2.sample_info:[ 259 x 6 data.frame]
#> 259 samples:sample_06 sample_103 sample_11 ... sample_QC_38 sample_QC_39
#> 3.variable_info:[ 165 x 6 data.frame]
#> 165 variables:M73T74_NEG M75T52_NEG M85T99_NEG ... M480T641_NEG M514T611_NEG
#> 4.sample_info_note:[ 6 x 2 data.frame]
#> 5.variable_info_note:[ 6 x 2 data.frame]
#> 6.ms2_data:[ 1092 variables x 988 MS2 spectra]
#> -------------------- 
#> Processing information
#> 11 processings in total
#> Latest 3 processings show
#> update_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset update_mass_dataset() 2022-01-19 21:53:37
#> mutate_ms2 ---------- 
#>       Package Function.used                Time
#> 1 massdataset  mutate_ms2() 2022-01-19 21:54:06
#> annotate_metabolites_mass_dataset ---------- 
#>   Package                       Function.used                       Time
#> 1   metid annotate_metabolites_mass_dataset() 2022-02-22 21:50:29.759271
#> 2   metid annotate_metabolites_mass_dataset() 2022-02-22 22:08:10.771619
#> 3   metid annotate_metabolites_mass_dataset() 2022-02-22 22:26:33.968578
```

### Merge data

We need to merge positive and negative mode data as one `mass_dataset` class.


```r
head(colnames(object_pos2))
#> [1] "sample_06"  "sample_103" "sample_11"  "sample_112" "sample_117"
#> [6] "sample_12"
```



```r
head(colnames(object_neg2))
#> [1] "sample_06"  "sample_103" "sample_11"  "sample_112" "sample_117"
#> [6] "sample_12"
```


```r
object <- 
merge_mass_dataset(x = object_pos2, 
                   y = object_neg2, 
                   sample_direction = "inner",
                   variable_direction = "full", 
                   sample_by = "sample_id", 
                   variable_by = c("variable_id", "mz", "rt"))
```


```r
object
#> -------------------- 
#> massdataset version: 1.0.25 
#> -------------------- 
#> 1.expression_data:[ 371 x 259 data.frame]
#> 2.sample_info:[ 259 x 11 data.frame]
#> 259 samples:sample_06 sample_103 sample_11 ... sample_QC_38 sample_QC_39
#> 3.variable_info:[ 371 x 9 data.frame]
#> 371 variables:M86T95_POS M95T100_1_POS M100T160_POS ... M480T641_NEG M514T611_NEG
#> 4.sample_info_note:[ 11 x 2 data.frame]
#> 5.variable_info_note:[ 9 x 2 data.frame]
#> 6.ms2_data:[ 2084 variables x 1902 MS2 spectra]
#> -------------------- 
#> Processing information
#> 23 processings in total
#> Latest 3 processings show
#> mutate_ms2 ---------- 
#>       Package Function.used                Time
#> 1 massdataset  mutate_ms2() 2022-01-19 21:54:06
#> annotate_metabolites_mass_dataset ---------- 
#>   Package                       Function.used                       Time
#> 1   metid annotate_metabolites_mass_dataset() 2022-02-22 21:50:29.759271
#> 2   metid annotate_metabolites_mass_dataset() 2022-02-22 22:08:10.771619
#> 3   metid annotate_metabolites_mass_dataset() 2022-02-22 22:26:33.968578
#> merge_mass_dataset ---------- 
#>       Package      Function.used                Time
#> 1 massdataset merge_mass_dataset 2023-08-31 00:00:35
```

## Trace processing information of object

Then we can use the `report_parameters()` function to trace processing information of object.

All the analysis results will be placed in a folder named as `statistical_analysis`.


```r
dir.create(path = "statistical_analysis", showWarnings = FALSE)
```


```r
report_parameters(object = object, path = "statistical_analysis/")
```

A html format file named as `parameter_report.html` will be generated.

![](/docs/chapter8/figures/fig1.png)

## Remove redundant metabolites

Remove the redundant annotated metabolites bases on `Level` and score.


```r
object <-
  object %>% 
  activate_mass_dataset(what = "annotation_table") %>% 
  group_by(Compound.name) %>% 
  filter(Level == min(Level)) %>% 
  filter(SS == max(SS)) %>% 
  slice_head(n = 1)
```


```r
object <-
  object %>% 
  activate_mass_dataset(what = "annotation_table") %>% 
  group_by(variable_id) %>% 
  filter(Level == min(Level)) %>% 
  filter(SS == max(SS)) %>% 
  slice_head(n = 1)
```

## Differential expression metabolites

Calculate the fold changes.


```r
control_sample_id =
  object %>%
  activate_mass_dataset(what = "sample_info") %>%
  filter(group == "Control") %>%
  pull(sample_id)

case_sample_id =
  object %>%
  activate_mass_dataset(what = "sample_info") %>%
  filter(group == "Case") %>%
  pull(sample_id)
```


```r
object <-
  mutate_fc(object = object, 
            control_sample_id = control_sample_id, 
            case_sample_id = case_sample_id, 
            mean_median = "mean")
#> 110 control samples.
#> 110 case samples.
```


Calculate p values.


```r
object <-
  mutate_p_value(
    object = object,
    control_sample_id = control_sample_id,
    case_sample_id = case_sample_id,
    method = "t.test",
    p_adjust_methods = "BH"
  )
#> 110 control samples.
#> 110 case samples.
```

Volcano plot.


```r
volcano_plot(object = object,
             add_text = TRUE,
             text_from = "Compound.name", 
             point_size_scale = "p_value") +
  scale_size_continuous(range = c(0.5, 5))
```

<img src="/docs/chapter8/1-statistical_analysis_files/figure-html/unnamed-chunk-18-1.png" width="100%" />

## Output result

Output the differential expression metabolites.


```r
differential_metabolites <- 
  extract_variable_info(object = object) %>% 
  filter(fc > 2 | fc < 0.5) %>% 
  filter(p_value_adjust < 0.05)

readr::write_csv(differential_metabolites, 
                 file = "statistical_analysis/differential_metabolites.csv")
```

Save result for subsequent analysis.


```r
object_final <- object
save(object_final, file = "statistical_analysis/object_final")
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
#>  [7] tidyverse_2.0.0       metid_1.2.28          metpath_1.0.8        
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
#>  [11] rprojroot_2.0.3             vroom_1.6.3                
#>  [13] globals_0.16.2              backports_1.4.1            
#>  [15] plotly_4.10.2               openxlsx_4.2.5.2           
#>  [17] limma_3.56.2                Hmisc_5.1-0                
#>  [19] sass_0.4.6                  rmarkdown_2.22             
#>  [21] jquerylib_0.1.4             yaml_2.3.7                 
#>  [23] remotes_2.4.2               doRNG_1.8.6                
#>  [25] zip_2.3.0                   MsCoreUtils_1.12.0         
#>  [27] pbapply_1.7-0               RColorBrewer_1.1-3         
#>  [29] zlibbioc_1.46.0             GenomicRanges_1.52.0       
#>  [31] ggraph_2.1.0                itertools_0.1-3            
#>  [33] RCurl_1.98-1.12             nnet_7.3-18                
#>  [35] tweenr_2.0.2                circlize_0.4.15            
#>  [37] GenomeInfoDbData_1.2.10     IRanges_2.34.0             
#>  [39] ggrepel_0.9.3               listenv_0.9.0              
#>  [41] ellipse_0.4.5               RSpectra_0.16-1            
#>  [43] missForest_1.5              parallelly_1.36.0          
#>  [45] ncdf4_1.21                  codetools_0.2-19           
#>  [47] DelayedArray_0.26.3         ggforce_0.4.1              
#>  [49] tidyselect_1.2.0            shape_1.4.6                
#>  [51] farver_2.1.1                viridis_0.6.3              
#>  [53] matrixStats_1.0.0           base64enc_0.1-3            
#>  [55] jsonlite_1.8.5              GetoptLong_1.0.5           
#>  [57] multtest_2.56.0             e1071_1.7-13               
#>  [59] tidygraph_1.2.3             Formula_1.2-5              
#>  [61] survival_3.5-5              iterators_1.0.14           
#>  [63] foreach_1.5.2               progress_1.2.2             
#>  [65] tools_4.3.0                 glue_1.6.2                 
#>  [67] rARPACK_0.11-0              gridExtra_2.3              
#>  [69] xfun_0.39                   here_1.0.1                 
#>  [71] MatrixGenerics_1.12.2       GenomeInfoDb_1.36.0        
#>  [73] withr_2.5.0                 BiocManager_1.30.21        
#>  [75] fastmap_1.1.1               fansi_1.0.4                
#>  [77] blogdown_1.18.1             digest_0.6.31              
#>  [79] timechange_0.2.0            R6_2.5.1                   
#>  [81] colorspace_2.1-0            utf8_1.2.3                 
#>  [83] generics_0.1.3              data.table_1.14.8          
#>  [85] corpcor_1.6.10              robustbase_0.95-1          
#>  [87] class_7.3-21                graphlayouts_1.0.0         
#>  [89] prettyunits_1.1.1           httr_1.4.6                 
#>  [91] htmlwidgets_1.6.2           S4Arrays_1.0.4             
#>  [93] pkgconfig_2.0.3             gtable_0.3.3               
#>  [95] robust_0.7-1                impute_1.74.1              
#>  [97] MassSpecWavelet_1.66.0      XVector_0.40.0             
#>  [99] furrr_0.3.1                 pcaPP_2.0-3                
#> [101] htmltools_0.5.5             bookdown_0.34              
#> [103] MALDIquant_1.22.1           clue_0.3-64                
#> [105] scales_1.2.1                png_0.1-8                  
#> [107] knitr_1.43                  rstudioapi_0.14            
#> [109] reshape2_1.4.4              tzdb_0.4.0                 
#> [111] rjson_0.2.21                checkmate_2.2.0            
#> [113] ggcorrplot_0.1.4            proxy_0.4-27               
#> [115] cachem_1.0.8                GlobalOptions_0.1.2        
#> [117] parallel_4.3.0              foreign_0.8-84             
#> [119] mzID_1.38.0                 vsn_3.68.0                 
#> [121] pillar_1.9.0                vctrs_0.6.2                
#> [123] MsFeatures_1.8.0            RANN_2.6.1                 
#> [125] pcaMethods_1.92.0           randomForest_4.7-1.1       
#> [127] cluster_2.1.4               htmlTable_2.4.1            
#> [129] evaluate_0.21               mvtnorm_1.2-2              
#> [131] cli_3.6.1                   compiler_4.3.0             
#> [133] rlang_1.1.1                 crayon_1.5.2               
#> [135] rngtools_1.5.2              Rdisop_1.60.0              
#> [137] rrcov_1.7-3                 labeling_0.4.2             
#> [139] affy_1.78.0                 plyr_1.8.8                 
#> [141] stringi_1.7.12              viridisLite_0.4.2          
#> [143] Biostrings_2.68.1           munsell_0.5.0              
#> [145] lazyeval_0.2.2              fit.models_0.64            
#> [147] Matrix_1.5-4                hms_1.1.3                  
#> [149] patchwork_1.1.2             bit64_4.0.5                
#> [151] future_1.32.0               KEGGREST_1.40.0            
#> [153] highr_0.10                  SummarizedExperiment_1.30.2
#> [155] igraph_1.4.3                affyio_1.70.0              
#> [157] bslib_0.5.0                 bit_4.0.5                  
#> [159] DEoptimR_1.0-14             readxl_1.4.2
```

