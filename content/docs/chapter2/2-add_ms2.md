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


```r
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


```r
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


```r
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
#> 1 massdataset create_mass_dataset() 2023-09-03 09:57:14
#> mutate_ms2 ---------- 
#>       Package Function.used                Time
#> 1 massdataset  mutate_ms2() 2023-09-03 10:27:03
```


```r
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


```r
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


```r
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
#> [1] ggplot2_3.4.2      dplyr_1.1.2        magrittr_2.0.3     masstools_1.0.10  
#> [5] massdataset_1.0.25
#> 
#> loaded via a namespace (and not attached):
#>   [1] bitops_1.0-7                pbapply_1.7-0              
#>   [3] remotes_2.4.2               rlang_1.1.1                
#>   [5] clue_0.3-64                 GetoptLong_1.0.5           
#>   [7] matrixStats_1.0.0           compiler_4.3.0             
#>   [9] png_0.1-8                   vctrs_0.6.2                
#>  [11] stringr_1.5.0               ProtGenerics_1.32.0        
#>  [13] pkgconfig_2.0.3             shape_1.4.6                
#>  [15] crayon_1.5.2                fastmap_1.1.1              
#>  [17] XVector_0.40.0              utf8_1.2.3                 
#>  [19] rmarkdown_2.22              tzdb_0.4.0                 
#>  [21] preprocessCore_1.62.1       purrr_1.0.1                
#>  [23] xfun_0.39                   zlibbioc_1.46.0            
#>  [25] cachem_1.0.8                GenomeInfoDb_1.36.0        
#>  [27] jsonlite_1.8.5              DelayedArray_0.26.3        
#>  [29] BiocParallel_1.34.2         parallel_4.3.0             
#>  [31] cluster_2.1.4               R6_2.5.1                   
#>  [33] stringi_1.7.12              bslib_0.5.0                
#>  [35] RColorBrewer_1.1-3          limma_3.56.2               
#>  [37] GenomicRanges_1.52.0        jquerylib_0.1.4            
#>  [39] Rcpp_1.0.10                 bookdown_0.34              
#>  [41] SummarizedExperiment_1.30.2 iterators_1.0.14           
#>  [43] knitr_1.43                  readr_2.1.4                
#>  [45] IRanges_2.34.0              Matrix_1.5-4               
#>  [47] tidyselect_1.2.0            rstudioapi_0.14            
#>  [49] yaml_2.3.7                  doParallel_1.0.17          
#>  [51] codetools_0.2-19            affy_1.78.0                
#>  [53] blogdown_1.18.1             lattice_0.21-8             
#>  [55] tibble_3.2.1                plyr_1.8.8                 
#>  [57] withr_2.5.0                 Biobase_2.60.0             
#>  [59] evaluate_0.21               zip_2.3.0                  
#>  [61] circlize_0.4.15             pillar_1.9.0               
#>  [63] affyio_1.70.0               BiocManager_1.30.21        
#>  [65] MatrixGenerics_1.12.2       foreach_1.5.2              
#>  [67] stats4_4.3.0                MSnbase_2.26.0             
#>  [69] MALDIquant_1.22.1           ncdf4_1.21                 
#>  [71] generics_0.1.3              rprojroot_2.0.3            
#>  [73] RCurl_1.98-1.12             hms_1.1.3                  
#>  [75] S4Vectors_0.38.1            munsell_0.5.0              
#>  [77] scales_1.2.1                glue_1.6.2                 
#>  [79] tools_4.3.0                 mzID_1.38.0                
#>  [81] vsn_3.68.0                  mzR_2.34.0                 
#>  [83] openxlsx_4.2.5.2            XML_3.99-0.14              
#>  [85] grid_4.3.0                  impute_1.74.1              
#>  [87] tidyr_1.3.0                 MsCoreUtils_1.12.0         
#>  [89] colorspace_2.1-0            GenomeInfoDbData_1.2.10    
#>  [91] cli_3.6.1                   fansi_1.0.4                
#>  [93] S4Arrays_1.0.4              ComplexHeatmap_2.16.0      
#>  [95] pcaMethods_1.92.0           gtable_0.3.3               
#>  [97] sass_0.4.6                  digest_0.6.31              
#>  [99] BiocGenerics_0.46.0         rjson_0.2.21               
#> [101] htmltools_0.5.5             lifecycle_1.0.3            
#> [103] here_1.0.1                  GlobalOptions_0.1.2        
#> [105] Rdisop_1.60.0               MASS_7.3-58.4
```
