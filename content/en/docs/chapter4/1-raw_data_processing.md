---
date: "2019-05-05T00:00:00+01:00"
title: "Raw data processing"
linktitle: Raw data processing
author: admin
type: book
weight: 1
commentable: true
---



## Data preparation

Download the demo data and [refer this article](https://tidymass.github.io/tidymass/articles/demo_data.html).

We have positive and negative mode. For each mode, we have `control`, `case` and `QC` groups. Control group have 110 samples, and case group have 110 samples as well.

![](/docs/chapter4/figures/fig1.png)

### Positive mode

`massprocesser` package is used to do the raw data processing. Please refer this [website](file:///Users/xiaotaoshen/tidymass/massprocesser/docs/index.html).

### Code

The code used to do raw data processing.


```r
library(tidymass)
#> Registered S3 method overwritten by 'Hmisc':
#>   method       from      
#>   vcov.default fit.models
#> ── Attaching packages ────────────────────────────── tidymass 1.0.8 ──
#> ✔ massdataset   1.0.25     ✔ metid         1.2.28
#> ✔ massprocesser 1.0.10     ✔ masstools     1.0.10
#> ✔ masscleaner   1.0.11     ✔ dplyr         1.1.2 
#> ✔ massqc        1.0.6      ✔ ggplot2       3.4.2 
#> ✔ massstat      1.0.5      ✔ magrittr      2.0.3 
#> ✔ metpath       1.0.8
```

```r
process_data(
  path = "mzxml_ms1_data/POS",
  polarity = "positive",
  ppm = 10,
  peakwidth = c(10, 60),
  threads = 4,
  output_tic = FALSE,
  output_bpc = FALSE,
  output_rt_correction_plot = FALSE,
  min_fraction = 0.5,
  group_for_figure = "QC"
)
```

### Results

All the results will be placed in the folder `mzxml_ms1_data/POS/Result`. More information can be found [here](https://tidymass.github.io/massprocesser/articles/raw_data_processing.html).

![](/docs/chapter4/figures/fig2.png)

You can just load the `object`, which is a `mass_dataset` class object.


```r
load("mzxml_ms1_data/POS/Result/object")
object
#> -------------------- 
#> massdataset version: 0.99.8 
#> -------------------- 
#> 1.expression_data:[ 10149 x 259 data.frame]
#> 2.sample_info:[ 259 x 4 data.frame]
#> 259 samples:sample_06 sample_103 sample_11 ... sample_QC_38 sample_QC_39
#> 3.variable_info:[ 10149 x 3 data.frame]
#> 10149 variables:M70T73_POS M70T53_POS M70T183_POS ... M923T55_POS M992T641_POS
#> 4.sample_info_note:[ 4 x 2 data.frame]
#> 5.variable_info_note:[ 3 x 2 data.frame]
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 2 processings in total
#> create_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset create_mass_dataset() 2022-02-22 16:37:06
#> process_data ---------- 
#>         Package Function.used                Time
#> 1 massprocesser  process_data 2022-02-22 16:36:42
```

We can see that there are 10,149 metabolic features in positive mode.

![](/docs/chapter4/figures/fig3.png)

You can use the `plot_adjusted_rt()` function to get the interactive plot.


```r
load("mzxml_ms1_data/POS/Result/intermediate_data/xdata2")
##set the group_for_figure if you want to show specific groups. And set it as "all" if you want to show all samples.
plot = 
massprocesser::plot_adjusted_rt(object = xdata2, 
                 group_for_figure = "QC", 
                 interactive = TRUE)
plot
```

### Negative mode

The processing of negative mode is same with positive mode data.

### Code

Same with positive mode, change `polarity` to `negative`.


```r
massprocesser::process_data(
  path = "mzxml_ms1_data/NEG",
  polarity = "negative",
  ppm = 10,
  peakwidth = c(10, 60),
  threads = 4,
  output_tic = FALSE,
  output_bpc = FALSE,
  output_rt_correction_plot = FALSE,
  min_fraction = 0.5,
  group_for_figure = "QC"
)
```

### Results

Same with positive mode.


```r
load("mzxml_ms1_data/NEG/Result/object")
object
#> -------------------- 
#> massdataset version: 0.99.8 
#> -------------------- 
#> 1.expression_data:[ 8804 x 259 data.frame]
#> 2.sample_info:[ 259 x 4 data.frame]
#> 259 samples:sample_06 sample_103 sample_11 ... sample_QC_38 sample_QC_39
#> 3.variable_info:[ 8804 x 3 data.frame]
#> 8804 variables:M70T712_NEG M70T527_NEG M70T587_NEG ... M941T65_NEG M948T641_NEG
#> 4.sample_info_note:[ 4 x 2 data.frame]
#> 5.variable_info_note:[ 3 x 2 data.frame]
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 2 processings in total
#> create_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset create_mass_dataset() 2022-02-22 16:38:19
#> process_data ---------- 
#>         Package Function.used                Time
#> 1 massprocesser  process_data 2022-02-22 16:38:02
```

We can see that there are 8,804 metabolic features in negative mode.

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
#>  [1] metid_1.2.28          metpath_1.0.8         ComplexHeatmap_2.16.0
#>  [4] mixOmics_6.24.0       lattice_0.21-8        MASS_7.3-58.4        
#>  [7] massstat_1.0.5        tidyr_1.3.0           ggfortify_0.4.16     
#> [10] massqc_1.0.6          masscleaner_1.0.11    xcms_3.22.0          
#> [13] MSnbase_2.26.0        ProtGenerics_1.32.0   S4Vectors_0.38.1     
#> [16] mzR_2.34.0            Rcpp_1.0.10           Biobase_2.60.0       
#> [19] BiocGenerics_0.46.0   BiocParallel_1.34.2   massprocesser_1.0.10 
#> [22] ggplot2_3.4.2         dplyr_1.1.2           magrittr_2.0.3       
#> [25] masstools_1.0.10      massdataset_1.0.25    tidymass_1.0.8       
#> 
#> loaded via a namespace (and not attached):
#>   [1] splines_4.3.0               bitops_1.0-7               
#>   [3] cellranger_1.1.0            tibble_3.2.1               
#>   [5] polyclip_1.10-4             preprocessCore_1.62.1      
#>   [7] XML_3.99-0.14               rpart_4.1.19               
#>   [9] fastDummies_1.6.3           lifecycle_1.0.3            
#>  [11] doParallel_1.0.17           rprojroot_2.0.3            
#>  [13] globals_0.16.2              backports_1.4.1            
#>  [15] plotly_4.10.2               openxlsx_4.2.5.2           
#>  [17] limma_3.56.2                Hmisc_5.1-0                
#>  [19] sass_0.4.6                  rmarkdown_2.22             
#>  [21] jquerylib_0.1.4             yaml_2.3.7                 
#>  [23] remotes_2.4.2               doRNG_1.8.6                
#>  [25] zip_2.3.0                   MsCoreUtils_1.12.0         
#>  [27] pbapply_1.7-0               RColorBrewer_1.1-3         
#>  [29] zlibbioc_1.46.0             GenomicRanges_1.52.0       
#>  [31] purrr_1.0.1                 ggraph_2.1.0               
#>  [33] itertools_0.1-3             RCurl_1.98-1.12            
#>  [35] nnet_7.3-18                 tweenr_2.0.2               
#>  [37] circlize_0.4.15             GenomeInfoDbData_1.2.10    
#>  [39] IRanges_2.34.0              ggrepel_0.9.3              
#>  [41] listenv_0.9.0               ellipse_0.4.5              
#>  [43] RSpectra_0.16-1             missForest_1.5             
#>  [45] parallelly_1.36.0           ncdf4_1.21                 
#>  [47] codetools_0.2-19            DelayedArray_0.26.3        
#>  [49] ggforce_0.4.1               tidyselect_1.2.0           
#>  [51] shape_1.4.6                 farver_2.1.1               
#>  [53] viridis_0.6.3               matrixStats_1.0.0          
#>  [55] base64enc_0.1-3             jsonlite_1.8.5             
#>  [57] GetoptLong_1.0.5            multtest_2.56.0            
#>  [59] e1071_1.7-13                tidygraph_1.2.3            
#>  [61] Formula_1.2-5               survival_3.5-5             
#>  [63] iterators_1.0.14            foreach_1.5.2              
#>  [65] progress_1.2.2              tools_4.3.0                
#>  [67] glue_1.6.2                  rARPACK_0.11-0             
#>  [69] gridExtra_2.3               xfun_0.39                  
#>  [71] here_1.0.1                  MatrixGenerics_1.12.2      
#>  [73] GenomeInfoDb_1.36.0         withr_2.5.0                
#>  [75] BiocManager_1.30.21         fastmap_1.1.1              
#>  [77] fansi_1.0.4                 blogdown_1.18.1            
#>  [79] digest_0.6.31               R6_2.5.1                   
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
#> [117] stringr_1.5.0               parallel_4.3.0             
#> [119] foreign_0.8-84              mzID_1.38.0                
#> [121] vsn_3.68.0                  pillar_1.9.0               
#> [123] vctrs_0.6.2                 MsFeatures_1.8.0           
#> [125] RANN_2.6.1                  pcaMethods_1.92.0          
#> [127] randomForest_4.7-1.1        cluster_2.1.4              
#> [129] htmlTable_2.4.1             evaluate_0.21              
#> [131] readr_2.1.4                 mvtnorm_1.2-2              
#> [133] cli_3.6.1                   compiler_4.3.0             
#> [135] rlang_1.1.1                 crayon_1.5.2               
#> [137] rngtools_1.5.2              Rdisop_1.60.0              
#> [139] rrcov_1.7-3                 affy_1.78.0                
#> [141] plyr_1.8.8                  stringi_1.7.12             
#> [143] viridisLite_0.4.2           Biostrings_2.68.1          
#> [145] munsell_0.5.0               lazyeval_0.2.2             
#> [147] fit.models_0.64             Matrix_1.5-4               
#> [149] hms_1.1.3                   patchwork_1.1.2            
#> [151] future_1.32.0               KEGGREST_1.40.0            
#> [153] SummarizedExperiment_1.30.2 igraph_1.4.3               
#> [155] affyio_1.70.0               bslib_0.5.0                
#> [157] DEoptimR_1.0-14             readxl_1.4.2
```
