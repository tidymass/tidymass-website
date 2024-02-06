---
date: "2019-05-05T00:00:00+01:00"
title: "Create mass_dataset class"
linktitle: "1 Create mass_dataset class"
author: admin
type: book
weight: 1
commentable: true
---




Here, you can learn how to create `mass_dataset` class object using `tidymass`.

## Data preparation

The `massdataset` class object can be used to store the untargeted metabolomics data.

Let's first prepare the data objects according to the attached figure for each file.

### 1. `sample_info` (required)

The columns `sample_id` (sample ID), `injection.order` (injection order of samples), `class` (Blank, QC, Subject, etc), `group` (case, control, etc) are required.

![](/docs/chapter2/figures/Screen1.png)

### 2. `variable_info` (required)

The columns `variable_id` (variable ID), `mz` (mass to charge ratio), `rt` (retention time, unit is second) are required.

![](/docs/chapter2/figures/Screen2.png)

### 3. `expression_data` (required)

Columns are samples are rows are features (variables). 

> The column names of expression_data should be completely same with sample_id in `sample_info`, and the row names of expression_data should be completely same with variable_id in `variable_info`.

![](/docs/chapter2/figures/Screen3.png)

### 4. `sample_info_note` (optional)

This is the metadata for `sample_info`. 

![](/docs/chapter2/figures/Screen4.png)

### 5. `variable_info_note` (optional)

This is the metadata for `variable_info`.

![](/docs/chapter2/figures/Screen5.png)

## Download demo data

Here we use the demo data from `masssprocesser` package. The demo data can be [downloaded here.](https://drive.google.com/file/d/1sFIkiX7EQsEeXZ2p6cZZGJHeLibzvPIs/view?usp=sharing)

Download this data and uncompress it. And then set the path where you put the folder as working directory.

Then prepare data.


```r
library(tidyverse)
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ dplyr     1.1.2     ✔ readr     2.1.4
#> ✔ forcats   1.0.0     ✔ stringr   1.5.0
#> ✔ ggplot2   3.4.2     ✔ tibble    3.2.1
#> ✔ lubridate 1.9.2     ✔ tidyr     1.3.0
#> ✔ purrr     1.0.1     
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
peak_table_pos = readr::read_csv("feature_table/Peak_table_pos.csv")
#> Rows: 1612 Columns: 39
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr  (1): variable_id
#> dbl (38): mz, rt, bl20210902_10, bl20210902_11, bl20210902_13, bl20210902_14...
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
peak_table_neg = readr::read_csv("feature_table/Peak_table_neg.csv")
#> Rows: 5486 Columns: 39
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr  (1): variable_id
#> dbl (38): mz, rt, X20210902_neg04, X20210902_neg05, X20210902_neg06, X202109...
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

sample_info_pos = readr::read_csv("feature_table/sample_info_pos.csv")
#> Rows: 36 Columns: 4
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (3): sample_id, class, group
#> dbl (1): injection.order
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
sample_info_neg = readr::read_csv("feature_table/sample_info_neg.csv")
#> Rows: 36 Columns: 4
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (3): sample_id, class, group
#> dbl (1): injection.order
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

Variable information and expression data are in the peak table. Let's separate them.


```r
expression_data_pos = 
  peak_table_pos %>% 
  dplyr::select(-c(variable_id:rt)) %>% 
  as.data.frame()

variable_info_pos = 
  peak_table_pos %>% 
  dplyr::select(variable_id:rt) %>% 
  as.data.frame()

rownames(expression_data_pos) = variable_info_pos$variable_id

expression_data_neg = 
  peak_table_neg %>% 
  dplyr::select(-c(variable_id:rt)) %>% 
  as.data.frame()

variable_info_neg = 
  peak_table_neg %>% 
  dplyr::select(variable_id:rt) %>% 
  as.data.frame()

rownames(expression_data_neg) = variable_info_neg$variable_id

colnames(expression_data_pos) == sample_info_pos$sample_id
#>  [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#> [13] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#> [25] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE
colnames(expression_data_neg) == sample_info_neg$sample_id
#>  [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#> [13] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#> [25] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE
```

The orders of `sample_id` in `sample_info` and column names of `expression_data` are different.



```r
expression_data_pos = 
  expression_data_pos[,sample_info_pos$sample_id]

expression_data_neg = 
  expression_data_neg[,sample_info_neg$sample_id]

colnames(expression_data_pos) == sample_info_pos$sample_id
#>  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#> [16] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#> [31] TRUE TRUE TRUE TRUE TRUE TRUE
colnames(expression_data_neg) == sample_info_neg$sample_id
#>  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#> [16] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#> [31] TRUE TRUE TRUE TRUE TRUE TRUE
```

## Create `mass_data` class object

Then we can create `mass_data` class object using `create_mass_dataset()` function.


```r
library(massdataset)
#> massdataset 1.0.25 (2023-07-21 23:18:14.099478)
#> 
#> Attaching package: 'massdataset'
#> The following object is masked from 'package:stats':
#> 
#>     filter

object_pos =
  create_mass_dataset(
    expression_data = expression_data_pos,
    sample_info = sample_info_pos,
    variable_info = variable_info_pos
  )
  
object_pos
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
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 1 processings in total
#> create_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset create_mass_dataset() 2023-09-03 10:07:57
```

Then negative mode.


```r
object_neg =
  create_mass_dataset(
    expression_data = expression_data_neg,
    sample_info = sample_info_neg,
    variable_info = variable_info_neg
  )
  
object_neg
#> -------------------- 
#> massdataset version: 1.0.25 
#> -------------------- 
#> 1.expression_data:[ 5486 x 36 data.frame]
#> 2.sample_info:[ 36 x 4 data.frame]
#> 36 samples:X20210902_neg03 X20210902_neg04 X20210902_neg05 ... X20210902_neg37 X20210902_neg38
#> 3.variable_info:[ 5486 x 3 data.frame]
#> 5486 variables:M74T229_NEG M88T115_NEG M100T631_NEG ... M1199T22_NEG M1199T180_NEG
#> 4.sample_info_note:[ 4 x 2 data.frame]
#> 5.variable_info_note:[ 3 x 2 data.frame]
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 1 processings in total
#> create_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset create_mass_dataset() 2023-09-03 10:07:57
```

Then save them for next analysis.


```r
save(object_pos, file = "feature_table/object_pos")
save(object_neg, file = "feature_table/object_neg")
```


## Export `mass_dataset` class object to csv for xlsx


```r
export_mass_dataset(object = object_pos,
                    file_type = "xlsx",
                    path = "feature_table/demo_data_pos")
```

Then all the data will be in the `feature_table/demo_data_pos` folder.

![](/docs/chapter2/figures/Screen6.png)
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
#>  [1] magrittr_2.0.3     masstools_1.0.10   massdataset_1.0.25 lubridate_1.9.2   
#>  [5] forcats_1.0.0      stringr_1.5.0      dplyr_1.1.2        purrr_1.0.1       
#>  [9] readr_2.1.4        tidyr_1.3.0        tibble_3.2.1       ggplot2_3.4.2     
#> [13] tidyverse_2.0.0   
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
#>  [21] bit_4.0.5                   xfun_0.39                  
#>  [23] zlibbioc_1.46.0             cachem_1.0.8               
#>  [25] GenomeInfoDb_1.36.0         jsonlite_1.8.5             
#>  [27] DelayedArray_0.26.3         BiocParallel_1.34.2        
#>  [29] parallel_4.3.0              cluster_2.1.4              
#>  [31] R6_2.5.1                    bslib_0.5.0                
#>  [33] stringi_1.7.12              RColorBrewer_1.1-3         
#>  [35] limma_3.56.2                GenomicRanges_1.52.0       
#>  [37] jquerylib_0.1.4             Rcpp_1.0.10                
#>  [39] bookdown_0.34               SummarizedExperiment_1.30.2
#>  [41] iterators_1.0.14            knitr_1.43                 
#>  [43] IRanges_2.34.0              Matrix_1.5-4               
#>  [45] timechange_0.2.0            tidyselect_1.2.0           
#>  [47] rstudioapi_0.14             yaml_2.3.7                 
#>  [49] affy_1.78.0                 doParallel_1.0.17          
#>  [51] codetools_0.2-19            blogdown_1.18.1            
#>  [53] plyr_1.8.8                  lattice_0.21-8             
#>  [55] Biobase_2.60.0              withr_2.5.0                
#>  [57] evaluate_0.21               zip_2.3.0                  
#>  [59] circlize_0.4.15             BiocManager_1.30.21        
#>  [61] affyio_1.70.0               pillar_1.9.0               
#>  [63] MatrixGenerics_1.12.2       foreach_1.5.2              
#>  [65] stats4_4.3.0                MSnbase_2.26.0             
#>  [67] MALDIquant_1.22.1           ncdf4_1.21                 
#>  [69] generics_0.1.3              vroom_1.6.3                
#>  [71] rprojroot_2.0.3             RCurl_1.98-1.12            
#>  [73] S4Vectors_0.38.1            hms_1.1.3                  
#>  [75] munsell_0.5.0               scales_1.2.1               
#>  [77] glue_1.6.2                  tools_4.3.0                
#>  [79] mzID_1.38.0                 vsn_3.68.0                 
#>  [81] mzR_2.34.0                  openxlsx_4.2.5.2           
#>  [83] XML_3.99-0.14               grid_4.3.0                 
#>  [85] impute_1.74.1               MsCoreUtils_1.12.0         
#>  [87] colorspace_2.1-0            GenomeInfoDbData_1.2.10    
#>  [89] cli_3.6.1                   fansi_1.0.4                
#>  [91] S4Arrays_1.0.4              ComplexHeatmap_2.16.0      
#>  [93] pcaMethods_1.92.0           gtable_0.3.3               
#>  [95] sass_0.4.6                  digest_0.6.31              
#>  [97] BiocGenerics_0.46.0         rjson_0.2.21               
#>  [99] htmltools_0.5.5             lifecycle_1.0.3            
#> [101] here_1.0.1                  Rdisop_1.60.0              
#> [103] GlobalOptions_0.1.2         bit64_4.0.5                
#> [105] MASS_7.3-58.4
```
