---
date: "2019-05-05T00:00:00+01:00"
title: "Construct public databases"
linktitle: "3 Public databases"
author: admin
type: book
weight: 3
commentable: true
---



## Introduction

If you want to construct databases for `metid`, you can use the [massDatabase](https://massdatabase.tidymass.org/) package. `massdatabase` is an R package that operates the online public databases and combines with other tools for streamlined compound annotation and pathway enrichment analysis. `massdatabase` is a flexible, simple, and powerful tool that can be installed on all platforms, allowing the users to leverage all the online public databases for biological function mining.

![](/docs/chapter7/figures/Figure_massdatabase.png)

## Install `massdatabase`

You can install `massdatabase` from [GitLab](https://gitlab.com/tidymass/massdatabase).


```r
if(!require(remotes)){
install.packages("remotes")
}
remotes::install_gitlab("jaspershen/massdatabase")
```

or [GitHub](https://github.com/tidymass/massdatabase)


```r
remotes::install_github("tidymass/massdatabase")
```

or tidymass.org


```r
source("https://www.tidymass.org/tidymass-packages/install_tidymass.txt")
install_tidymass(from = "tidymass.org", which_package = "massdatabase")
```

## BIGG database

[BIGG model](http://bigg.ucsd.edu/)is a knowledge base of genome-scale metabolic network reconstructions.

Download the BIGG universal metabolite database:


```r
library(massdatabase)
```


```r
download_bigg_universal_metabolite(path = "database_construction/", 
                                   sleep = 1)
```

Then read and convert it to `databaseClass` format.


```r
data <- 
  read_bigg_universal_metabolite(path = ".")
```

> It may take a while to download the database.

Then convert it to `databaseClass` format.


```r
bigg_database <- 
  convert_bigg_universal2metid(data = data, path = ".")
```


```r
bigg_database
```

You can save the database to use later.


```r
save(bigg_database, file = "database_construction/bigg_database")
```

## ChEBI database

Chemical Entities of Biological Interest ([ChEBI](https://www.ebi.ac.uk/chebi/)) is a freely available dictionary of molecular entities focused on ‘small’ chemical compounds.

Download the ChEBI compound database:


```r
library(massdatabase)
```


```r
download_chebi_compound(path = "database_construction/")
```

Then read and convert it to `databaseClass` format.


```r
data <-
  read_chebi_compound(path = "database_construction")
#> Reading data...
```

Then convert it to `databaseClass` format.


```r
chebi_database <-
  convert_chebi2metid(data = data, path = "database_construction")
#> No POS file in your /var/folders/m8/z8rq9r453dn9rk4zx4cw5_5h0000gn/T//Rtmp7oQCVk/file150b853bd6ecd
#> No NEG file in your /var/folders/m8/z8rq9r453dn9rk4zx4cw5_5h0000gn/T//Rtmp7oQCVk/file150b853bd6ecd
#> Reading metabolite information...
#> Reading positive MS2 data...
#> Reading negative MS2 data...
#> Matching metabolites with MS2 spectra (positive)...
#> Matching metabolites with MS2 spectra (negative)...
#> All done!
```


```r
chebi_database
#> -----------Base information------------
#> Version:2023-09-02
#> Source:CHEBI
#> Link:https://www.ebi.ac.uk/chebi/init.do
#> Creater:Xiaotao Shen(shenxt@stanford.edu)
#> Without RT informtaion
#> -----------Spectral information------------
#> 34 items of metabolite information:
#> Lab.ID; Compound.name; mz; RT; CAS.ID; HMDB.ID; KEGG.ID; Formula; mz.pos; mz.neg (top10)
#> 152379 metabolites in total.
#> 0 metabolites with spectra in positive mode.
#> 0 metabolites with spectra in negative mode.
#> Collision energy in positive mode (number:):
#> Total number:0
#> 
#> Collision energy in negative mode:
#> Total number:0
#> 
```

You can save the database to use later.


```r
save(chebi_database, file = "database_construction/chebi_database")
```

## FooDB database

[FooDB](https://foodb.ca/) is the world’s largest and most comprehensive resource on food constituents, chemistry and biology.

Download the FooDB database:


```r
library(massdatabase)
```


```r
download_foodb_compound(compound_id = "all", path = "database_construction/")
```

> It may take a while to download the database.

Then read and convert it to `databaseClass` format.


```r
data <- 
  read_foodb_compound(path = "database_construction")
```

Then convert it to `databaseClass` format.


```r
foodb_dataabse <- 
  convert_foodb2metid(data = data, path = "database_construction")
```


```r
foodb_dataabse
```

You can save the database to use later.


```r
save(foodb_dataabse, file = "database_construction/foodb_dataabse")
```


## GNPS database

The [GNPS](https://gnps-external.ucsd.edu/gnpslibrary) GNPS is a web-based mass spectrometry ecosystem that aims to be an open-access knowledge base for community-wide organization and sharing of raw, processed, or annotated fragmentation mass spectrometry data (MS/MS). GNPS aids in identification and discovery throughout the entire life cycle of data; from initial data acquisition/analysis to post publication.


Download the database:


```r
library(massdatabase)
```


```r
download_gnps_spectral_library(gnps_library = "HMDB", 
                               path = "database_construction")
```

The argument `gnps_library` should be one of the `GNPS Library` one this website.

https://gnps-external.ucsd.edu/gnpslibrary

![](/docs/chapter7/figures/Screen-Shot.png)

> It may take a while to download the database.

Then read and convert it to `databaseClass` format.


```r
data <-
  read_msp_data_gnps(file = "database_construction/HMDB.msp")
#> 
indexing HMDB.msp [========================================] 97.85GB/s, eta:  0s
                                                                                
#> 10% 20% 30% 40% 50% 60% 70% 80% 90% 100%
```

Then convert it to `databaseClass` format.


```r
gnps_database <- 
  convert_gnps2metid(data = data, path = "database_construction/")
#> Extracting MS1 inforamtion...
#> 1% 10% 20% 30% 40% 50% 60% 70% 80% 90% 100% Done.
#> Extracting MS2 inforamtion...
#> 1% 10% 20% 30% 40% 50% 60% 70% 80% 90% 100% Done.
#> Organizing...
#> Calculating accurate mass...
#> Done.
#> 1% 10% 20% 30% 40% 50% 60% 70% 80% 90% 100% No POS file in your /var/folders/m8/z8rq9r453dn9rk4zx4cw5_5h0000gn/T//Rtmp7oQCVk/file150b8571c5a3 
#> 
#> No NEG file in your /var/folders/m8/z8rq9r453dn9rk4zx4cw5_5h0000gn/T//Rtmp7oQCVk/file150b8571c5a3 
#> 
#> Reading metabolite information...
#> Reading positive MS2 data...
#> Reading negative MS2 data...
#> Matching metabolites with MS2 spectra (positive)...
#> Matching metabolites with MS2 spectra (negative)...
#> All done!
```


```r
gnps_database
#> -----------Base information------------
#> Version:2023-09-02
#> Source:GNPS
#> Link:https://gnps.ucsd.edu/ProteoSAFe/static/gnps-splash.jsp
#> Creater:Xiaotao Shen(shenxt@stanford.edu)
#> Without RT informtaion
#> -----------Spectral information------------
#> 25 items of metabolite information:
#> Lab.ID; Compound.name; mz; RT; CAS.ID; HMDB.ID; KEGG.ID; Formula; mz.pos; mz.neg (top10)
#> 2235 metabolites in total.
#> 1907 metabolites with spectra in positive mode.
#> 328 metabolites with spectra in negative mode.
#> Collision energy in positive mode (number:):
#> Total number:1
#> Unknown_1
#> Collision energy in negative mode:
#> Total number:1
#> Unknown_1
```

You can save the database to use later.


```r
save(gnps_database, file = "database_construction/gnps_database")
```


## KEGG database

[KEGG](https://www.genome.jp/kegg/) is a database resource for understanding high-level functions and utilities of the biological system, such as the cell, the organism and the ecosystem, from molecular-level information, especially large-scale molecular datasets generated by genome sequencing and other high-throughput experimental technologies.

Download the database:


```r
library(massdatabase)
```


```r
download_kegg_compound(path = "database_construction/")
```

> It may take a while to download the database.

Then read and convert it to `databaseClass` format.


```r
data <- 
  read_kegg_compound(path = "database_construction/")
```

Then convert it to `databaseClass` format.


```r
kegg_database <-
  convert_kegg2metid(data = data, path = "database_construction")
```


```r
kegg_database
```

You can save the database to use later.


```r
save(kegg_database, file = "database_construction/kegg_database")
```

## LipidMaps

[LIPID MAPS Lipidomics Gateway](https://www.lipidmaps.org/) was created in 2003 via an NIH “Glue Grant” to provide access to lipid nomenclature, databases, tools, protocols, standards, tutorials, meetings, publications, and other resources and serving the international lipid research community.

Download the database:


```r
library(massdatabase)
```


```r
download_lipidmaps_lipid(path = "database_construction")
```

> It may take a while to download the database.

Uncompress the downloaded zip file.


```r
unzip(zipfile = "database_construction/LMSD.sdf.zip", 
      exdir = "database_construction/")
```

Then read and convert it to `databaseClass` format.


```r
data <-
  read_sdf_data_lipidmaps(file = "database_construction/structures.sdf")
#> Reading data, it may take a while...
#> Done.
#> Organizing...
#> Done.
```

Then convert it to `databaseClass` format.


```r
lipidmaps_database <-
  convert_lipidmaps2metid(data = data, path = "database_construction/")
#> Organizing...
#> No POS file in your /var/folders/m8/z8rq9r453dn9rk4zx4cw5_5h0000gn/T//RtmpCyYI3i/file15d95347e11b3
#> No NEG file in your /var/folders/m8/z8rq9r453dn9rk4zx4cw5_5h0000gn/T//RtmpCyYI3i/file15d95347e11b3
#> Reading metabolite information...
#> Reading positive MS2 data...
#> Reading negative MS2 data...
#> Matching metabolites with MS2 spectra (positive)...
#> Matching metabolites with MS2 spectra (negative)...
#> All done!
```


```r
lipidmaps_database
#> -----------Base information------------
#> Version:2023-09-02
#> Source:LIPIDMAPS
#> Link:https://www.lipidmaps.org/
#> Creater:Xiaotao Shen(shenxt@stanford.edu)
#> Without RT informtaion
#> -----------Spectral information------------
#> 27 items of metabolite information:
#> Lab.ID; Compound.name; mz; RT; CAS.ID; HMDB.ID; KEGG.ID; Formula; mz.pos; mz.neg (top10)
#> 47500 metabolites in total.
#> 0 metabolites with spectra in positive mode.
#> 0 metabolites with spectra in negative mode.
#> Collision energy in positive mode (number:):
#> Total number:0
#> 
#> Collision energy in negative mode:
#> Total number:0
#> 
```

You can save the database to use later.


```r
save(lipidmaps_database, file = "database_construction/lipidmaps_database")
```

## MassBank

[MassBank](https://massbank.eu/MassBank/) is a community effort and you are invited to contribute. Please refer to our contributor documentation and get in touch via github or email.

Download the database:


```r
library(massdatabase)
```


```r
download_massbank_compound(source = "nist", path = "database_construction/")
```

> It may take a while to download the database.

Then read and convert it to `databaseClass` format.


```r
data <- read_msp_data_massbank(file = "database_construction/massbank_compound/MassBank_NIST.msp")
#> 10% 20% 30% 40% 50% 60% 70% 80% 90% 100%
```

> It may take a while to read the data.

Then convert it to `databaseClass` format.


```r
massbank_database <- 
  convert_massbank2metid_nist(data = data, path = "database_construction/")
```

> It may take a while to convert the data.


```r
massbank_database
```

You can save the database to use later.


```r
save(massbank_database, file = "database_construction/massbank_database")
```

## SMPDB

[SMPDB](https://www.smpdb.ca/) is an interactive, visual database containing more than 30000 small molecule pathways found in humans only.

Download the database:


```r
library(massdatabase)
```


```r
download_smpdb_pathway(path = "database_construction/")
```

> It may take a while to download the database.

Then read and convert it to `databaseClass` format.


```r
data <- 
  read_smpdb_pathway(path = "database_construction/", only_primarity_pathway = TRUE)
```

Then convert it to `databaseClass` format.


```r
smpdb_pathway_database <-
  convert_smpdb2metpath(data = data, path = "database_construction/")
```


```r
smpdb_pathway_database
```

You can save the database to use later.


```r
save(smpdb_pathway_database, file = "database_construction/smpdb_pathway_database")
```

## Citation

If you use `massdatabase` in your studies, please cite this paper:

[massDatabase: utilities for the operation of the public compound and pathway database. Bioinformatics (2022).](https://academic.oup.com/bioinformatics/article/38/19/4650/6659093)

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
#>  [7] BiocGenerics_0.46.0 massdataset_1.0.25  metid_1.2.30       
#> [10] metpath_1.0.8       ggplot2_3.4.2       dplyr_1.1.2        
#> [13] magrittr_2.0.3      masstools_1.0.10    massdatabase_1.0.8 
#> 
#> loaded via a namespace (and not attached):
#>   [1] RColorBrewer_1.1-3          rstudioapi_0.14            
#>   [3] jsonlite_1.8.5              shape_1.4.6                
#>   [5] farver_2.1.1                MALDIquant_1.22.1          
#>   [7] rmarkdown_2.22              GlobalOptions_0.1.2        
#>   [9] zlibbioc_1.46.0             vctrs_0.6.2                
#>  [11] RCurl_1.98-1.12             base64enc_0.1-3            
#>  [13] blogdown_1.18.1             progress_1.2.2             
#>  [15] htmltools_0.5.5             S4Arrays_1.0.4             
#>  [17] curl_5.0.1                  cellranger_1.1.0           
#>  [19] mzID_1.38.0                 sass_0.4.6                 
#>  [21] parallelly_1.36.0           bslib_0.5.0                
#>  [23] htmlwidgets_1.6.2           plyr_1.8.8                 
#>  [25] impute_1.74.1               plotly_4.10.2              
#>  [27] cachem_1.0.8                igraph_1.4.3               
#>  [29] lifecycle_1.0.3             iterators_1.0.14           
#>  [31] pkgconfig_2.0.3             Matrix_1.5-4               
#>  [33] R6_2.5.1                    fastmap_1.1.1              
#>  [35] GenomeInfoDbData_1.2.10     MatrixGenerics_1.12.2      
#>  [37] future_1.32.0               clue_0.3-64                
#>  [39] digest_0.6.31               rsvg_2.4.0                 
#>  [41] pcaMethods_1.92.0           colorspace_2.1-0           
#>  [43] furrr_0.3.1                 rprojroot_2.0.3            
#>  [45] GenomicRanges_1.52.0        fansi_1.0.4                
#>  [47] polyclip_1.10-4             httr_1.4.6                 
#>  [49] compiler_4.3.0              here_1.0.1                 
#>  [51] remotes_2.4.2               bit64_4.0.5                
#>  [53] withr_2.5.0                 doParallel_1.0.17          
#>  [55] BiocParallel_1.34.2         DBI_1.1.3                  
#>  [57] viridis_0.6.3               ggforce_0.4.1              
#>  [59] MASS_7.3-58.4               ChemmineR_3.52.0           
#>  [61] DelayedArray_0.26.3         rjson_0.2.21               
#>  [63] tools_4.3.0                 zip_2.3.0                  
#>  [65] glue_1.6.2                  stringdist_0.9.10          
#>  [67] grid_4.3.0                  cluster_2.1.4              
#>  [69] generics_0.1.3              gtable_0.3.3               
#>  [71] tzdb_0.4.0                  preprocessCore_1.62.1      
#>  [73] tidyr_1.3.0                 data.table_1.14.8          
#>  [75] hms_1.1.3                   tidygraph_1.2.3            
#>  [77] xml2_1.3.4                  utf8_1.2.3                 
#>  [79] XVector_0.40.0              ggrepel_0.9.3              
#>  [81] foreach_1.5.2               pillar_1.9.0               
#>  [83] stringr_1.5.0               vroom_1.6.3                
#>  [85] limma_3.56.2                circlize_0.4.15            
#>  [87] tweenr_2.0.2                lattice_0.21-8             
#>  [89] bit_4.0.5                   tidyselect_1.2.0           
#>  [91] ComplexHeatmap_2.16.0       Biostrings_2.68.1          
#>  [93] pbapply_1.7-0               knitr_1.43                 
#>  [95] gridExtra_2.3               bookdown_0.34              
#>  [97] IRanges_2.34.0              SummarizedExperiment_1.30.2
#>  [99] Rdisop_1.60.0               xfun_0.39                  
#> [101] graphlayouts_1.0.0          matrixStats_1.0.0          
#> [103] DT_0.28                     stringi_1.7.12             
#> [105] lazyeval_0.2.2              yaml_2.3.7                 
#> [107] evaluate_0.21               codetools_0.2-19           
#> [109] ggraph_2.1.0                MsCoreUtils_1.12.0         
#> [111] tibble_3.2.1                BiocManager_1.30.21        
#> [113] cli_3.6.1                   affyio_1.70.0              
#> [115] munsell_0.5.0               jquerylib_0.1.4            
#> [117] readxl_1.4.2                GenomeInfoDb_1.36.0        
#> [119] globals_0.16.2              png_0.1-8                  
#> [121] XML_3.99-0.14               parallel_4.3.0             
#> [123] readr_2.1.4                 prettyunits_1.1.1          
#> [125] bitops_1.0-7                listenv_0.9.0              
#> [127] viridisLite_0.4.2           scales_1.2.1               
#> [129] affy_1.78.0                 openxlsx_4.2.5.2           
#> [131] ncdf4_1.21                  purrr_1.0.1                
#> [133] crayon_1.5.2                GetoptLong_1.0.5           
#> [135] rlang_1.1.1                 rvest_1.0.3                
#> [137] vsn_3.68.0                  KEGGREST_1.40.0
```
