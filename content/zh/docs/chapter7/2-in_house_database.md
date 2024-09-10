---
date: "2019-05-05T00:00:00+01:00"
title: "Construct in-house MS2 database"
linktitle: "2 In-house MS2 database"
author: admin
type: book
weight: 2
commentable: true
---



If you have in-house standards which have been acquired with MS2 spectra data, then you can construct the in-house MS2 spectra databases using the `metid` package. 

There are no specific requirements on how to run the LC/MS data for users. As the in-house database construction in metid is used for users to get the in-house databases for themselves (including m/z, retention time and MS/MS spectra of metabolites, for level 1 annotation (Sumner et al., 2007)), so the users just need to run the standards using the same column, LC-gradient, and MS settings with  their real samples in the lab

## Data preparation

Firstly, please transform your raw standard MS data (positive and negative modes) to mzXML format using [ProteoWizard](http://proteowizard.sourceforge.net/). The parameter setting is shown in the figure below:

![](/docs/chapter7/figures/parameter_setting_MS_conventer.png)

## Data organization

Secondly, please organize your standard information as a table, and output it in a csv or xlsx format. The format of standard information can refer to our demo data in `demoData` package. 

From column 1 to 11, the columns are "Lab.ID", "Compound.name", "mz", "RT", "CAS.ID", "HMDB.ID", "KEGG.ID", "Formula", "mz.pos", "mz.neg", "Submitter", respectively. It is OK if you have other information for the standards. As the demo data show, there are other additional information, namely "Family", "Sub.pathway" and "Note".

- Lab.ID: No duplicated. 

- mz: Accurate mass of compounds.

- RT: Retention time, unit is second.

- mz.pos: Mass to change ratio of compound in positive mode, for example, M+H. **You can set it as NA**.

- mz.neg: Mass to change ratio of compound in negative mode, for example, M-H. **You can set it as NA**.

- Submitter: The name of person or organization. **You can set it as NA**.

![](/docs/chapter7/figures/compound_information.PNG)

Then create a folder and put your mzXML format datasets (positive mode in 'POS' folder and negative mode in 'NEG' folder) and compound information in it. The mzXML file should have the collision energy in the name of each file. For example, `test_NCE25.mzXML`.

The names of the mzXML files should be like this: `xxx_NCE25.mzXML`.

![](/docs/chapter7/figures/database_construction.png)

## Run `construct_database()` function

Here we use the demo data from `demoData` package to show how to use the `construct_database()` function
to construct database.

We first prepare dataset.

Download the data [here](https://github.com/tidymass/demoData/tree/master/inst/database_construction). and then put all of them in the "database_construction" folder.

Then there will be a folder named as `database_construction` in your work directory like below figure shows:

![](/docs/chapter7/figures/Screen-Shot-2021-02-26-9.22.52-PM.png)
Then we run `construct_database()` function and then we can get the database.

``` r
library(metid)

new.path <- file.path("./database_construction")

test.database <- construct_database(
  path = new.path,
  version = "0.0.1",
  metabolite.info.name = "metabolite.info_RPLC.csv",
  source = "Michael Snyder lab",
  link = "http://snyderlab.stanford.edu/",
  creater = "Xiaotao Shen",
  email = "shenxt1990@163.com",
  rt = TRUE,
  mz.tol = 15,
  rt.tol = 30,
  threads = 3
)
```

The arguments of `construct_database()` can be found by `?construct_database()`.

test.database is a `databaseClass` object, you can print it to see its information.


``` r
test.database
#> -----------Base information------------
#> Version:0.0.1
#> Source:Michael Snyder lab
#> Link:http://snyderlab.stanford.edu/
#> Creater:Xiaotao Shen(shenxt1990@163.com)
#> With RT information
#> -----------Spectral information------------
#> 14 items of metabolite information:
#> Lab.ID; Compound.name; mz; RT; CAS.ID; HMDB.ID; KEGG.ID; Formula; mz.pos; mz.neg (top10)
#> 172 metabolites in total.
#> 41 metabolites with spectra in positive mode.
#> 45 metabolites with spectra in negative mode.
#> Collision energy in positive mode (number:):
#> Total number:1
#> NCE25
#> Collision energy in negative mode:
#> Total number:1
#> NCE25
```

> Note:
`test.database` is only a demo database (metIdentifyClass object). We will don't use it for next metabolite identification. Then please save this database in you local folder, please note that the saved file name and database name must be same. For example:


``` r
save(test.database, file = "test.database")
```

> If you save the `test.database` as a different name, it will be a error when you use it.

## MS1 database

If you do not have MS2 data, you can also use `construct_database()` function to construct MS1 database. 

## Session information


``` r
sessionInfo()
#> R version 4.4.1 (2024-06-14)
#> Platform: aarch64-apple-darwin20
#> Running under: macOS Sonoma 14.6.1
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
#>  [7] BiocGenerics_0.50.0 ggplot2_3.5.1       massdataset_1.0.34 
#> [10] dplyr_1.1.4         magrittr_2.0.3      masstools_1.0.13   
#> [13] metid_1.2.32       
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
#>  [45] httr_1.4.7                  abind_1.4-5                
#>  [47] compiler_4.4.1              here_1.0.1                 
#>  [49] remotes_2.5.0               bit64_4.0.5                
#>  [51] withr_3.0.1                 doParallel_1.0.17          
#>  [53] BiocParallel_1.38.0         MASS_7.3-61                
#>  [55] DelayedArray_0.30.1         rjson_0.2.22               
#>  [57] tools_4.4.1                 PSMatch_1.8.0              
#>  [59] zip_2.3.1                   glue_1.7.0                 
#>  [61] QFeatures_1.14.2            grid_4.4.1                 
#>  [63] cluster_2.1.6               reshape2_1.4.4             
#>  [65] generics_0.1.3              gtable_0.3.5               
#>  [67] tzdb_0.4.0                  preprocessCore_1.66.0      
#>  [69] tidyr_1.3.1                 data.table_1.16.0          
#>  [71] hms_1.1.3                   utf8_1.2.4                 
#>  [73] XVector_0.44.0              foreach_1.5.2              
#>  [75] pillar_1.9.0                stringr_1.5.1              
#>  [77] vroom_1.6.5                 limma_3.60.4               
#>  [79] circlize_0.4.16             lattice_0.22-6             
#>  [81] bit_4.0.5                   tidyselect_1.2.1           
#>  [83] ComplexHeatmap_2.20.0       pbapply_1.7-2              
#>  [85] knitr_1.48                  bookdown_0.40              
#>  [87] IRanges_2.38.1              SummarizedExperiment_1.34.0
#>  [89] xfun_0.47                   statmod_1.5.0              
#>  [91] matrixStats_1.3.0           stringi_1.8.4              
#>  [93] UCSC.utils_1.0.0            lazyeval_0.2.2             
#>  [95] yaml_2.3.10                 evaluate_0.24.0            
#>  [97] codetools_0.2-20            MsCoreUtils_1.16.1         
#>  [99] tibble_3.2.1                BiocManager_1.30.25        
#> [101] cli_3.6.3                   affyio_1.74.0              
#> [103] munsell_0.5.1               jquerylib_0.1.4            
#> [105] readxl_1.4.3                GenomeInfoDb_1.40.1        
#> [107] globals_0.16.3              png_0.1-8                  
#> [109] XML_3.99-0.17               parallel_4.4.1             
#> [111] readr_2.1.5                 prettyunits_1.2.0          
#> [113] AnnotationFilter_1.28.0     bitops_1.0-8               
#> [115] listenv_0.9.1               viridisLite_0.4.2          
#> [117] scales_1.3.0                affy_1.82.0                
#> [119] openxlsx_4.2.7              ncdf4_1.23                 
#> [121] purrr_1.0.2                 crayon_1.5.3               
#> [123] GetoptLong_1.0.5            rlang_1.1.4                
#> [125] vsn_3.72.0
```
