---
date: "2019-05-05T00:00:00+01:00"
title: "Construct in-house MS2 datbase"
linktitle: Construct in-house MS2 datbase
author: admin
type: book
weight: 1
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

![](/docs/chapter7/figures/Screen Shot 2021-02-26 at 9.22.52 PM.png)
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
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> loaded via a namespace (and not attached):
#>  [1] digest_0.6.31   R6_2.5.1        bookdown_0.34   fastmap_1.1.1  
#>  [5] xfun_0.39       blogdown_1.18.1 cachem_1.0.8    knitr_1.43     
#>  [9] htmltools_0.5.5 rmarkdown_2.22  cli_3.6.1       sass_0.4.6     
#> [13] jquerylib_0.1.4 compiler_4.3.0  rprojroot_2.0.3 here_1.0.1     
#> [17] rstudioapi_0.14 tools_4.3.0     evaluate_0.21   bslib_0.5.0    
#> [21] yaml_2.3.7      jsonlite_1.8.5  rlang_1.1.1
```
