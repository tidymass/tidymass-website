---
date: "2019-05-05T00:00:00+01:00"
title: "Add MS2 spectra data into mass_dataset class object"
linktitle: "2 Add MS2 spectra"
author: admin
type: book
weight: 2
commentable: true
---




`mass_dataset` class object can also contain MS2 data. 

## Data preparation

### `mass_dataset` class object

We need to create a `mass_dataset` class object first, [see this document](../../chapter2/1-create_mass_dataset/). And here we use the data from this step as an example.


``` r
load("feature_table/object_pos")
load("feature_table/object_neg")
```

### MS2 data

The MS2 raw data should be converted to `mgf` format data. Please [refer this document](../../chapter3/1-data_convert/).

Here we use the demo data for `tidymass`, please download it and put it in the `mgf_ms2_data` folder.

[💾 Download link is here.](https://drive.google.com/file/d/1FY3x7q5i1g3oSLaVej__ZaZ4XSX-mWBQ/view?usp=sharing)

Then uncompress it.

## Add MS2 to `mass_dataset` class object

Positive mode.


``` r
library(massdataset)
object_pos2 =
  mutate_ms2(
    object = object_pos,
    column = "rp",
    polarity = "positive",
    ms1.ms2.match.mz.tol = 10,
    ms1.ms2.match.rt.tol = 15,
    path = "mgf_ms2_data/POS/"
  )
```


``` r
object_pos2
#> -------------------- 
#> massdataset version: 1.0.25 
#> -------------------- 
#> 1.expression_data:[ 1612 x 36 data.frame]
#> 2.sample_info:[ 36 x 4 data.frame]
#> 36 samples:bl20210902_3 bl20210902_4 bl20210902_5 ... bl20210902_37 bl20210902_38
#> 3.variable_info:[ 1612 x 3 data.frame]
#> 1612 variables:M86T44_POS M90T638_POS M91T631_POS ... M1197T265_POS M1198T265_POS
#> 4.sample_info_note:[ 4 x 2 data.frame]
#> 5.variable_info_note:[ 3 x 2 data.frame]
#> 6.ms2_data:[ 9 variables x 9 MS2 spectra]
#> -------------------- 
#> Processing information
#> 2 processings in total
#> create_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset create_mass_dataset() 2023-09-04 00:57:14
#> mutate_ms2 ---------- 
#>       Package Function.used                Time
#> 1 massdataset  mutate_ms2() 2024-09-25 21:01:55
```


``` r
object_pos2@ms2_data
#> $`QEP_SGA_QC_posi_ms2_ce25_01.mgf;QEP_SGA_QC_posi_ms2_ce25_02.mgf;QEP_SGA_QC_posi_ms2_ce50_01.mgf;QEP_SGA_QC_posi_ms2_ce50_02.mgf`
#> -------------------- 
#> column: rp 
#> polarity: positive 
#> mz_tol: 10 
#> rt_tol (second): 15 
#> -------------------- 
#> 9 variables:
#> M103T92_POS M120T92_1_POS M133T255_POS M149T93_POS M166T94_POS...
#> 9 MS2 spectra.
#> mz103.054814801682rt96.92601 mz120.081003145403rt103.263636 mz133.101364135742rt269.674188 mz149.059844970703rt99.091818 mz166.086254683842rt103.128918...
```

Negative mode.


``` r
object_neg2 =
  mutate_ms2(
    object = object_neg,
    column = "rp",
    polarity = "negative",
    ms1.ms2.match.mz.tol = 10,
    ms1.ms2.match.rt.tol = 15,
    path = "mgf_ms2_data/NEG/"
  )
```


``` r
object_neg2@ms2_data
#> $`QEP_SGA_QC_neg_ms2_ce25_01.mgf;QEP_SGA_QC_neg_ms2_ce25_02.mgf;QEP_SGA_QC_neg_ms2_ce50_01.mgf;QEP_SGA_QC_neg_ms2_ce50_02.mgf`
#> -------------------- 
#> column: rp 
#> polarity: negative 
#> mz_tol: 10 
#> rt_tol (second): 15 
#> -------------------- 
#> 44 variables:
#> M101T106_NEG M116T626_NEG M116T505_NEG M116T483_NEG M116T586_NEG...
#> 43 MS2 spectra.
#> mz101.023086547852rt97.383582 mz115.919448852539rt634.03908 mz115.919456481934rt515.338818 mz115.919372558594rt471.106446 mz115.919403076172rt591.442212...
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
#> [1] ggplot2_3.5.1      dplyr_1.1.4        magrittr_2.0.3     masstools_1.0.13  
#> [5] massdataset_1.0.34
#> 
#> loaded via a namespace (and not attached):
#>   [1] bitops_1.0-8                pbapply_1.7-2              
#>   [3] remotes_2.5.0               rlang_1.1.4                
#>   [5] clue_0.3-65                 GetoptLong_1.0.5           
#>   [7] matrixStats_1.3.0           compiler_4.4.1             
#>   [9] png_0.1-8                   vctrs_0.6.5                
#>  [11] reshape2_1.4.4              stringr_1.5.1              
#>  [13] ProtGenerics_1.36.0         pkgconfig_2.0.3            
#>  [15] shape_1.4.6.1               crayon_1.5.3               
#>  [17] fastmap_1.2.0               XVector_0.44.0             
#>  [19] utf8_1.2.4                  rmarkdown_2.28             
#>  [21] tzdb_0.4.0                  preprocessCore_1.66.0      
#>  [23] UCSC.utils_1.0.0            purrr_1.0.2                
#>  [25] xfun_0.47                   MultiAssayExperiment_1.30.3
#>  [27] zlibbioc_1.50.0             cachem_1.1.0               
#>  [29] GenomeInfoDb_1.40.1         jsonlite_1.8.8             
#>  [31] DelayedArray_0.30.1         BiocParallel_1.38.0        
#>  [33] parallel_4.4.1              cluster_2.1.6              
#>  [35] R6_2.5.1                    bslib_0.8.0                
#>  [37] stringi_1.8.4               RColorBrewer_1.1-3         
#>  [39] limma_3.60.4                GenomicRanges_1.56.1       
#>  [41] jquerylib_0.1.4             Rcpp_1.0.13                
#>  [43] bookdown_0.40               SummarizedExperiment_1.34.0
#>  [45] iterators_1.0.14            knitr_1.48                 
#>  [47] readr_2.1.5                 IRanges_2.38.1             
#>  [49] Matrix_1.7-0                igraph_2.0.3               
#>  [51] tidyselect_1.2.1            rstudioapi_0.16.0          
#>  [53] abind_1.4-5                 yaml_2.3.10                
#>  [55] affy_1.82.0                 doParallel_1.0.17          
#>  [57] codetools_0.2-20            blogdown_1.19              
#>  [59] lattice_0.22-6              tibble_3.2.1               
#>  [61] plyr_1.8.9                  withr_3.0.1                
#>  [63] Biobase_2.64.0              evaluate_0.24.0            
#>  [65] zip_2.3.1                   circlize_0.4.16            
#>  [67] BiocManager_1.30.25         affyio_1.74.0              
#>  [69] pillar_1.9.0                MatrixGenerics_1.16.0      
#>  [71] foreach_1.5.2               stats4_4.4.1               
#>  [73] MSnbase_2.30.1              MALDIquant_1.22.3          
#>  [75] ncdf4_1.23                  generics_0.1.3             
#>  [77] RCurl_1.98-1.16             rprojroot_2.0.4            
#>  [79] hms_1.1.3                   S4Vectors_0.42.1           
#>  [81] munsell_0.5.1               scales_1.3.0               
#>  [83] glue_1.7.0                  lazyeval_0.2.2             
#>  [85] tools_4.4.1                 mzID_1.42.0                
#>  [87] QFeatures_1.14.2            vsn_3.72.0                 
#>  [89] mzR_2.38.0                  openxlsx_4.2.7             
#>  [91] XML_3.99-0.17               grid_4.4.1                 
#>  [93] impute_1.78.0               tidyr_1.3.1                
#>  [95] MsCoreUtils_1.16.1          colorspace_2.1-1           
#>  [97] GenomeInfoDbData_1.2.12     PSMatch_1.8.0              
#>  [99] cli_3.6.3                   fansi_1.0.6                
#> [101] S4Arrays_1.4.1              ComplexHeatmap_2.20.0      
#> [103] AnnotationFilter_1.28.0     pcaMethods_1.96.0          
#> [105] gtable_0.3.5                sass_0.4.9                 
#> [107] digest_0.6.37               BiocGenerics_0.50.0        
#> [109] SparseArray_1.4.8           rjson_0.2.22               
#> [111] htmltools_0.5.8.1           lifecycle_1.0.4            
#> [113] httr_1.4.7                  here_1.0.1                 
#> [115] statmod_1.5.0               GlobalOptions_0.1.2        
#> [117] MASS_7.3-61
```
