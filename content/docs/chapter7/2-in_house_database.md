---
date: "2019-05-05T00:00:00+01:00"
title: "Construct in-house MS2 datbase"
linktitle: "2 In-house MS2 datbase"
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

Download the data [here](https://github.com/jaspershen/demoData/tree/master/inst/database_construction). and then put all of them in the "database_construction" folder.

Then there will be a folder named as `database_construction` in your work directory like below figure shows:

![](/docs/chapter7/figures/Screen-Shot-2021-02-26-9.22.52-PM.png)
Then we run `construct_database()` function and then we can get the database.

```r
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


```r
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


```r
save(test.database, file = "test.database")
```

> If you save the `test.database` as a different name, it will be a error when you use it.

## MS1 database

If you do not have MS2 data, you can also use `construct_database()` function to construct MS1 database. 

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
#> [1] stats4    stats     graphics  grDevices utils     datasets  methods  
#> [8] base     
#> 
#> other attached packages:
#>  [1] MSnbase_2.26.0      ProtGenerics_1.32.0 S4Vectors_0.38.1   
#>  [4] mzR_2.34.0          Rcpp_1.0.10         Biobase_2.60.0     
#>  [7] BiocGenerics_0.46.0 ggplot2_3.4.2       massdataset_1.0.25 
#> [10] dplyr_1.1.2         magrittr_2.0.3      masstools_1.0.10   
#> [13] metid_1.2.30       
#> 
#> loaded via a namespace (and not attached):
#>   [1] RColorBrewer_1.1-3          rstudioapi_0.14            
#>   [3] jsonlite_1.8.5              shape_1.4.6                
#>   [5] MALDIquant_1.22.1           rmarkdown_2.22             
#>   [7] GlobalOptions_0.1.2         zlibbioc_1.46.0            
#>   [9] vctrs_0.6.2                 RCurl_1.98-1.12            
#>  [11] blogdown_1.18.1             htmltools_0.5.5            
#>  [13] S4Arrays_1.0.4              progress_1.2.2             
#>  [15] cellranger_1.1.0            mzID_1.38.0                
#>  [17] sass_0.4.6                  parallelly_1.36.0          
#>  [19] bslib_0.5.0                 htmlwidgets_1.6.2          
#>  [21] plyr_1.8.8                  impute_1.74.1              
#>  [23] plotly_4.10.2               cachem_1.0.8               
#>  [25] lifecycle_1.0.3             iterators_1.0.14           
#>  [27] pkgconfig_2.0.3             Matrix_1.5-4               
#>  [29] R6_2.5.1                    fastmap_1.1.1              
#>  [31] GenomeInfoDbData_1.2.10     MatrixGenerics_1.12.2      
#>  [33] future_1.32.0               clue_0.3-64                
#>  [35] digest_0.6.31               pcaMethods_1.92.0          
#>  [37] colorspace_2.1-0            furrr_0.3.1                
#>  [39] rprojroot_2.0.3             GenomicRanges_1.52.0       
#>  [41] fansi_1.0.4                 httr_1.4.6                 
#>  [43] compiler_4.3.0              here_1.0.1                 
#>  [45] remotes_2.4.2               bit64_4.0.5                
#>  [47] withr_2.5.0                 doParallel_1.0.17          
#>  [49] BiocParallel_1.34.2         MASS_7.3-58.4              
#>  [51] DelayedArray_0.26.3         rjson_0.2.21               
#>  [53] tools_4.3.0                 zip_2.3.0                  
#>  [55] glue_1.6.2                  grid_4.3.0                 
#>  [57] cluster_2.1.4               generics_0.1.3             
#>  [59] gtable_0.3.3                tzdb_0.4.0                 
#>  [61] preprocessCore_1.62.1       tidyr_1.3.0                
#>  [63] data.table_1.14.8           hms_1.1.3                  
#>  [65] utf8_1.2.3                  XVector_0.40.0             
#>  [67] foreach_1.5.2               pillar_1.9.0               
#>  [69] stringr_1.5.0               vroom_1.6.3                
#>  [71] limma_3.56.2                circlize_0.4.15            
#>  [73] lattice_0.21-8              bit_4.0.5                  
#>  [75] tidyselect_1.2.0            ComplexHeatmap_2.16.0      
#>  [77] pbapply_1.7-0               knitr_1.43                 
#>  [79] bookdown_0.34               IRanges_2.34.0             
#>  [81] SummarizedExperiment_1.30.2 Rdisop_1.60.0              
#>  [83] xfun_0.39                   matrixStats_1.0.0          
#>  [85] stringi_1.7.12              lazyeval_0.2.2             
#>  [87] yaml_2.3.7                  evaluate_0.21              
#>  [89] codetools_0.2-19            MsCoreUtils_1.12.0         
#>  [91] tibble_3.2.1                BiocManager_1.30.21        
#>  [93] cli_3.6.1                   affyio_1.70.0              
#>  [95] munsell_0.5.0               jquerylib_0.1.4            
#>  [97] GenomeInfoDb_1.36.0         readxl_1.4.2               
#>  [99] globals_0.16.2              png_0.1-8                  
#> [101] XML_3.99-0.14               parallel_4.3.0             
#> [103] readr_2.1.4                 prettyunits_1.1.1          
#> [105] bitops_1.0-7                listenv_0.9.0              
#> [107] viridisLite_0.4.2           scales_1.2.1               
#> [109] affy_1.78.0                 openxlsx_4.2.5.2           
#> [111] ncdf4_1.21                  purrr_1.0.1                
#> [113] crayon_1.5.2                GetoptLong_1.0.5           
#> [115] rlang_1.1.1                 vsn_3.68.0
```
