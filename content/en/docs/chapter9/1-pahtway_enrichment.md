---
date: "2019-05-05T00:00:00+01:00"
title: "Pathway enrichment"
linktitle: Pathway enrichment
author: admin
type: book
weight: 1
commentable: true
---



## Data preparation

Load the differential expressional metabolites.


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


```r
load("statistical_analysis/object_final")
```


```r
object_final
#> -------------------- 
#> massdataset version: 1.0.25 
#> -------------------- 
#> 1.expression_data:[ 291 x 259 data.frame]
#> 2.sample_info:[ 259 x 11 data.frame]
#> 259 samples:sample_06 sample_103 sample_11 ... sample_QC_38 sample_QC_39
#> 3.variable_info:[ 291 x 12 data.frame]
#> 291 variables:M86T95_POS M95T100_1_POS M100T160_POS ... M480T641_NEG M514T611_NEG
#> 4.sample_info_note:[ 11 x 2 data.frame]
#> 5.variable_info_note:[ 12 x 2 data.frame]
#> 6.ms2_data:[ 2084 variables x 1902 MS2 spectra]
#> -------------------- 
#> Processing information
#> 26 processings in total
#> Latest 3 processings show
#> slice_head ---------- 
#>       Package Function.used                       Time
#> 1 massdataset  slice_head() 2023-08-31 00:00:36.358056
#> 2 massdataset  slice_head()  2023-08-31 00:00:36.85759
#> mutate_fc ---------- 
#>       Package Function.used                Time
#> 1 massdataset   mutate_fc() 2023-08-31 00:00:37
#> mutate_p_value ---------- 
#>       Package    Function.used                Time
#> 1 massdataset mutate_p_value() 2023-08-31 00:00:37
```

## Pathway enrichment

All the results will be placed in a folder named as `pathway_enrichment`.


```r
dir.create(path = "pathway_enrichment", showWarnings = FALSE)
```



```r
diff_metabolites <-
  object_final %>% 
  activate_mass_dataset(what = "variable_info") %>% 
  filter(p_value_adjust < 0.05) %>% 
  extract_variable_info()
```


```r
head(diff_metabolites)
#>     variable_id        mz        rt    na_freq  na_freq.1  na_freq.2 na_freq_2
#> 1    M86T95_POS  86.09716  94.57264 0.02564103 0.55454545 0.29090909        NA
#> 2 M95T100_1_POS  95.04975  99.77637 0.00000000 0.00000000 0.00000000        NA
#> 3  M103T100_POS 103.05477  99.90601 0.00000000 0.00000000 0.00000000        NA
#> 4   M104T51_POS 104.10746  51.27993 0.00000000 0.07272727 0.00000000        NA
#> 5   M113T81_POS 113.03501  80.73506 0.00000000 0.00000000 0.00000000        NA
#> 6  M113T187_POS 113.06018 186.56470 0.02564103 0.01818182 0.02727273        NA
#>   na_freq.1_2 na_freq.2_2       fc      p_value p_value_adjust
#> 1          NA          NA 1.714629 3.034938e-20   4.702229e-19
#> 2          NA          NA 1.439791 6.761432e-31   3.935153e-29
#> 3          NA          NA 1.345809 5.215317e-19   6.898442e-18
#> 4          NA          NA 1.751085 2.695171e-08   1.188325e-07
#> 5          NA          NA 1.500756 5.966911e-22   1.335670e-20
#> 6          NA          NA 1.951417 1.848299e-17   1.854673e-16
#>          Compound.name    CAS.ID   HMDB.ID KEGG.ID     Lab.ID     Adduct
#> 1           Piperidine  110-89-4      <NA>  C01746  MONA_2852     (M+H)+
#> 2               Phenol  108-95-2      <NA>  D01960 MONA_18506     (M+H)+
#> 3   Phenylacetaldehyde  122-78-1 HMDB06236  C00601    NO07389 (M+H-H2O)+
#> 4   5-Amino-1-pentanol 2508-29-4      <NA>    <NA>    NO07238     (M+H)+
#> 5               URACIL      <NA>      <NA>    <NA> MONA_18148     (M+H)+
#> 6 1,4-Cyclohexanedione      <NA>      <NA>    <NA> MONA_14519     (M+H)+
#>   mz.error mz.match.score RT.error RT.match.score                  CE        SS
#> 1 1.746869      0.9932417       NA             NA                  30 0.6143541
#> 2 1.416428      0.9955515       NA             NA                  10 0.6102452
#> 3 1.537004      0.9947640       NA             NA                  10 0.5748835
#> 4 1.169128      0.9969671       NA             NA                   5 0.5971697
#> 5 1.275544      0.9963909       NA             NA                  10 0.6889885
#> 6 1.051626      0.9975454       NA             NA HCD (NCE 20-30-40%) 0.5401414
#>   Total.score   Database Level
#> 1   0.7564369 MoNA_0.0.1     2
#> 2   0.7547351 MoNA_0.0.1     2
#> 3   0.7323387 NIST_0.0.1     2
#> 4   0.7470937 NIST_0.0.1     2
#> 5   0.8042644 MoNA_0.0.1     2
#> 6   0.7116679 MoNA_0.0.1     2
```


### Load `KEGG` human pathway database


```r
data("kegg_hsa_pathway", package = "metpath")
kegg_hsa_pathway
#> ---------Pathway source&version---------
#> KEGG  &  2021-12-13
#> -----------Pathway information------------
#> 345  pathways
#> 334  pathways have genes
#> 0  pathways have proteins
#> 281  pathways have compounds
#> Pathway class (top 10): Metabolism; Carbohydrate metabolism;Metabolism; Lipid metabolism
```

```r
get_pathway_class(kegg_hsa_pathway)
#> # A tibble: 43 × 2
#>    class                                                                       n
#>    <chr>                                                                   <int>
#>  1 Cellular Processes; Cell growth and death                                   8
#>  2 Cellular Processes; Cell motility                                           1
#>  3 Cellular Processes; Cellular community - eukaryotes                         5
#>  4 Cellular Processes; Transport and catabolism                                7
#>  5 Environmental Information Processing; Membrane transport                    1
#>  6 Environmental Information Processing; Signal transduction                  26
#>  7 Environmental Information Processing; Signaling molecules and interact…     5
#>  8 Genetic Information Processing; Folding, sorting and degradation            7
#>  9 Genetic Information Processing; Replication and repair                      7
#> 10 Genetic Information Processing; Transcription                               3
#> # ℹ 33 more rows
```

Remove the disease pathways:


```r
#get the class of pathways
pathway_class = 
  metpath::pathway_class(kegg_hsa_pathway)
head(pathway_class)
#> $hsa00010
#> [1] "Metabolism; Carbohydrate metabolism"
#> 
#> $hsa00020
#> [1] "Metabolism; Carbohydrate metabolism"
#> 
#> $hsa00030
#> [1] "Metabolism; Carbohydrate metabolism"
#> 
#> $hsa00040
#> [1] "Metabolism; Carbohydrate metabolism"
#> 
#> $hsa00051
#> [1] "Metabolism; Carbohydrate metabolism"
#> 
#> $hsa00052
#> [1] "Metabolism; Carbohydrate metabolism"
```



```r
remain_idx =
  pathway_class %>%
  unlist() %>%
  stringr::str_detect("Disease") %>%
  `!`() %>%
  which()

remain_idx
#>   [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18
#>  [19]  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36
#>  [37]  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53  54
#>  [55]  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72
#>  [73]  73  74  75  76  77  78  79  80  81  82  83  84  85  90  91  92  93  94
#>  [91]  95  96  97  98  99 100 101 102 103 104 105 106 107 108 109 110 111 112
#> [109] 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130
#> [127] 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148
#> [145] 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166
#> [163] 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184
#> [181] 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202
#> [199] 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220
#> [217] 221 222 223 224 225 226 227 228 229 230 236 240 241 242 243 244 245 246
#> [235] 247 248 249 250 251 252 253 254
```



```r
pathway_database =
  kegg_hsa_pathway[remain_idx]
pathway_database
#> ---------Pathway source&version---------
#> KEGG  &  2021-12-13
#> -----------Pathway information------------
#> 242  pathways
#> 235  pathways have genes
#> 0  pathways have proteins
#> 191  pathways have compounds
#> Pathway class (top 10): Metabolism; Carbohydrate metabolism;Metabolism; Lipid metabolism
```



```r
kegg_id <-
  diff_metabolites$KEGG.ID 
kegg_id <-
  kegg_id[!is.na(kegg_id)]
kegg_id
#>  [1] "C01746" "D01960" "C00601" "C00153" "C01108" "C00906" "C10438" "C00300"
#>  [9] "C00407" "C14790" "C08493" "C02237" "C01575" "C00073" "C05842" "C00637"
#> [17] "C00079" "D00022" "C07481" "C12305" "C17846" "D00029" "C00399" "C08362"
#> [25] "C14214" "C01595" "C00319" "C00410" "C10523" "C01780" "C00762" "C00735"
#> [33] "C17337" "C01921" "C04230" "C06539" "C00186" "C01546" "C00490" "C02226"
#> [41] "C00064" "C06104" "C02612" "C07599" "C05593" "0"      "C01601" "C02656"
#> [49] "C00366" "C07130" "C05635" "C16038" "C08322" "C16308" "C10911" "C05498"
#> [57] "C05472" "C04555"
```


```r
result <- 
enrich_kegg(query_id = kegg_id, 
            query_type = "compound", 
            id_type = "KEGG",
            pathway_database = pathway_database, 
            p_cutoff = 0.05, 
            p_adjust_method = "BH", 
            threads = 3)
#> 191 pathways.
```

Check the result:


```r
result
#> ---------Pathway database&version---------
#> KEGG  &  1.0.8
#> -----------Enrichment result------------
#> 191  pathways are enriched
#> 11  pathways p-values < 0.05
#> Steroid hormone biosynthesis
#> Aldosterone-regulated sodium reabsorption
#> Valine, leucine and isoleucine biosynthesis
#> Aminoacyl-tRNA biosynthesis
#> Phenylalanine metabolism ... (only top 5 shows)
#> -----------Parameters------------
#>   Package Function.used                Time
#> 1 metpath enrich_kegg() 2023-08-31 00:08:43
```

## Plot to show pathway enrichment result


```r
enrich_bar_plot(object = result,
                x_axis = "p_value",
                cutoff = 0.05)
```

<img src="/docs/chapter9/1-pahtway_enrichment_files/figure-html/unnamed-chunk-15-1.png" width="100%" />


```r
enrich_scatter_plot(object = result, y_axis = "p_value", y_axis_cutoff = 0.05)
```

<img src="/docs/chapter9/1-pahtway_enrichment_files/figure-html/unnamed-chunk-16-1.png" width="100%" />


```r
enrich_network(
  object = result,
  point_size = "p_value",
  p_cutoff = 0.05,
  only_significant_pathway = TRUE
)
```

<img src="/docs/chapter9/1-pahtway_enrichment_files/figure-html/unnamed-chunk-17-1.png" width="100%" />

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
#> [137] labeling_0.4.2              affy_1.78.0                
#> [139] plyr_1.8.8                  stringi_1.7.12             
#> [141] viridisLite_0.4.2           Biostrings_2.68.1          
#> [143] munsell_0.5.0               lazyeval_0.2.2             
#> [145] fit.models_0.64             Matrix_1.5-4               
#> [147] hms_1.1.3                   patchwork_1.1.2            
#> [149] future_1.32.0               KEGGREST_1.40.0            
#> [151] highr_0.10                  SummarizedExperiment_1.30.2
#> [153] igraph_1.4.3                affyio_1.70.0              
#> [155] bslib_0.5.0                 DEoptimR_1.0-14            
#> [157] readxl_1.4.2
```
