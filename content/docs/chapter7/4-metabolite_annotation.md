---
date: "2019-05-05T00:00:00+01:00"
title: "Metabolite annotation: An example"
linktitle: "4 Metabolite annotation: An example"
author: admin
type: book
weight: 4
commentable: true
---




## Data preparation

We just use the dataset which are from [previous step](https://tidymass.github.io/tidymass/articles/data_cleaning.html).


```r
library(tidymass)
#> Registered S3 method overwritten by 'Hmisc':
#>   method       from      
#>   vcov.default fit.models
#> ── Attaching packages ──────────────────────────────────────── tidymass 1.0.8 ──
#> ✔ massdataset   1.0.25     ✔ metid         1.2.29
#> ✔ massprocesser 1.0.10     ✔ masstools     1.0.10
#> ✔ masscleaner   1.0.11     ✔ dplyr         1.1.2 
#> ✔ massqc        1.0.6      ✔ ggplot2       3.4.2 
#> ✔ massstat      1.0.5      ✔ magrittr      2.0.3 
#> ✔ metpath       1.0.8
load("data_cleaning/POS/object_pos2")
load("data_cleaning/NEG/object_neg2")
```

## Add MS2 spectra data to `mass_dataset` class

Download the [MS2 data here](https://drive.google.com/file/d/1FY3x7q5i1g3oSLaVej__ZaZ4XSX-mWBQ/view?usp=sharing).

Uncompress it.

![](/docs/chapter7/figures/fig1.png)

### Positive mode


```r
object_pos2 <-
  mutate_ms2(
    object = object_pos2,
    column = "rp",
    polarity = "positive",
    ms1.ms2.match.mz.tol = 15,
    ms1.ms2.match.rt.tol = 30,
    path = "mgf_ms2_data/POS"
  )
#> Reading mgf data...
#> Reading mgf data...
#> Reading mgf data...
#> Reading mgf data...
#> 1042 out of 5101 variable have MS2 spectra.
#> Selecting the most intense MS2 spectrum for each peak...
```


```r
object_pos2
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
#> 6.ms2_data:[ 1042 variables x 951 MS2 spectra]
#> -------------------- 
#> Processing information
#> 9 processings in total
#> Latest 3 processings show
#> normalize_data ---------- 
#>       Package    Function.used                Time
#> 1 masscleaner normalize_data() 2023-08-30 23:10:01
#> integrate_data ---------- 
#>       Package    Function.used                Time
#> 1 masscleaner integrate_data() 2023-08-30 23:10:03
#> mutate_ms2 ---------- 
#>       Package Function.used                Time
#> 1 massdataset  mutate_ms2() 2023-09-02 10:24:42
```


```r
extract_ms2_data(object_pos2)
#> $`QEP_SGA_QC_posi_ms2_ce25_01.mgf;QEP_SGA_QC_posi_ms2_ce25_02.mgf;QEP_SGA_QC_posi_ms2_ce50_01.mgf;QEP_SGA_QC_posi_ms2_ce50_02.mgf`
#> -------------------- 
#> column: rp 
#> polarity: positive 
#> mz_tol: 15 
#> rt_tol (second): 30 
#> -------------------- 
#> 1042 variables:
#> M71T775_POS M72T53_POS M83T50_POS M84T57_POS M85T54_POS...
#> 951 MS2 spectra.
#> mz70.981170654297rt775.4286 mz72.081642150879rt53.6528862 mz82.945625305176rt49.238013 mz84.045127868652rt59.6895132 mz85.029016959043rt53.0835648...
```


### Negative mode


```r
object_neg2 <-
  mutate_ms2(
    object = object_neg2,
    column = "rp",
    polarity = "negative",
    ms1.ms2.match.mz.tol = 15,
    ms1.ms2.match.rt.tol = 30,
    path = "mgf_ms2_data/NEG"
  )
#> Reading mgf data...
#> Reading mgf data...
#> Reading mgf data...
#> Reading mgf data...
#> 1092 out of 4104 variable have MS2 spectra.
#> Selecting the most intense MS2 spectrum for each peak...
```


```r
object_neg2
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
#> 6.ms2_data:[ 1092 variables x 988 MS2 spectra]
#> -------------------- 
#> Processing information
#> 9 processings in total
#> Latest 3 processings show
#> normalize_data ---------- 
#>       Package    Function.used                Time
#> 1 masscleaner normalize_data() 2023-08-30 23:10:13
#> integrate_data ---------- 
#>       Package    Function.used                Time
#> 1 masscleaner integrate_data() 2023-08-30 23:10:14
#> mutate_ms2 ---------- 
#>       Package Function.used                Time
#> 1 massdataset  mutate_ms2() 2023-09-02 10:25:08
```


```r
extract_ms2_data(object_neg2)
#> $`QEP_SGA_QC_neg_ms2_ce25_01.mgf;QEP_SGA_QC_neg_ms2_ce25_02.mgf;QEP_SGA_QC_neg_ms2_ce50_01.mgf;QEP_SGA_QC_neg_ms2_ce50_02.mgf`
#> -------------------- 
#> column: rp 
#> polarity: negative 
#> mz_tol: 15 
#> rt_tol (second): 30 
#> -------------------- 
#> 1092 variables:
#> M71T51_NEG M73T74_NEG M75T52_NEG M80T299_NEG M80T232_NEG...
#> 988 MS2 spectra.
#> mz71.012359619141rt52.3270968 mz73.02799987793rt74.779476 mz75.007308959961rt24.1557228 mz79.955728954783rt301.268466 mz79.955834350356rt235.127328...
```

## Metabolite annotation

Metabolite annotation is based on the [`metid` package](https://tidymass.github.io/metid/).

### Download database

We need to download MS2 database from [`metid` website](https://tidymass.github.io/metid/articles/public_databases.html).

Here we download the `Michael Snyder RPLC databases`, `Orbitrap database` and `MoNA database`. And place them in a new folder named as `metabolite_annotation`.

![](/docs/chapter7/figures/fig2.png)

### Positive mode

### Annotate features using `snyder_database_rplc0.0.3`.


```r
load("metabolite_annotation/snyder_database_rplc0.0.3.rda")
snyder_database_rplc0.0.3
#> -----------Base information------------
#> Version:0.0.2
#> Source:MS
#> Link:http://snyderlab.stanford.edu/
#> Creater:Xiaotao Shen(shenxt1990@163.com)
#> With RT information
#> -----------Spectral information------------
#> 14 items of metabolite information:
#> Lab.ID; Compound.name; mz; RT; CAS.ID; HMDB.ID; KEGG.ID; Formula; mz.pos; mz.neg (top10)
#> 917 metabolites in total.
#> 356 metabolites with spectra in positive mode.
#> 534 metabolites with spectra in negative mode.
#> Collision energy in positive mode (number:):
#> Total number:2
#> NCE25; NCE50
#> Collision energy in negative mode:
#> Total number:2
#> NCE25; NCE50
```


```r
object_pos2 <-
  annotate_metabolites_mass_dataset(object = object_pos2, 
                                    ms1.match.ppm = 15, 
                                    rt.match.tol = 30, 
                                    polarity = "positive",
                                    database = snyder_database_rplc0.0.3)
```

### Annotate features using `orbitrap_database0.0.3`.


```r
load("metabolite_annotation/orbitrap_database0.0.3.rda")
orbitrap_database0.0.3
#> -----------Base information------------
#> Version:0.0.1
#> Source:NIST
#> Link:https://www.nist.gov/
#> Creater:Xiaotao Shen(shenxt1990@163.com)
#> Without RT informtaion
#> -----------Spectral information------------
#> 8 items of metabolite information:
#> Lab.ID; Compound.name; mz; RT; CAS.ID; HMDB.ID; KEGG.ID; Formula
#> 8360 metabolites in total.
#> 7103 metabolites with spectra in positive mode.
#> 3311 metabolites with spectra in negative mode.
#> Collision energy in positive mode (number:):
#> Total number:12
#> 10; 15; 45; 55; 5; 20; 30; 35; 40; 25
#> Collision energy in negative mode:
#> Total number:12
#> 10; 25; 5; 15; 20; 30; 50; 35; 40; 45
```


```r
object_pos2 <- 
  annotate_metabolites_mass_dataset(object = object_pos2, 
                                    ms1.match.ppm = 15, 
                                    polarity = "positive",
                                    database = orbitrap_database0.0.3)
```

### Annotate features using `mona_database0.0.3`.


```r
load("metabolite_annotation/mona_database0.0.3.rda")
orbitrap_database0.0.3
#> -----------Base information------------
#> Version:0.0.1
#> Source:NIST
#> Link:https://www.nist.gov/
#> Creater:Xiaotao Shen(shenxt1990@163.com)
#> Without RT informtaion
#> -----------Spectral information------------
#> 8 items of metabolite information:
#> Lab.ID; Compound.name; mz; RT; CAS.ID; HMDB.ID; KEGG.ID; Formula
#> 8360 metabolites in total.
#> 7103 metabolites with spectra in positive mode.
#> 3311 metabolites with spectra in negative mode.
#> Collision energy in positive mode (number:):
#> Total number:12
#> 10; 15; 45; 55; 5; 20; 30; 35; 40; 25
#> Collision energy in negative mode:
#> Total number:12
#> 10; 25; 5; 15; 20; 30; 50; 35; 40; 45
```


```r
object_pos2 <- 
  annotate_metabolites_mass_dataset(object = object_pos2, 
                                    ms1.match.ppm = 15, 
                                    polarity = "positive",
                                    database = mona_database0.0.3)
```

### Negative mode

### Annotate features using `snyder_database_rplc0.0.3`.


```r
object_neg2 <- 
  annotate_metabolites_mass_dataset(object = object_neg2, 
                                    ms1.match.ppm = 15, 
                                    rt.match.tol = 30,
                                    polarity = "negative",
                                    database = snyder_database_rplc0.0.3)
```

### Annotate features using `orbitrap_database0.0.3`.


```r
object_neg2 <- 
  annotate_metabolites_mass_dataset(object = object_neg2, 
                                    ms1.match.ppm = 15, 
                                    polarity = "negative",
                                    database = orbitrap_database0.0.3)
```

### Annotate features using `mona_database0.0.3`.


```r
object_neg2 <- 
  annotate_metabolites_mass_dataset(object = object_neg2, 
                                    ms1.match.ppm = 15, 
                                    polarity = "negative",
                                    database = mona_database0.0.3)
```



### Annotation result

The annotation result will assign into `mass_dataset` class as the `annotation_table` slot.


```r
head(extract_annotation_table(object = object_pos2))
#>    variable_id
#> 1 M100T160_POS
#> 2 M103T100_POS
#> 3 M103T100_POS
#> 4  M104T51_POS
#> 5 M113T187_POS
#> 6  M113T81_POS
#>                                                                                                                      ms2_files_id
#> 1 QEP_SGA_QC_posi_ms2_ce25_01.mgf;QEP_SGA_QC_posi_ms2_ce25_02.mgf;QEP_SGA_QC_posi_ms2_ce50_01.mgf;QEP_SGA_QC_posi_ms2_ce50_02.mgf
#> 2 QEP_SGA_QC_posi_ms2_ce25_01.mgf;QEP_SGA_QC_posi_ms2_ce25_02.mgf;QEP_SGA_QC_posi_ms2_ce50_01.mgf;QEP_SGA_QC_posi_ms2_ce50_02.mgf
#> 3 QEP_SGA_QC_posi_ms2_ce25_01.mgf;QEP_SGA_QC_posi_ms2_ce25_02.mgf;QEP_SGA_QC_posi_ms2_ce50_01.mgf;QEP_SGA_QC_posi_ms2_ce50_02.mgf
#> 4 QEP_SGA_QC_posi_ms2_ce25_01.mgf;QEP_SGA_QC_posi_ms2_ce25_02.mgf;QEP_SGA_QC_posi_ms2_ce50_01.mgf;QEP_SGA_QC_posi_ms2_ce50_02.mgf
#> 5 QEP_SGA_QC_posi_ms2_ce25_01.mgf;QEP_SGA_QC_posi_ms2_ce25_02.mgf;QEP_SGA_QC_posi_ms2_ce50_01.mgf;QEP_SGA_QC_posi_ms2_ce50_02.mgf
#> 6 QEP_SGA_QC_posi_ms2_ce25_01.mgf;QEP_SGA_QC_posi_ms2_ce25_02.mgf;QEP_SGA_QC_posi_ms2_ce50_01.mgf;QEP_SGA_QC_posi_ms2_ce50_02.mgf
#>                  ms2_spectrum_id           Compound.name    CAS.ID   HMDB.ID
#> 1 mz100.076248168945rt158.377638  N-Methyl-2-pyrrolidone  872-50-4      <NA>
#> 2   mz103.054814801682rt96.92601      Phenylacetaldehyde  122-78-1 HMDB06236
#> 3   mz103.054814801682rt96.92601 3-Amino-2-oxazolidinone   80-65-9      <NA>
#> 4  mz104.107467651367rt49.510314      5-Amino-1-pentanol 2508-29-4      <NA>
#> 5 mz113.060150146484rt188.406384    1,4-Cyclohexanedione      <NA>      <NA>
#> 6   mz113.035087585449rt77.20827                  URACIL      <NA>      <NA>
#>   KEGG.ID     Lab.ID     Adduct  mz.error mz.match.score RT.error
#> 1  C11118 MONA_11509     (M+H)+  1.335652      0.9960435       NA
#> 2  C00601    NO07389 (M+H-H2O)+  1.537004      0.9947640       NA
#> 3    <NA>    NO07231     (M+H)+ 11.537004      0.7439487       NA
#> 4    <NA>    NO07238     (M+H)+  1.169128      0.9969671       NA
#> 5    <NA> MONA_14519     (M+H)+  1.051626      0.9975454       NA
#> 6    <NA> MONA_18148     (M+H)+  1.275544      0.9963909       NA
#>   RT.match.score                  CE        SS Total.score   Database Level
#> 1             NA       35  (nominal) 0.6871252   0.8029696 MoNA_0.0.1     2
#> 2             NA                  10 0.5748835   0.7323387 NIST_0.0.1     2
#> 3             NA                  20 0.5020256   0.5927468 NIST_0.0.1     2
#> 4             NA                   5 0.5971697   0.7470937 NIST_0.0.1     2
#> 5             NA HCD (NCE 20-30-40%) 0.5401414   0.7116679 MoNA_0.0.1     2
#> 6             NA                  10 0.6889885   0.8042644 MoNA_0.0.1     2
```


```r
variable_info_pos <- 
extract_variable_info(object = object_pos2)
```


```r
head(variable_info_pos)
#>   variable_id       mz        rt    na_freq  na_freq.1  na_freq.2 Compound.name
#> 1  M70T53_POS 70.06596  52.78542 0.00000000 0.14545455 0.00000000          <NA>
#> 2 M70T527_POS 70.36113 526.76657 0.02564103 0.18181818 0.30000000          <NA>
#> 3 M71T775_POS 70.98125 775.44867 0.00000000 0.00000000 0.00000000          <NA>
#> 4 M71T669_POS 70.98125 668.52844 0.00000000 0.02727273 0.01818182          <NA>
#> 5 M71T715_POS 70.98125 714.74066 0.05128205 0.12727273 0.02727273          <NA>
#> 6  M71T54_POS 71.04999  54.45641 0.15384615 0.99090909 0.05454545          <NA>
#>   CAS.ID HMDB.ID KEGG.ID Lab.ID Adduct mz.error mz.match.score RT.error
#> 1   <NA>    <NA>    <NA>   <NA>   <NA>       NA             NA       NA
#> 2   <NA>    <NA>    <NA>   <NA>   <NA>       NA             NA       NA
#> 3   <NA>    <NA>    <NA>   <NA>   <NA>       NA             NA       NA
#> 4   <NA>    <NA>    <NA>   <NA>   <NA>       NA             NA       NA
#> 5   <NA>    <NA>    <NA>   <NA>   <NA>       NA             NA       NA
#> 6   <NA>    <NA>    <NA>   <NA>   <NA>       NA             NA       NA
#>   RT.match.score   CE SS Total.score Database Level
#> 1             NA <NA> NA          NA     <NA>    NA
#> 2             NA <NA> NA          NA     <NA>    NA
#> 3             NA <NA> NA          NA     <NA>    NA
#> 4             NA <NA> NA          NA     <NA>    NA
#> 5             NA <NA> NA          NA     <NA>    NA
#> 6             NA <NA> NA          NA     <NA>    NA
```


```r
table(variable_info_pos$Level)
#> 
#>   1   2 
#>  23 183
```


```r
table(variable_info_pos$Database)
#> 
#> MoNA_0.0.1   MS_0.0.2 NIST_0.0.1 
#>         78         23        105
```

Use the `ms2_plot_mass_dataset()` function to get the MS2 matching plot.


```r
ms2_plot_mass_dataset(object = object_pos2, 
                      variable_id = "M86T95_POS", 
                      database = mona_database0.0.3)
#> $M86T95_POS_1
```

<img src="/docs/chapter7/4-metabolite_annotation_files/figure-html/unnamed-chunk-23-1.png" width="100%" />

```
#> 
#> $M86T95_POS_2
```

<img src="/docs/chapter7/4-metabolite_annotation_files/figure-html/unnamed-chunk-23-2.png" width="100%" />

```
#> 
#> $M86T95_POS_3
```

<img src="/docs/chapter7/4-metabolite_annotation_files/figure-html/unnamed-chunk-23-3.png" width="100%" />


```r
ms2_plot_mass_dataset(object = object_pos2, 
                      variable_id = "M86T95_POS", 
                      database = mona_database0.0.3, 
                      interactive_plot = TRUE)
#> $M86T95_POS_1
#> 
#> $M86T95_POS_2
#> 
#> $M86T95_POS_3
```


```r
ms2_plot_mass_dataset(object = object_pos2, 
                      variable_id = "M147T54_POS", 
                      database = snyder_database_rplc0.0.3, 
                      interactive_plot = FALSE)
#> database may be wrong.
#> database may be wrong.
#> $M147T54_POS_1
```

<img src="/docs/chapter7/4-metabolite_annotation_files/figure-html/unnamed-chunk-25-1.png" width="100%" />

```
#> 
#> $M147T54_POS_2
```

<img src="/docs/chapter7/4-metabolite_annotation_files/figure-html/unnamed-chunk-25-2.png" width="100%" />

```
#> 
#> $M147T54_POS_3
```

<img src="/docs/chapter7/4-metabolite_annotation_files/figure-html/unnamed-chunk-25-3.png" width="100%" />

Save data for subsequent analysis.


```r
save(object_pos2, file = "metabolite_annotation/object_pos2")
save(object_neg2, file = "metabolite_annotation/object_neg2")
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
#>  [1] metid_1.2.29          metpath_1.0.8         ComplexHeatmap_2.16.0
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
#>  [13] globals_0.16.2              crosstalk_1.2.0            
#>  [15] backports_1.4.1             plotly_4.10.2              
#>  [17] openxlsx_4.2.5.2            limma_3.56.2               
#>  [19] Hmisc_5.1-0                 sass_0.4.6                 
#>  [21] rmarkdown_2.22              jquerylib_0.1.4            
#>  [23] yaml_2.3.7                  remotes_2.4.2              
#>  [25] doRNG_1.8.6                 zip_2.3.0                  
#>  [27] MsCoreUtils_1.12.0          pbapply_1.7-0              
#>  [29] RColorBrewer_1.1-3          zlibbioc_1.46.0            
#>  [31] GenomicRanges_1.52.0        purrr_1.0.1                
#>  [33] ggraph_2.1.0                itertools_0.1-3            
#>  [35] RCurl_1.98-1.12             nnet_7.3-18                
#>  [37] tweenr_2.0.2                circlize_0.4.15            
#>  [39] GenomeInfoDbData_1.2.10     IRanges_2.34.0             
#>  [41] ggrepel_0.9.3               listenv_0.9.0              
#>  [43] ellipse_0.4.5               RSpectra_0.16-1            
#>  [45] missForest_1.5              parallelly_1.36.0          
#>  [47] ncdf4_1.21                  codetools_0.2-19           
#>  [49] DelayedArray_0.26.3         ggforce_0.4.1              
#>  [51] tidyselect_1.2.0            shape_1.4.6                
#>  [53] farver_2.1.1                viridis_0.6.3              
#>  [55] matrixStats_1.0.0           base64enc_0.1-3            
#>  [57] jsonlite_1.8.5              GetoptLong_1.0.5           
#>  [59] multtest_2.56.0             e1071_1.7-13               
#>  [61] ellipsis_0.3.2              tidygraph_1.2.3            
#>  [63] Formula_1.2-5               survival_3.5-5             
#>  [65] iterators_1.0.14            foreach_1.5.2              
#>  [67] progress_1.2.2              tools_4.3.0                
#>  [69] glue_1.6.2                  rARPACK_0.11-0             
#>  [71] gridExtra_2.3               xfun_0.39                  
#>  [73] here_1.0.1                  MatrixGenerics_1.12.2      
#>  [75] GenomeInfoDb_1.36.0         withr_2.5.0                
#>  [77] BiocManager_1.30.21         fastmap_1.1.1              
#>  [79] fansi_1.0.4                 blogdown_1.18.1            
#>  [81] digest_0.6.31               R6_2.5.1                   
#>  [83] colorspace_2.1-0            utf8_1.2.3                 
#>  [85] generics_0.1.3              data.table_1.14.8          
#>  [87] corpcor_1.6.10              robustbase_0.95-1          
#>  [89] class_7.3-21                graphlayouts_1.0.0         
#>  [91] prettyunits_1.1.1           httr_1.4.6                 
#>  [93] htmlwidgets_1.6.2           S4Arrays_1.0.4             
#>  [95] pkgconfig_2.0.3             gtable_0.3.3               
#>  [97] robust_0.7-1                impute_1.74.1              
#>  [99] MassSpecWavelet_1.66.0      XVector_0.40.0             
#> [101] furrr_0.3.1                 pcaPP_2.0-3                
#> [103] htmltools_0.5.5             bookdown_0.34              
#> [105] MALDIquant_1.22.1           clue_0.3-64                
#> [107] scales_1.2.1                png_0.1-8                  
#> [109] knitr_1.43                  rstudioapi_0.14            
#> [111] reshape2_1.4.4              tzdb_0.4.0                 
#> [113] rjson_0.2.21                checkmate_2.2.0            
#> [115] ggcorrplot_0.1.4            proxy_0.4-27               
#> [117] cachem_1.0.8                GlobalOptions_0.1.2        
#> [119] stringr_1.5.0               parallel_4.3.0             
#> [121] foreign_0.8-84              mzID_1.38.0                
#> [123] vsn_3.68.0                  pillar_1.9.0               
#> [125] vctrs_0.6.2                 MsFeatures_1.8.0           
#> [127] RANN_2.6.1                  pcaMethods_1.92.0          
#> [129] randomForest_4.7-1.1        cluster_2.1.4              
#> [131] htmlTable_2.4.1             evaluate_0.21              
#> [133] readr_2.1.4                 mvtnorm_1.2-2              
#> [135] cli_3.6.1                   compiler_4.3.0             
#> [137] rlang_1.1.1                 crayon_1.5.2               
#> [139] rngtools_1.5.2              Rdisop_1.60.0              
#> [141] rrcov_1.7-3                 labeling_0.4.2             
#> [143] affy_1.78.0                 plyr_1.8.8                 
#> [145] stringi_1.7.12              viridisLite_0.4.2          
#> [147] Biostrings_2.68.1           munsell_0.5.0              
#> [149] lazyeval_0.2.2              fit.models_0.64            
#> [151] Matrix_1.5-4                hms_1.1.3                  
#> [153] patchwork_1.1.2             future_1.32.0              
#> [155] KEGGREST_1.40.0             highr_0.10                 
#> [157] SummarizedExperiment_1.30.2 igraph_1.4.3               
#> [159] affyio_1.70.0               bslib_0.5.0                
#> [161] DEoptimR_1.0-14             readxl_1.4.2
```
