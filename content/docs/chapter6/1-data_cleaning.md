---
date: "2019-05-05T00:00:00+01:00"
title: "Data cleaning"
linktitle: Data cleaning
author: admin
type: book
weight: 1
commentable: true
---




## Data preparation

We just use the dataset which are from [this step](https://tidymass.github.io/tidymass/articles/explore_data.html).


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
load("data_cleaning/POS/object_pos")
load("data_cleaning/NEG/object_neg")
```
Change batch to character.


```r
object_pos <- 
  object_pos %>% 
  activate_mass_dataset(what = "sample_info") %>% 
  dplyr::mutate(batch = as.character(batch))

object_neg <- 
  object_neg %>% 
  activate_mass_dataset(what = "sample_info") %>% 
  dplyr::mutate(batch = as.character(batch))
```


```r
object_pos
#> -------------------- 
#> massdataset version: 0.99.8 
#> -------------------- 
#> 1.expression_data:[ 10149 x 259 data.frame]
#> 2.sample_info:[ 259 x 6 data.frame]
#> 259 samples:sample_06 sample_103 sample_11 ... sample_QC_38 sample_QC_39
#> 3.variable_info:[ 10149 x 3 data.frame]
#> 10149 variables:M70T73_POS M70T53_POS M70T183_POS ... M923T55_POS M992T641_POS
#> 4.sample_info_note:[ 6 x 2 data.frame]
#> 5.variable_info_note:[ 3 x 2 data.frame]
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 3 processings in total
#> create_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset create_mass_dataset() 2022-02-22 16:37:06
#> process_data ---------- 
#>         Package Function.used                Time
#> 1 massprocesser  process_data 2022-02-22 16:36:42
#> mutate ---------- 
#>       Package Function.used                Time
#> 1 massdataset      mutate() 2023-08-30 23:09:11
```


```r
object_neg
#> -------------------- 
#> massdataset version: 0.99.8 
#> -------------------- 
#> 1.expression_data:[ 8804 x 259 data.frame]
#> 2.sample_info:[ 259 x 6 data.frame]
#> 259 samples:sample_06 sample_103 sample_11 ... sample_QC_38 sample_QC_39
#> 3.variable_info:[ 8804 x 3 data.frame]
#> 8804 variables:M70T712_NEG M70T527_NEG M70T587_NEG ... M941T65_NEG M948T641_NEG
#> 4.sample_info_note:[ 6 x 2 data.frame]
#> 5.variable_info_note:[ 3 x 2 data.frame]
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 3 processings in total
#> create_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset create_mass_dataset() 2022-02-22 16:38:19
#> process_data ---------- 
#>         Package Function.used                Time
#> 1 massprocesser  process_data 2022-02-22 16:38:02
#> mutate ---------- 
#>       Package Function.used                Time
#> 1 massdataset      mutate() 2023-08-30 23:09:11
```

## Data quality assessment before data cleaning

Here, we can use the `massqc` package to [assess the data quality](https://tidymass.github.io/massqc/).

We can just use the `massqc_report()` function to get a html format quality assessment report.


```r
massqc::massqc_report(object = object_pos,
                      path = "data_cleaning/POS/data_quality_before_data_cleaning")
```

A html format report and pdf figures will be placed in the folder `data_cleaning/POS/data_quality_before_data_cleaning/Report`.

![](/docs/chapter6/figures/Screen-Shot-3.png)

The html report is below:

![](/docs/chapter6/figures/Screen-Shot-6.png)

Negative mode.


```r
massqc::massqc_report(object = object_neg, 
                      path = "data_cleaning/NEG/data_quality_before_data_cleaning")
```

The PCA score plot is used to show the batch effect of positive and negative dataset.

Positive mode:

![](/docs/chapter6/figures/Screen-Shot-4.png)
Negative mode:

![](/docs/chapter6/figures/Screen-Shot-5.png)

We can see that no matter in positive and negative mode, batch effect is serious.

## Remove noisy metabolic features

Remove variables which have MVs in more than 20% QC samples and in at lest 50% samples in control group or case group.

### Positive mode


```r
object_pos %>% 
  activate_mass_dataset(what = "sample_info") %>% 
  dplyr::count(group)
#>     group   n
#> 1    Case 110
#> 2 Control 110
#> 3      QC  39
```
MV percentage in QC samples.


```r
show_variable_missing_values(object = object_pos %>% 
                               activate_mass_dataset(what = "sample_info") %>% 
                               filter(class == "QC"), 
                             percentage = TRUE) +
  scale_size_continuous(range = c(0.01, 2))
```

<img src="/docs/chapter6/1-data_cleaning_files/figure-html/unnamed-chunk-8-1.svg" width="100%" />


```r
qc_id =
  object_pos %>%
  activate_mass_dataset(what = "sample_info") %>%
  filter(class == "QC") %>%
  pull(sample_id)

control_id =
  object_pos %>%
  activate_mass_dataset(what = "sample_info") %>%
  filter(group == "Control") %>%
  pull(sample_id)

case_id =
  object_pos %>%
  activate_mass_dataset(what = "sample_info") %>%
  filter(group == "Case") %>%
  pull(sample_id)

object_pos =
  object_pos %>%
  mutate_variable_na_freq(according_to_samples = qc_id) %>%
  mutate_variable_na_freq(according_to_samples = control_id) %>%
  mutate_variable_na_freq(according_to_samples = case_id)

head(extract_variable_info(object_pos))
#>   variable_id       mz        rt    na_freq na_freq.1 na_freq.2
#> 1  M70T73_POS 70.04074  73.31705 0.28205128 0.6000000 0.4727273
#> 2  M70T53_POS 70.06596  52.78542 0.00000000 0.1454545 0.0000000
#> 3 M70T183_POS 70.19977 182.87981 0.00000000 0.6636364 0.7454545
#> 4 M70T527_POS 70.36113 526.76657 0.02564103 0.1818182 0.3000000
#> 5 M71T695_POS 70.56911 694.84592 0.02564103 0.6454545 0.5545455
#> 6 M71T183_POS 70.75034 182.77790 0.05128205 0.7272727 0.7909091
```

Remove variables.


```r
object_pos <- 
  object_pos %>% 
  activate_mass_dataset(what = "variable_info") %>%
  filter(na_freq < 0.2 & (na_freq.1 < 0.5 | na_freq.2 < 0.5))
object_pos
#> -------------------- 
#> massdataset version: 0.99.8 
#> -------------------- 
#> 1.expression_data:[ 5101 x 259 data.frame]
#> 2.sample_info:[ 259 x 6 data.frame]
#> 259 samples:sample_06 sample_103 sample_11 ... sample_QC_38 sample_QC_39
#> 3.variable_info:[ 5101 x 6 data.frame]
#> 5101 variables:M70T53_POS M70T527_POS M71T775_POS ... M836T610_POS M836T759_POS
#> 4.sample_info_note:[ 6 x 2 data.frame]
#> 5.variable_info_note:[ 6 x 2 data.frame]
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 5 processings in total
#> create_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset create_mass_dataset() 2022-02-22 16:37:06
#> process_data ---------- 
#>         Package Function.used                Time
#> 1 massprocesser  process_data 2022-02-22 16:36:42
#> mutate ---------- 
#>       Package Function.used                Time
#> 1 massdataset      mutate() 2023-08-30 23:09:11
#> mutate_variable_na_freq ---------- 
#>       Package             Function.used                       Time
#> 1 massdataset mutate_variable_na_freq() 2023-08-30 23:09:18.894398
#> 2 massdataset mutate_variable_na_freq() 2023-08-30 23:09:19.168037
#> 3 massdataset mutate_variable_na_freq() 2023-08-30 23:09:19.470392
#> filter ---------- 
#>       Package Function.used                Time
#> 1 massdataset      filter() 2023-08-30 23:09:22
```

Only 5,101 variables left.

### Negative mode


```r
object_neg %>% 
  activate_mass_dataset(what = "sample_info") %>% 
  dplyr::count(group)
#>     group   n
#> 1    Case 110
#> 2 Control 110
#> 3      QC  39
```

MV percentage in QC samples.


```r
show_variable_missing_values(object = object_neg %>% 
                               activate_mass_dataset(what = "sample_info") %>% 
                               filter(class == "QC"), 
                             percentage = TRUE) +
  scale_size_continuous(range = c(0.01, 2))
```

<img src="/docs/chapter6/1-data_cleaning_files/figure-html/unnamed-chunk-12-1.svg" width="100%" />


```r
qc_id =
  object_neg %>%
  activate_mass_dataset(what = "sample_info") %>%
  filter(class == "QC") %>%
  pull(sample_id)

control_id =
  object_neg %>%
  activate_mass_dataset(what = "sample_info") %>%
  filter(group == "Control") %>%
  pull(sample_id)

case_id =
  object_neg %>%
  activate_mass_dataset(what = "sample_info") %>%
  filter(group == "Case") %>%
  pull(sample_id)

object_neg =
  object_neg %>%
  mutate_variable_na_freq(according_to_samples = qc_id) %>%
  mutate_variable_na_freq(according_to_samples = control_id) %>%
  mutate_variable_na_freq(according_to_samples = case_id)

head(extract_variable_info(object_neg))
#>   variable_id       mz        rt    na_freq   na_freq.1   na_freq.2
#> 1 M70T712_NEG 70.05911 711.97894 0.05128205 0.109090909 0.018181818
#> 2 M70T527_NEG 70.13902 526.85416 0.33333333 0.509090909 0.618181818
#> 3 M70T587_NEG 70.31217 587.25330 0.00000000 0.009090909 0.009090909
#> 4  M70T47_NEG 70.33835  46.57537 0.84615385 0.936363636 0.090909091
#> 5 M71T587_NEG 70.56315 587.02570 0.17948718 0.145454545 0.163636364
#> 6 M71T641_NEG 70.70657 641.16672 0.10256410 0.063636364 0.072727273
```

Remove variables.


```r
object_neg <- 
  object_neg %>% 
  activate_mass_dataset(what = "variable_info") %>%
  filter(na_freq < 0.2 & (na_freq.1 < 0.5 | na_freq.2 < 0.5))
object_neg
#> -------------------- 
#> massdataset version: 0.99.8 
#> -------------------- 
#> 1.expression_data:[ 4104 x 259 data.frame]
#> 2.sample_info:[ 259 x 6 data.frame]
#> 259 samples:sample_06 sample_103 sample_11 ... sample_QC_38 sample_QC_39
#> 3.variable_info:[ 4104 x 6 data.frame]
#> 4104 variables:M70T712_NEG M70T587_NEG M71T587_NEG ... M884T57_NEG M899T56_NEG
#> 4.sample_info_note:[ 6 x 2 data.frame]
#> 5.variable_info_note:[ 6 x 2 data.frame]
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 5 processings in total
#> create_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset create_mass_dataset() 2022-02-22 16:38:19
#> process_data ---------- 
#>         Package Function.used                Time
#> 1 massprocesser  process_data 2022-02-22 16:38:02
#> mutate ---------- 
#>       Package Function.used                Time
#> 1 massdataset      mutate() 2023-08-30 23:09:11
#> mutate_variable_na_freq ---------- 
#>       Package             Function.used                       Time
#> 1 massdataset mutate_variable_na_freq() 2023-08-30 23:09:24.869972
#> 2 massdataset mutate_variable_na_freq() 2023-08-30 23:09:25.134699
#> 3 massdataset mutate_variable_na_freq() 2023-08-30 23:09:25.375996
#> filter ---------- 
#>       Package Function.used                Time
#> 1 massdataset      filter() 2023-08-30 23:09:27
```
4104 features left.


## Filter outlier samples

We can use the `detect_outlier()` to find the outlier samples.

More information about how to detect outlier samples can be found [here](https://privefl.github.io/blog/detecting-outlier-samples-in-pca/).

### Positive mode


```r
massdataset::show_sample_missing_values(object = object_pos,
                                        color_by = "group",
                                        order_by = "injection.order",
                                        percentage = TRUE) +
  theme(axis.text.x = element_text(size = 2)) +
  scale_size_continuous(range = c(0.1, 2)) +
  ggsci::scale_color_aaas()
```

<img src="/docs/chapter6/1-data_cleaning_files/figure-html/unnamed-chunk-15-1.svg" width="100%" />

Detect outlier samples.


```r
outlier_samples =
  object_pos %>%
  `+`(1) %>% 
  log(2) %>%
  scale() %>%
  detect_outlier()

outlier_samples
#> -------------------- 
#> masscleaner 
#> -------------------- 
#> 1 according_to_na : 0 outlier samples.
#> 2 according_to_pc_sd : 0 outlier samples.
#> 3 according_to_pc_mad : 0 outlier samples.
#> 4 accordint_to_distance : 0 outlier samples.
#> extract all outlier table using extract_outlier_table()
```


```r

outlier_table <-
extract_outlier_table(outlier_samples)

outlier_table %>% 
  head()
#>            according_to_na pc_sd pc_mad accordint_to_distance
#> sample_06            FALSE FALSE  FALSE                 FALSE
#> sample_103           FALSE FALSE  FALSE                 FALSE
#> sample_11            FALSE FALSE  FALSE                 FALSE
#> sample_112           FALSE FALSE  FALSE                 FALSE
#> sample_117           FALSE FALSE  FALSE                 FALSE
#> sample_12            FALSE FALSE  FALSE                 FALSE

outlier_table %>% 
  apply(1, function(x){
    sum(x)
  }) %>% 
  `>`(0) %>% 
  which()
#> named integer(0)
```

No outlier samples in positive mode.

### Negative mode


```r
massdataset::show_sample_missing_values(object = object_neg,
                                        color_by = "group",
                                        order_by = "injection.order",
                                        percentage = TRUE) +
  theme(axis.text.x = element_text(size = 2)) +
  scale_size_continuous(range = c(0.1, 2)) +
  ggsci::scale_color_aaas()
```

<img src="/docs/chapter6/1-data_cleaning_files/figure-html/unnamed-chunk-18-1.svg" width="100%" />

Detect outlier samples.


```r
outlier_samples =
  object_neg %>%
  `+`(1) %>% 
  log(2) %>%
  scale() %>%
  detect_outlier()

outlier_samples
#> -------------------- 
#> masscleaner 
#> -------------------- 
#> 1 according_to_na : 0 outlier samples.
#> 2 according_to_pc_sd : 0 outlier samples.
#> 3 according_to_pc_mad : 0 outlier samples.
#> 4 accordint_to_distance : 0 outlier samples.
#> extract all outlier table using extract_outlier_table()
```


```r

outlier_table <-
extract_outlier_table(outlier_samples)

outlier_table %>% 
  head()
#>            according_to_na pc_sd pc_mad accordint_to_distance
#> sample_06            FALSE FALSE  FALSE                 FALSE
#> sample_103           FALSE FALSE  FALSE                 FALSE
#> sample_11            FALSE FALSE  FALSE                 FALSE
#> sample_112           FALSE FALSE  FALSE                 FALSE
#> sample_117           FALSE FALSE  FALSE                 FALSE
#> sample_12            FALSE FALSE  FALSE                 FALSE

outlier_table %>% 
  apply(1, function(x){
    sum(x)
  }) %>% 
  `>`(0) %>% 
  which()
#> named integer(0)
```

No outlier samples in negative mode.

### Missing value imputation


```r
get_mv_number(object_pos)
#> [1] 148965
object_pos <- 
  impute_mv(object = object_pos, method = "knn")
#> Cluster size 4983 broken into 88 4895 
#> Done cluster 88 
#> Cluster size 4895 broken into 4497 398 
#> Cluster size 4497 broken into 3737 760 
#> Cluster size 3737 broken into 2703 1034 
#> Cluster size 2703 broken into 1706 997 
#> Cluster size 1706 broken into 1240 466 
#> Done cluster 1240 
#> Done cluster 466 
#> Done cluster 1706 
#> Done cluster 997 
#> Done cluster 2703 
#> Done cluster 1034 
#> Done cluster 3737 
#> Done cluster 760 
#> Done cluster 4497 
#> Done cluster 398 
#> Done cluster 4895

get_mv_number(object_pos)
#> [1] 0
```



```r
get_mv_number(object_neg)
#> [1] 146427

object_neg <- 
  impute_mv(object = object_neg, method = "knn")
#> Cluster size 4006 broken into 3965 41 
#> Cluster size 3965 broken into 3743 222 
#> Cluster size 3743 broken into 505 3238 
#> Done cluster 505 
#> Cluster size 3238 broken into 2519 719 
#> Cluster size 2519 broken into 1721 798 
#> Cluster size 1721 broken into 676 1045 
#> Done cluster 676 
#> Done cluster 1045 
#> Done cluster 1721 
#> Done cluster 798 
#> Done cluster 2519 
#> Done cluster 719 
#> Done cluster 3238 
#> Done cluster 3743 
#> Done cluster 222 
#> Done cluster 3965 
#> Done cluster 41

get_mv_number(object_neg)
#> [1] 0
```

### Data normalization and integration

### Positive mode


```r
object_pos <- 
  normalize_data(object_pos, method = "median")

object_pos2 <- 
  integrate_data(object_pos, method = "subject_median")
```


```r
object_pos2 %>% 
  `+`(1) %>% 
  log(2) %>% 
  massqc::massqc_pca(color_by = "batch", line = FALSE)
```

<img src="/docs/chapter6/1-data_cleaning_files/figure-html/unnamed-chunk-24-1.svg" width="100%" />

### Negative mode


```r
object_neg <- 
  normalize_data(object_neg, method = "median")

object_neg2 <- 
  integrate_data(object_neg, method = "subject_median")
```


```r
object_neg2 %>% 
  `+`(1) %>% 
  log(2) %>% 
  massqc::massqc_pca(color_by = "batch", line = FALSE)
```

<img src="/docs/chapter6/1-data_cleaning_files/figure-html/unnamed-chunk-26-1.svg" width="100%" />

Save data for subsequent analysis.


```r
save(object_pos2, file = "data_cleaning/POS/object_pos2")
save(object_neg2, file = "data_cleaning/NEG/object_neg2")
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
#>  [45] parallelly_1.36.0           svglite_2.1.1              
#>  [47] ncdf4_1.21                  codetools_0.2-19           
#>  [49] DelayedArray_0.26.3         ggforce_0.4.1              
#>  [51] tidyselect_1.2.0            shape_1.4.6                
#>  [53] farver_2.1.1                viridis_0.6.3              
#>  [55] matrixStats_1.0.0           base64enc_0.1-3            
#>  [57] jsonlite_1.8.5              GetoptLong_1.0.5           
#>  [59] multtest_2.56.0             e1071_1.7-13               
#>  [61] tidygraph_1.2.3             Formula_1.2-5              
#>  [63] survival_3.5-5              iterators_1.0.14           
#>  [65] systemfonts_1.0.4           foreach_1.5.2              
#>  [67] progress_1.2.2              tools_4.3.0                
#>  [69] glue_1.6.2                  rARPACK_0.11-0             
#>  [71] gridExtra_2.3               xfun_0.39                  
#>  [73] here_1.0.1                  MatrixGenerics_1.12.2      
#>  [75] GenomeInfoDb_1.36.0         withr_2.5.0                
#>  [77] BiocManager_1.30.21         fastmap_1.1.1              
#>  [79] fansi_1.0.4                 blogdown_1.18.1            
#>  [81] digest_0.6.31               R6_2.5.1                   
#>  [83] colorspace_2.1-0            ggsci_3.0.0                
#>  [85] utf8_1.2.3                  generics_0.1.3             
#>  [87] data.table_1.14.8           corpcor_1.6.10             
#>  [89] robustbase_0.95-1           class_7.3-21               
#>  [91] graphlayouts_1.0.0          prettyunits_1.1.1          
#>  [93] httr_1.4.6                  htmlwidgets_1.6.2          
#>  [95] S4Arrays_1.0.4              pkgconfig_2.0.3            
#>  [97] gtable_0.3.3                robust_0.7-1               
#>  [99] impute_1.74.1               MassSpecWavelet_1.66.0     
#> [101] XVector_0.40.0              furrr_0.3.1                
#> [103] pcaPP_2.0-3                 htmltools_0.5.5            
#> [105] bookdown_0.34               MALDIquant_1.22.1          
#> [107] clue_0.3-64                 scales_1.2.1               
#> [109] png_0.1-8                   knitr_1.43                 
#> [111] rstudioapi_0.14             reshape2_1.4.4             
#> [113] tzdb_0.4.0                  rjson_0.2.21               
#> [115] checkmate_2.2.0             ggcorrplot_0.1.4           
#> [117] proxy_0.4-27                cachem_1.0.8               
#> [119] GlobalOptions_0.1.2         stringr_1.5.0              
#> [121] parallel_4.3.0              foreign_0.8-84             
#> [123] mzID_1.38.0                 vsn_3.68.0                 
#> [125] pillar_1.9.0                vctrs_0.6.2                
#> [127] MsFeatures_1.8.0            RANN_2.6.1                 
#> [129] pcaMethods_1.92.0           randomForest_4.7-1.1       
#> [131] cluster_2.1.4               htmlTable_2.4.1            
#> [133] evaluate_0.21               readr_2.1.4                
#> [135] mvtnorm_1.2-2               cli_3.6.1                  
#> [137] compiler_4.3.0              rlang_1.1.1                
#> [139] crayon_1.5.2                rngtools_1.5.2             
#> [141] Rdisop_1.60.0               rrcov_1.7-3                
#> [143] labeling_0.4.2              affy_1.78.0                
#> [145] plyr_1.8.8                  stringi_1.7.12             
#> [147] viridisLite_0.4.2           Biostrings_2.68.1          
#> [149] munsell_0.5.0               lazyeval_0.2.2             
#> [151] fit.models_0.64             Matrix_1.5-4               
#> [153] hms_1.1.3                   patchwork_1.1.2            
#> [155] future_1.32.0               KEGGREST_1.40.0            
#> [157] highr_0.10                  SummarizedExperiment_1.30.2
#> [159] igraph_1.4.3                affyio_1.70.0              
#> [161] bslib_0.5.0                 DEoptimR_1.0-14            
#> [163] readxl_1.4.2
```
