---
date: "2019-05-05T00:00:00+01:00"
title: "Databases for metID"
linktitle: "1 Databases for metID"
author: admin
type: book
weight: 1
commentable: true
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />




## Introduction

The database class in `metid` is `databaseClass`. You can use the demo database in `metid` to explore it.


```r
library(metid)
#> metid 1.2.30 (2023-09-02 11:07:21.054003)
#> 
#> Attaching package: 'metid'
#> The following object is masked from 'package:stats':
#> 
#>     filter
data("snyder_database_rplc0.0.3")
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
class(snyder_database_rplc0.0.3)
#> [1] "databaseClass"
#> attr(,"package")
#> [1] "metid"
```

It contains three parts:

1. spectra.info: The information for all the metabolites/compounds in the database.

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:600px; overflow-x: scroll; width:100%; "><table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> Lab.ID </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> Compound.name </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> mz </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> RT </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> CAS.ID </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> HMDB.ID </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> KEGG.ID </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> Formula </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> mz.pos </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> mz.neg </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> Submitter </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> Family </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> Sub.pathway </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;position: sticky; top:0; background-color: #FFFFFF;"> Note </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> RPLC_1 </td>
   <td style="text-align:left;"> Pyrrole-3-carboxylic acid </td>
   <td style="text-align:left;"> 111.032 </td>
   <td style="text-align:right;"> 42.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H5NO2 </td>
   <td style="text-align:right;"> 112.0393 </td>
   <td style="text-align:right;"> 110.02470 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_2 </td>
   <td style="text-align:left;"> 3-Furoic acid </td>
   <td style="text-align:left;"> 112.016 </td>
   <td style="text-align:right;"> 60.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H4O3 </td>
   <td style="text-align:right;"> 113.0233 </td>
   <td style="text-align:right;"> 111.00880 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_3 </td>
   <td style="text-align:left;"> 3,4-Dehydro-DL-proline </td>
   <td style="text-align:left;"> 113.0477 </td>
   <td style="text-align:right;"> 30.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H7NO2 </td>
   <td style="text-align:right;"> 114.0550 </td>
   <td style="text-align:right;"> 112.04040 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_4 </td>
   <td style="text-align:left;"> 1-Methylhydantoin </td>
   <td style="text-align:left;"> 114.0429 </td>
   <td style="text-align:right;"> 30.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H6N2O2 </td>
   <td style="text-align:right;"> 115.0502 </td>
   <td style="text-align:right;"> 113.03560 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Miscellaneous </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_5 </td>
   <td style="text-align:left;"> 5-Methylcytosine hydrochloride </td>
   <td style="text-align:left;"> 125.0589 </td>
   <td style="text-align:right;"> 30.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H7N3O </td>
   <td style="text-align:right;"> 126.0662 </td>
   <td style="text-align:right;"> 124.05160 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_6 </td>
   <td style="text-align:left;"> 5-Aminoimidazole-4-carboxamide hydrochloride </td>
   <td style="text-align:left;"> 126.0542 </td>
   <td style="text-align:right;"> 30.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H6N4O </td>
   <td style="text-align:right;"> 127.0614 </td>
   <td style="text-align:right;"> 125.04690 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Imidazoles and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_7 </td>
   <td style="text-align:left;"> 2-Pyrrolidinone-5-carboxylic acid </td>
   <td style="text-align:left;"> 129.0426 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H7NO3 </td>
   <td style="text-align:right;"> 130.0499 </td>
   <td style="text-align:right;"> 128.03530 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_8 </td>
   <td style="text-align:left;"> Nicotinamide-N-Oxide </td>
   <td style="text-align:left;"> 138.0429 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H6N2O2 </td>
   <td style="text-align:right;"> 139.0502 </td>
   <td style="text-align:right;"> 137.03560 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Pyridines and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_9 </td>
   <td style="text-align:left;"> 2-(4-Hydroxyphenyl)ethanol (Tyrosol) </td>
   <td style="text-align:left;"> 138.0681 </td>
   <td style="text-align:right;"> 95.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H10O2 </td>
   <td style="text-align:right;"> 139.0754 </td>
   <td style="text-align:right;"> 137.06080 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Alcohols and polyols </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_10 </td>
   <td style="text-align:left;"> 5-(Hydroxymethyl)uracil </td>
   <td style="text-align:left;"> 142.0378 </td>
   <td style="text-align:right;"> 73.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H6N2O3 </td>
   <td style="text-align:right;"> 143.0451 </td>
   <td style="text-align:right;"> 141.03060 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_11 </td>
   <td style="text-align:left;"> 7-Methyladenine </td>
   <td style="text-align:left;"> 149.0701 </td>
   <td style="text-align:right;"> 48.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H7N5 </td>
   <td style="text-align:right;"> 150.0774 </td>
   <td style="text-align:right;"> 148.06290 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_12 </td>
   <td style="text-align:left;"> 1-Methylhypoxanthine </td>
   <td style="text-align:left;"> 150.0542 </td>
   <td style="text-align:right;"> 73.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H6N4O </td>
   <td style="text-align:right;"> 151.0614 </td>
   <td style="text-align:right;"> 149.04690 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_13 </td>
   <td style="text-align:left;"> 4,6-Diamino-5-(formylamino)pyrimidine (FAPy-Adenine) </td>
   <td style="text-align:left;"> 153.0651 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H7N5O </td>
   <td style="text-align:right;"> 154.0723 </td>
   <td style="text-align:right;"> 152.05780 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_14 </td>
   <td style="text-align:left;"> 4-Deoxypyridoxine </td>
   <td style="text-align:left;"> 153.079 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H11NO2 </td>
   <td style="text-align:right;"> 154.0863 </td>
   <td style="text-align:right;"> 152.07170 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Pyridines and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_15 </td>
   <td style="text-align:left;"> 2,3-Dihydroxybenzoic acid </td>
   <td style="text-align:left;"> 154.0266 </td>
   <td style="text-align:right;"> 78.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H6O4 </td>
   <td style="text-align:right;"> 155.0339 </td>
   <td style="text-align:right;"> 153.01930 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_16 </td>
   <td style="text-align:left;"> 5-Hydroxymethyl-6-methyluracil </td>
   <td style="text-align:left;"> 156.0535 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H8N2O3 </td>
   <td style="text-align:right;"> 157.0608 </td>
   <td style="text-align:right;"> 155.04620 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_17 </td>
   <td style="text-align:left;"> 1-Methylguanine </td>
   <td style="text-align:left;"> 165.0651 </td>
   <td style="text-align:right;"> 58.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H7N5O </td>
   <td style="text-align:right;"> 166.0723 </td>
   <td style="text-align:right;"> 164.05780 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_18 </td>
   <td style="text-align:left;"> 7-Methylxanthine </td>
   <td style="text-align:left;"> 166.0491 </td>
   <td style="text-align:right;"> 574.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H6N4O2 </td>
   <td style="text-align:right;"> 167.0564 </td>
   <td style="text-align:right;"> 165.04180 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_19 </td>
   <td style="text-align:left;"> 3-(2,5-dioxoimidazolidin-4-yl)propanoic acid (Hydantoin-5-propionic acid) </td>
   <td style="text-align:left;"> 172.0484 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H8N2O4 </td>
   <td style="text-align:right;"> 173.0557 </td>
   <td style="text-align:right;"> 171.04110 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_20 </td>
   <td style="text-align:left;"> 3-Indoleacetic acid </td>
   <td style="text-align:left;"> 175.0633 </td>
   <td style="text-align:right;"> 217.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H9NO2 </td>
   <td style="text-align:right;"> 176.0706 </td>
   <td style="text-align:right;"> 174.05600 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_21 </td>
   <td style="text-align:left;"> (-)-Cotinine </td>
   <td style="text-align:left;"> 176.095 </td>
   <td style="text-align:right;"> 170.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H12N2O </td>
   <td style="text-align:right;"> 177.1022 </td>
   <td style="text-align:right;"> 175.08770 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Miscellaneous </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_22 </td>
   <td style="text-align:left;"> (+/-)-Salsolinol Hydrochloride </td>
   <td style="text-align:left;"> 179.0946 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H13NO2 </td>
   <td style="text-align:right;"> 180.1019 </td>
   <td style="text-align:right;"> 178.08730 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Alcohols and polyols </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_23 </td>
   <td style="text-align:left;"> 4-Pyridoxic acid </td>
   <td style="text-align:left;"> 183.0532 </td>
   <td style="text-align:right;"> 54.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H9NO4 </td>
   <td style="text-align:right;"> 184.0604 </td>
   <td style="text-align:right;"> 182.04590 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_24 </td>
   <td style="text-align:left;"> 3-Indoleacrylic acid </td>
   <td style="text-align:left;"> 187.0633 </td>
   <td style="text-align:right;"> 321.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H9NO2 </td>
   <td style="text-align:right;"> 188.0706 </td>
   <td style="text-align:right;"> 186.05600 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_25 </td>
   <td style="text-align:left;"> 5-Hydroxyindole-3-acetic acid </td>
   <td style="text-align:left;"> 191.0582 </td>
   <td style="text-align:right;"> 111.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H9NO3 </td>
   <td style="text-align:right;"> 192.0655 </td>
   <td style="text-align:right;"> 190.05100 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_26 </td>
   <td style="text-align:left;"> 3-Indolebutyric acid </td>
   <td style="text-align:left;"> 203.0946 </td>
   <td style="text-align:right;"> 336.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C12H13NO2 </td>
   <td style="text-align:right;"> 204.1019 </td>
   <td style="text-align:right;"> 202.08730 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_27 </td>
   <td style="text-align:left;"> 5-Acetylamino-6-amino-3-methyluracil Hydrate </td>
   <td style="text-align:left;"> 216.0859 </td>
   <td style="text-align:right;"> 170.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H12N4O4 </td>
   <td style="text-align:right;"> 217.0931 </td>
   <td style="text-align:right;"> 215.07860 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_28 </td>
   <td style="text-align:left;"> 2'-Deoxycytidine </td>
   <td style="text-align:left;"> 227.0906 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H13N3O4 </td>
   <td style="text-align:right;"> 228.0979 </td>
   <td style="text-align:right;"> 226.08330 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_29 </td>
   <td style="text-align:left;"> 2'-Deoxyuridine </td>
   <td style="text-align:left;"> 228.0746 </td>
   <td style="text-align:right;"> 43.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H12N2O5 </td>
   <td style="text-align:right;"> 229.0819 </td>
   <td style="text-align:right;"> 227.06730 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_30 </td>
   <td style="text-align:left;"> 2'-Deoxyinosine </td>
   <td style="text-align:left;"> 252.0859 </td>
   <td style="text-align:right;"> 66.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H12N4O4 </td>
   <td style="text-align:right;"> 253.0931 </td>
   <td style="text-align:right;"> 251.07860 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_31 </td>
   <td style="text-align:left;"> 5-Methylcytidine </td>
   <td style="text-align:left;"> 257.1012 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H15N3O5 </td>
   <td style="text-align:right;"> 258.1085 </td>
   <td style="text-align:right;"> 256.09390 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_32 </td>
   <td style="text-align:left;"> 3-O-Methyluridine </td>
   <td style="text-align:left;"> 258.0852 </td>
   <td style="text-align:right;"> 52.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H14N2O6 </td>
   <td style="text-align:right;"> 259.0925 </td>
   <td style="text-align:right;"> 257.07790 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_33 </td>
   <td style="text-align:left;"> D-Fructose 6-phosphate trisodium salt hydrate </td>
   <td style="text-align:left;"> 260.0297 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H13O9P </td>
   <td style="text-align:right;"> 261.0370 </td>
   <td style="text-align:right;"> 259.02240 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Carbohydrates and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_34 </td>
   <td style="text-align:left;"> 8-Hydroxy-2'-deoxyguanosine </td>
   <td style="text-align:left;"> 283.0917 </td>
   <td style="text-align:right;"> 111.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H13N5O5 </td>
   <td style="text-align:right;"> 284.0990 </td>
   <td style="text-align:right;"> 282.08440 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_35 </td>
   <td style="text-align:left;"> 5,7,3,4'-Tetrahydroxyflavanone (Eriodictyol) </td>
   <td style="text-align:left;"> 288.0634 </td>
   <td style="text-align:right;"> 346.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C15H12O6 </td>
   <td style="text-align:right;"> 289.0707 </td>
   <td style="text-align:right;"> 287.05610 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Miscellaneous </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_36 </td>
   <td style="text-align:left;"> (-)Epicatechin </td>
   <td style="text-align:left;"> 290.079 </td>
   <td style="text-align:right;"> 212.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C15H14O6 </td>
   <td style="text-align:right;"> 291.0863 </td>
   <td style="text-align:right;"> 289.07180 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Miscellaneous </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_37 </td>
   <td style="text-align:left;"> 13-OxoODE </td>
   <td style="text-align:left;"> 294.2195 </td>
   <td style="text-align:right;"> 581.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C18H30O3 </td>
   <td style="text-align:right;"> 295.2268 </td>
   <td style="text-align:right;"> 293.21220 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Fatty acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_38 </td>
   <td style="text-align:left;"> 5'-Deoxy-5'-(methylthio)adenosine </td>
   <td style="text-align:left;"> 297.0896 </td>
   <td style="text-align:right;"> 249.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H15N5O3S </td>
   <td style="text-align:right;"> 298.0968 </td>
   <td style="text-align:right;"> 296.08230 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_39 </td>
   <td style="text-align:left;"> 7-Methylguanosine </td>
   <td style="text-align:left;"> 297.1073 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H15N5O5 </td>
   <td style="text-align:right;"> 298.1146 </td>
   <td style="text-align:right;"> 296.10000 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_40 </td>
   <td style="text-align:left;"> AMP (Adenosine 3'-Monophosphate Hydrate) </td>
   <td style="text-align:left;"> 347.0631 </td>
   <td style="text-align:right;"> 71.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H14N5O7P </td>
   <td style="text-align:right;"> 348.0704 </td>
   <td style="text-align:right;"> 346.05580 </td>
   <td style="text-align:left;"> Mix_A </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_41 </td>
   <td style="text-align:left;"> N,N-Dimethylguanidine sulfate </td>
   <td style="text-align:left;"> 87.0796 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C3H9N3 </td>
   <td style="text-align:right;"> 88.0869 </td>
   <td style="text-align:right;"> 86.07240 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_42 </td>
   <td style="text-align:left;"> L-Serine </td>
   <td style="text-align:left;"> 105.0426 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C3H7NO3 </td>
   <td style="text-align:right;"> 106.0499 </td>
   <td style="text-align:right;"> 104.03530 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_43 </td>
   <td style="text-align:left;"> Levulinic acid </td>
   <td style="text-align:left;"> 116.0473 </td>
   <td style="text-align:right;"> 39.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H8O3 </td>
   <td style="text-align:right;"> 117.0546 </td>
   <td style="text-align:right;"> 115.04010 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_44 </td>
   <td style="text-align:left;"> cis-L-3-hydroxyproline </td>
   <td style="text-align:left;"> 131.0582 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H9NO3 </td>
   <td style="text-align:right;"> 132.0655 </td>
   <td style="text-align:right;"> 130.05100 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_45 </td>
   <td style="text-align:left;"> L-Ornithine hydrochloride </td>
   <td style="text-align:left;"> 132.0899 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H12N2O2 </td>
   <td style="text-align:right;"> 133.0972 </td>
   <td style="text-align:right;"> 131.08260 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_46 </td>
   <td style="text-align:left;"> L-Aspartic acid </td>
   <td style="text-align:left;"> 133.0375 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H7NO4 </td>
   <td style="text-align:right;"> 134.0448 </td>
   <td style="text-align:right;"> 132.03020 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_47 </td>
   <td style="text-align:left;"> N-methylnicotinamide </td>
   <td style="text-align:left;"> 136.0637 </td>
   <td style="text-align:right;"> 103.19193 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H8N2O </td>
   <td style="text-align:right;"> 137.0709 </td>
   <td style="text-align:right;"> 135.05640 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Pyridines and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_48 </td>
   <td style="text-align:left;"> N-Formyl-L-proline </td>
   <td style="text-align:left;"> 143.0582 </td>
   <td style="text-align:right;"> 39.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H9NO3 </td>
   <td style="text-align:right;"> 144.0655 </td>
   <td style="text-align:right;"> 142.05100 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_49 </td>
   <td style="text-align:left;"> L-Glutamine </td>
   <td style="text-align:left;"> 146.0691 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H10N2O3 </td>
   <td style="text-align:right;"> 147.0764 </td>
   <td style="text-align:right;"> 145.06190 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_50 </td>
   <td style="text-align:left;"> N-Acetyl-DL-serine </td>
   <td style="text-align:left;"> 147.0532 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H9NO4 </td>
   <td style="text-align:right;"> 148.0604 </td>
   <td style="text-align:right;"> 146.04590 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_51 </td>
   <td style="text-align:left;"> N-Acetyl-L-proline </td>
   <td style="text-align:left;"> 157.0739 </td>
   <td style="text-align:right;"> 59.37634 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H11NO3 </td>
   <td style="text-align:right;"> 158.0812 </td>
   <td style="text-align:right;"> 156.06660 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_52 </td>
   <td style="text-align:left;"> L-Dihydroorotic acid </td>
   <td style="text-align:left;"> 158.0328 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H6N2O4 </td>
   <td style="text-align:right;"> 159.0400 </td>
   <td style="text-align:right;"> 157.02550 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_53 </td>
   <td style="text-align:left;"> N-Acetyl-D-Valine </td>
   <td style="text-align:left;"> 159.0895 </td>
   <td style="text-align:right;"> 76.18232 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H13NO3 </td>
   <td style="text-align:right;"> 160.0968 </td>
   <td style="text-align:right;"> 158.08230 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_54 </td>
   <td style="text-align:left;"> L(-)-Carnitine </td>
   <td style="text-align:left;"> 161.1052 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H15NO3 </td>
   <td style="text-align:right;"> 162.1125 </td>
   <td style="text-align:right;"> 160.09790 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Acyl carnitines </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_55 </td>
   <td style="text-align:left;"> N-Acetyl-D-cysteine </td>
   <td style="text-align:left;"> 163.0303 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H9NO3S </td>
   <td style="text-align:right;"> 164.0376 </td>
   <td style="text-align:right;"> 162.02300 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_56 </td>
   <td style="text-align:left;"> N-alpha-acetyl-L-ornithine </td>
   <td style="text-align:left;"> 174.1004 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H14N2O3 </td>
   <td style="text-align:right;"> 175.1077 </td>
   <td style="text-align:right;"> 173.09320 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_57 </td>
   <td style="text-align:left;"> L(+)-Arginine hydrochloride </td>
   <td style="text-align:left;"> 174.1117 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H14N4O2 </td>
   <td style="text-align:right;"> 175.1190 </td>
   <td style="text-align:right;"> 173.10440 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_58 </td>
   <td style="text-align:left;"> N-epsilon-Dimethyl-L-lysine hydrochloride </td>
   <td style="text-align:left;"> 174.1368 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H18N2O2 </td>
   <td style="text-align:right;"> 175.1441 </td>
   <td style="text-align:right;"> 173.12950 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_59 </td>
   <td style="text-align:left;"> N-alpha-Acetyl-L-glutamine </td>
   <td style="text-align:left;"> 188.0797 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H12N2O4 </td>
   <td style="text-align:right;"> 189.0870 </td>
   <td style="text-align:right;"> 187.07240 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_60 </td>
   <td style="text-align:left;"> N-epsilon-acetyl-L-lysine </td>
   <td style="text-align:left;"> 188.1161 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H16N2O3 </td>
   <td style="text-align:right;"> 189.1234 </td>
   <td style="text-align:right;"> 187.10880 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_61 </td>
   <td style="text-align:left;"> N-epsilon-Triimethyl-L-lysine hydrochloride </td>
   <td style="text-align:left;"> 188.1525 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H20N2O2 </td>
   <td style="text-align:right;"> 189.1598 </td>
   <td style="text-align:right;"> 187.14520 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_62 </td>
   <td style="text-align:left;"> L-Tryptophanol </td>
   <td style="text-align:left;"> 190.1106 </td>
   <td style="text-align:right;"> 36.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H14N2O </td>
   <td style="text-align:right;"> 191.1179 </td>
   <td style="text-align:right;"> 189.10330 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Alcohols and polyols </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_63 </td>
   <td style="text-align:left;"> N-Phenylacetylglycine </td>
   <td style="text-align:left;"> 193.0739 </td>
   <td style="text-align:right;"> 145.80710 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H11NO3 </td>
   <td style="text-align:right;"> 194.0812 </td>
   <td style="text-align:right;"> 192.06660 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_64 </td>
   <td style="text-align:left;"> O-Hydroxyhippuric acid </td>
   <td style="text-align:left;"> 195.0532 </td>
   <td style="text-align:right;"> 180.61948 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H9NO4 </td>
   <td style="text-align:right;"> 196.0604 </td>
   <td style="text-align:right;"> 194.04590 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_65 </td>
   <td style="text-align:left;"> L-Tryptophanamide hydrochloride </td>
   <td style="text-align:left;"> 203.1059 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H13N3O </td>
   <td style="text-align:right;"> 204.1131 </td>
   <td style="text-align:right;"> 202.09860 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_66 </td>
   <td style="text-align:left;"> Mannoheptulopyranose (Mannoheptulose) </td>
   <td style="text-align:left;"> 210.074 </td>
   <td style="text-align:right;"> 274.85302 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H14O7 </td>
   <td style="text-align:right;"> 211.0812 </td>
   <td style="text-align:right;"> 209.06670 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Carbohydrates and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_67 </td>
   <td style="text-align:left;"> N-Acetyl-D-glucosamine </td>
   <td style="text-align:left;"> 221.0899 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H15NO6 </td>
   <td style="text-align:right;"> 222.0972 </td>
   <td style="text-align:right;"> 220.08270 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Carbohydrates and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_68 </td>
   <td style="text-align:left;"> L-Carnosine </td>
   <td style="text-align:left;"> 226.1066 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H14N4O3 </td>
   <td style="text-align:right;"> 227.1139 </td>
   <td style="text-align:right;"> 225.09930 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Peptides </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_69 </td>
   <td style="text-align:left;"> Resveratrol </td>
   <td style="text-align:left;"> 228.0786 </td>
   <td style="text-align:right;"> 325.27096 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C14H12O3 </td>
   <td style="text-align:right;"> 229.0859 </td>
   <td style="text-align:right;"> 227.07140 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Alcohols and polyols </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_70 </td>
   <td style="text-align:left;"> 5-Methyluridine </td>
   <td style="text-align:left;"> 258.0852 </td>
   <td style="text-align:right;"> 49.17270 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H14N2O6 </td>
   <td style="text-align:right;"> 259.0925 </td>
   <td style="text-align:right;"> 257.07790 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_71 </td>
   <td style="text-align:left;"> 8-Hydroxyadenosine </td>
   <td style="text-align:left;"> 283.0917 </td>
   <td style="text-align:right;"> 109.79428 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H13N5O5 </td>
   <td style="text-align:right;"> 284.0990 </td>
   <td style="text-align:right;"> 282.08440 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_72 </td>
   <td style="text-align:left;"> AMP (Adenosine 5'-monophosphate disodium salt) </td>
   <td style="text-align:left;"> 347.0631 </td>
   <td style="text-align:right;"> 43.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H14N5O7P </td>
   <td style="text-align:right;"> 348.0704 </td>
   <td style="text-align:right;"> 346.05580 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_73 </td>
   <td style="text-align:left;"> NADH (?-Nicotinamide adenine dinucleotide, reduced dipotassium salt) </td>
   <td style="text-align:left;"> 665.1248 </td>
   <td style="text-align:right;"> 181.21970 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C21H29N7O14P2 </td>
   <td style="text-align:right;"> 666.1321 </td>
   <td style="text-align:right;"> 664.11750 </td>
   <td style="text-align:left;"> Mix_B </td>
   <td style="text-align:left;"> Pyridines and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_74 </td>
   <td style="text-align:left;"> DL-Homocysteine thiolactone hydrochloride </td>
   <td style="text-align:left;"> 117.0248 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H7NOS </td>
   <td style="text-align:right;"> 118.0321 </td>
   <td style="text-align:right;"> 116.01760 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Miscellaneous </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_75 </td>
   <td style="text-align:left;"> L-2,4-Diaminobutyric acid dihydrochloride </td>
   <td style="text-align:left;"> 118.0742 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H10N2O2 </td>
   <td style="text-align:right;"> 119.0815 </td>
   <td style="text-align:right;"> 117.06690 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_76 </td>
   <td style="text-align:left;"> Isethionic acid sodium salt </td>
   <td style="text-align:left;"> 125.9987 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C2H6O4S </td>
   <td style="text-align:right;"> 127.0060 </td>
   <td style="text-align:right;"> 124.99140 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Alcohols and polyols </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_77 </td>
   <td style="text-align:left;"> Dihydrothymine </td>
   <td style="text-align:left;"> 128.0586 </td>
   <td style="text-align:right;"> 38.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H8N2O2 </td>
   <td style="text-align:right;"> 129.0659 </td>
   <td style="text-align:right;"> 127.05130 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_78 </td>
   <td style="text-align:left;"> Glutaconic acid </td>
   <td style="text-align:left;"> 130.0266 </td>
   <td style="text-align:right;"> 39.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H6O4 </td>
   <td style="text-align:right;"> 131.0339 </td>
   <td style="text-align:right;"> 129.01930 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_79 </td>
   <td style="text-align:left;"> Deamino-Histidine </td>
   <td style="text-align:left;"> 140.0586 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H8N2O2 </td>
   <td style="text-align:right;"> 141.0659 </td>
   <td style="text-align:right;"> 139.05130 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_80 </td>
   <td style="text-align:left;"> Ectoine ((S)-2-Methyl-1,4,5,6-tetrahydropyrimidine-4-carboxylic acid) </td>
   <td style="text-align:left;"> 142.0742 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H10N2O2 </td>
   <td style="text-align:right;"> 143.0815 </td>
   <td style="text-align:right;"> 141.06690 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_81 </td>
   <td style="text-align:left;"> Gamma-Guanidinobutyric acid </td>
   <td style="text-align:left;"> 145.0851 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H11N3O2 </td>
   <td style="text-align:right;"> 146.0924 </td>
   <td style="text-align:right;"> 144.07780 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_82 </td>
   <td style="text-align:left;"> D(+)-Ribonic acid-?-lactone </td>
   <td style="text-align:left;"> 148.0372 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H8O5 </td>
   <td style="text-align:right;"> 149.0445 </td>
   <td style="text-align:right;"> 147.02990 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_83 </td>
   <td style="text-align:left;"> Indole-2-carboxylic acid </td>
   <td style="text-align:left;"> 161.0477 </td>
   <td style="text-align:right;"> 265.86504 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H7NO2 </td>
   <td style="text-align:right;"> 162.0550 </td>
   <td style="text-align:right;"> 160.04040 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_84 </td>
   <td style="text-align:left;"> Iberin (3-Methylsulfinylpropyl isothiocyanate) </td>
   <td style="text-align:left;"> 163.0126 </td>
   <td style="text-align:right;"> 148.81412 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H9NOS2 </td>
   <td style="text-align:right;"> 164.0198 </td>
   <td style="text-align:right;"> 162.00530 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Miscellaneous </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_85 </td>
   <td style="text-align:left;"> Dihydroxyacetone phosphate dilithium salt </td>
   <td style="text-align:left;"> 169.998 </td>
   <td style="text-align:right;"> 36.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C3H7O6P </td>
   <td style="text-align:right;"> 171.0053 </td>
   <td style="text-align:right;"> 168.99070 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Aldehydes and cetones </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_86 </td>
   <td style="text-align:left;"> Gabapentin </td>
   <td style="text-align:left;"> 171.1259 </td>
   <td style="text-align:right;"> 50.47889 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H17NO2 </td>
   <td style="text-align:right;"> 172.1332 </td>
   <td style="text-align:right;"> 170.11860 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_87 </td>
   <td style="text-align:left;"> Hexanoylglycine </td>
   <td style="text-align:left;"> 173.1052 </td>
   <td style="text-align:right;"> 211.16136 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H15NO3 </td>
   <td style="text-align:right;"> 174.1125 </td>
   <td style="text-align:right;"> 172.09790 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_88 </td>
   <td style="text-align:left;"> Dehydroascorbic acid </td>
   <td style="text-align:left;"> 174.0164 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H6O6 </td>
   <td style="text-align:right;"> 175.0237 </td>
   <td style="text-align:right;"> 173.00920 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Carbohydrates and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_89 </td>
   <td style="text-align:left;"> D(-)Mannitol </td>
   <td style="text-align:left;"> 182.079 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H14O6 </td>
   <td style="text-align:right;"> 183.0863 </td>
   <td style="text-align:right;"> 181.07180 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Carbohydrates and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_90 </td>
   <td style="text-align:left;"> Indole-3-propionic acid </td>
   <td style="text-align:left;"> 189.079 </td>
   <td style="text-align:right;"> 288.55257 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H11NO2 </td>
   <td style="text-align:right;"> 190.0863 </td>
   <td style="text-align:right;"> 188.07170 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Indoles and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_91 </td>
   <td style="text-align:left;"> DL-5-Hydroxytryptopan </td>
   <td style="text-align:left;"> 220.0848 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H12N2O3 </td>
   <td style="text-align:right;"> 221.0921 </td>
   <td style="text-align:right;"> 219.07750 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_92 </td>
   <td style="text-align:left;"> Flavone </td>
   <td style="text-align:left;"> 222.0681 </td>
   <td style="text-align:right;"> 488.88958 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C15H10O2 </td>
   <td style="text-align:right;"> 223.0754 </td>
   <td style="text-align:right;"> 221.06080 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Miscellaneous </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_93 </td>
   <td style="text-align:left;"> Inosine </td>
   <td style="text-align:left;"> 268.0808 </td>
   <td style="text-align:right;"> 47.64466 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H12N4O5 </td>
   <td style="text-align:right;"> 269.0881 </td>
   <td style="text-align:right;"> 267.07350 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_94 </td>
   <td style="text-align:left;"> Glycitein (7,4'-Dihydroxy-6-methoxyisoflavone) </td>
   <td style="text-align:left;"> 284.0685 </td>
   <td style="text-align:right;"> 396.57801 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C16H12O5 </td>
   <td style="text-align:right;"> 285.0758 </td>
   <td style="text-align:right;"> 283.06120 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Miscellaneous </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_95 </td>
   <td style="text-align:left;"> Hydroxy Tolbutamide </td>
   <td style="text-align:left;"> 286.0987 </td>
   <td style="text-align:right;"> 309.77928 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C12H18N2O4S </td>
   <td style="text-align:right;"> 287.1060 </td>
   <td style="text-align:right;"> 285.09150 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Miscellaneous </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_96 </td>
   <td style="text-align:left;"> Eicosapentanoic acid </td>
   <td style="text-align:left;"> 302.2246 </td>
   <td style="text-align:right;"> 615.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C20H30O2 </td>
   <td style="text-align:right;"> 303.2319 </td>
   <td style="text-align:right;"> 301.21730 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Fatty acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_97 </td>
   <td style="text-align:left;"> dCTP (2'-Deoxycytidine 5'-triphosphate disodium salt) </td>
   <td style="text-align:left;"> 466.9896 </td>
   <td style="text-align:right;"> 265.86504 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H16N3O13P3 </td>
   <td style="text-align:right;"> 467.9969 </td>
   <td style="text-align:right;"> 465.98230 </td>
   <td style="text-align:left;"> Mix_C </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_98 </td>
   <td style="text-align:left;"> Pyruvatoxime </td>
   <td style="text-align:left;"> 103.026944 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C3H5NO3 </td>
   <td style="text-align:right;"> 104.0342 </td>
   <td style="text-align:right;"> 102.01970 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_99 </td>
   <td style="text-align:left;"> Pyrrole-2-carboxylic acid </td>
   <td style="text-align:left;"> 111.032029 </td>
   <td style="text-align:right;"> 47.33252 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H5NO2 </td>
   <td style="text-align:right;"> 112.0393 </td>
   <td style="text-align:right;"> 110.02470 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_100 </td>
   <td style="text-align:left;"> Succinic Acid </td>
   <td style="text-align:left;"> 118.02661 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H6O4 </td>
   <td style="text-align:right;"> 119.0339 </td>
   <td style="text-align:right;"> 117.01930 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_101 </td>
   <td style="text-align:left;"> Niacinamide </td>
   <td style="text-align:left;"> 122.048013 </td>
   <td style="text-align:right;"> 51.19935 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H6N2O </td>
   <td style="text-align:right;"> 123.0553 </td>
   <td style="text-align:right;"> 121.04070 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Pyridines and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_102 </td>
   <td style="text-align:left;"> Nicotinic acid </td>
   <td style="text-align:left;"> 123.032029 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H5NO2 </td>
   <td style="text-align:right;"> 124.0393 </td>
   <td style="text-align:right;"> 122.02470 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_103 </td>
   <td style="text-align:left;"> Urocanic acid </td>
   <td style="text-align:left;"> 138.042928 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H6N2O2 </td>
   <td style="text-align:right;"> 139.0502 </td>
   <td style="text-align:right;"> 137.03560 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_104 </td>
   <td style="text-align:left;"> Trans-Cinnamic acid </td>
   <td style="text-align:left;"> 148.05243 </td>
   <td style="text-align:right;"> 308.65063 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H8O2 </td>
   <td style="text-align:right;"> 149.0597 </td>
   <td style="text-align:right;"> 147.04520 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_105 </td>
   <td style="text-align:left;"> Nw-Acetylhistamine </td>
   <td style="text-align:left;"> 153.090212 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H11N3O </td>
   <td style="text-align:right;"> 154.0975 </td>
   <td style="text-align:right;"> 152.08290 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Amines and polyamines </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_106 </td>
   <td style="text-align:left;"> p-Coumaric acid </td>
   <td style="text-align:left;"> 164.047345 </td>
   <td style="text-align:right;"> 235.75070 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H8O3 </td>
   <td style="text-align:right;"> 165.0546 </td>
   <td style="text-align:right;"> 163.04010 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_107 </td>
   <td style="text-align:left;"> Pyridoxal hydrochloride </td>
   <td style="text-align:left;"> 167.058244 </td>
   <td style="text-align:right;"> 56.33479 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H9NO3 </td>
   <td style="text-align:right;"> 168.0655 </td>
   <td style="text-align:right;"> 166.05100 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Pyridines and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_108 </td>
   <td style="text-align:left;"> Norharmane </td>
   <td style="text-align:left;"> 168.068748 </td>
   <td style="text-align:right;"> 189.43951 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H8N2 </td>
   <td style="text-align:right;"> 169.0760 </td>
   <td style="text-align:right;"> 167.06150 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Indoles and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_109 </td>
   <td style="text-align:left;"> Pyridoxine hydrochloride </td>
   <td style="text-align:left;"> 169.0738932 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H11NO3 </td>
   <td style="text-align:right;"> 170.0812 </td>
   <td style="text-align:right;"> 168.06660 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Pyridines and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_110 </td>
   <td style="text-align:left;"> N?-Acetyl-L-asparagine </td>
   <td style="text-align:left;"> 174.064058 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H10N2O4 </td>
   <td style="text-align:right;"> 175.0713 </td>
   <td style="text-align:right;"> 173.05680 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_111 </td>
   <td style="text-align:left;"> O-Phospho-L-Threonine </td>
   <td style="text-align:left;"> 199.024577 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H10NO6P </td>
   <td style="text-align:right;"> 200.0319 </td>
   <td style="text-align:right;"> 198.01730 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_112 </td>
   <td style="text-align:left;"> N?-Acetyl-arginine </td>
   <td style="text-align:left;"> 216.122241 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H16N4O3 </td>
   <td style="text-align:right;"> 217.1295 </td>
   <td style="text-align:right;"> 215.11500 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_113 </td>
   <td style="text-align:left;"> Salsolinol 1-carboxylic acid </td>
   <td style="text-align:left;"> 223.084459 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H13NO4 </td>
   <td style="text-align:right;"> 224.0917 </td>
   <td style="text-align:right;"> 222.07720 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_114 </td>
   <td style="text-align:left;"> Pyridoxal 5'-phosphate monohydrate </td>
   <td style="text-align:left;"> 247.024577 </td>
   <td style="text-align:right;"> 43.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H10NO6P </td>
   <td style="text-align:right;"> 248.0319 </td>
   <td style="text-align:right;"> 246.01730 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_115 </td>
   <td style="text-align:left;"> Pyridoxamine-5'-phosphate </td>
   <td style="text-align:left;"> 248.056211 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H13N2O5P </td>
   <td style="text-align:right;"> 249.0635 </td>
   <td style="text-align:right;"> 247.04890 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_116 </td>
   <td style="text-align:left;"> Oleamide </td>
   <td style="text-align:left;"> 281.271864 </td>
   <td style="text-align:right;"> 631.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C18H35NO </td>
   <td style="text-align:right;"> 282.2791 </td>
   <td style="text-align:right;"> 280.26460 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Lipids </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_117 </td>
   <td style="text-align:left;"> Orotidine </td>
   <td style="text-align:left;"> 288.059368 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H12N2O8 </td>
   <td style="text-align:right;"> 289.0666 </td>
   <td style="text-align:right;"> 287.05210 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_118 </td>
   <td style="text-align:left;"> Quercitin dihydrate </td>
   <td style="text-align:left;"> 302.042654 </td>
   <td style="text-align:right;"> 391.21772 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C15H10O7 </td>
   <td style="text-align:right;"> 303.0499 </td>
   <td style="text-align:right;"> 301.03540 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Carbohydrates and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_119 </td>
   <td style="text-align:left;"> Phytosphingosine </td>
   <td style="text-align:left;"> 317.292994 </td>
   <td style="text-align:right;"> 484.07090 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C18H39NO3 </td>
   <td style="text-align:right;"> 318.3003 </td>
   <td style="text-align:right;"> 316.28570 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Fatty acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_120 </td>
   <td style="text-align:left;"> TMP (Thymidine 5'-monophosphate disodium salt hydrate) </td>
   <td style="text-align:left;"> 322.056606 </td>
   <td style="text-align:right;"> 45.39409 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H15N2O8P </td>
   <td style="text-align:right;"> 323.0639 </td>
   <td style="text-align:right;"> 321.04930 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_121 </td>
   <td style="text-align:left;"> NMN (?-Nicotinamide mononucleotide) </td>
   <td style="text-align:left;"> 334.056606 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H15N2O8P </td>
   <td style="text-align:right;"> 335.0639 </td>
   <td style="text-align:right;"> 333.04930 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Pyridines and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_122 </td>
   <td style="text-align:left;"> Nicotinic acid mononucleotide </td>
   <td style="text-align:left;"> 335.040622 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H14NO9P </td>
   <td style="text-align:right;"> 336.0479 </td>
   <td style="text-align:right;"> 334.03330 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Pyridines and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_123 </td>
   <td style="text-align:left;"> S-Nitroso-L-Glutathione </td>
   <td style="text-align:left;"> 336.073973 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H16N4O7S </td>
   <td style="text-align:right;"> 337.0813 </td>
   <td style="text-align:right;"> 335.06670 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Peptides </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_124 </td>
   <td style="text-align:left;"> Ursodeoxycholic acid </td>
   <td style="text-align:left;"> 392.29266 </td>
   <td style="text-align:right;"> 543.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C24H40O4 </td>
   <td style="text-align:right;"> 393.2999 </td>
   <td style="text-align:right;"> 391.28540 </td>
   <td style="text-align:left;"> Mix_D </td>
   <td style="text-align:left;"> Steroids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_125 </td>
   <td style="text-align:left;"> Acrylamide </td>
   <td style="text-align:left;"> 71.037114 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C3H5NO </td>
   <td style="text-align:right;"> 72.0444 </td>
   <td style="text-align:right;"> 70.02980 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Aldehydes and cetones </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_126 </td>
   <td style="text-align:left;"> Cis-Urocanic acid </td>
   <td style="text-align:left;"> 138.042928 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H6N2O2 </td>
   <td style="text-align:right;"> 139.0502 </td>
   <td style="text-align:right;"> 137.03560 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_127 </td>
   <td style="text-align:left;"> Allantoic acid (Diureidoacetic acid) </td>
   <td style="text-align:left;"> 176.054556 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H8N4O4 </td>
   <td style="text-align:right;"> 177.0618 </td>
   <td style="text-align:right;"> 175.04730 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_128 </td>
   <td style="text-align:left;"> Citric acid </td>
   <td style="text-align:left;"> 192.027005 </td>
   <td style="text-align:right;"> 36.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H8O7 </td>
   <td style="text-align:right;"> 193.0343 </td>
   <td style="text-align:right;"> 191.01970 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_129 </td>
   <td style="text-align:left;"> D-Pantothenic acid Calcium salt </td>
   <td style="text-align:left;"> 218.102849 </td>
   <td style="text-align:right;"> 320.98356 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H16NO5 </td>
   <td style="text-align:right;"> 219.1101 </td>
   <td style="text-align:right;"> 217.09560 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_130 </td>
   <td style="text-align:left;"> Cyclo(-His-Pro) </td>
   <td style="text-align:left;"> 234.111676 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H14N4O2 </td>
   <td style="text-align:right;"> 235.1190 </td>
   <td style="text-align:right;"> 233.10440 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Peptides </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_131 </td>
   <td style="text-align:left;"> Coenzyme Q1 (Ubiquinone) </td>
   <td style="text-align:left;"> 250.12051 </td>
   <td style="text-align:right;"> 485.91898 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C14H18O4 </td>
   <td style="text-align:right;"> 251.1278 </td>
   <td style="text-align:right;"> 249.11320 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Lipids </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_132 </td>
   <td style="text-align:left;"> Arbutin </td>
   <td style="text-align:left;"> 272.089605 </td>
   <td style="text-align:right;"> 36.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C12H16O7 </td>
   <td style="text-align:right;"> 273.0969 </td>
   <td style="text-align:right;"> 271.08230 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Carbohydrates and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_133 </td>
   <td style="text-align:left;"> Biochanin A (5,7-Dihydroxy-4'-methoxyisoflavone) </td>
   <td style="text-align:left;"> 284.068475 </td>
   <td style="text-align:right;"> 472.77196 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C16H12O5 </td>
   <td style="text-align:right;"> 285.0758 </td>
   <td style="text-align:right;"> 283.06120 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Miscellaneous </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_134 </td>
   <td style="text-align:left;"> Cinnabarinic acid (Cinnavalinic acid) </td>
   <td style="text-align:left;"> 300.038238 </td>
   <td style="text-align:right;"> 378.94999 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C14H8N2O6 </td>
   <td style="text-align:right;"> 301.0455 </td>
   <td style="text-align:right;"> 299.03100 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_135 </td>
   <td style="text-align:left;"> All-trans 4-Keto Retinoic acid </td>
   <td style="text-align:left;"> 314.188195 </td>
   <td style="text-align:right;"> 576.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C20H26O3 </td>
   <td style="text-align:right;"> 315.1955 </td>
   <td style="text-align:right;"> 313.18090 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Fatty acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_136 </td>
   <td style="text-align:left;"> cAMP (Adenosine 3',5'-cyclic monophosphate) </td>
   <td style="text-align:left;"> 329.052523 </td>
   <td style="text-align:right;"> 120.79020 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H12N5O6P </td>
   <td style="text-align:right;"> 330.0598 </td>
   <td style="text-align:right;"> 328.04520 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_137 </td>
   <td style="text-align:left;"> Carnosic acid (from Rosmarinus officinalis) </td>
   <td style="text-align:left;"> 332.19876 </td>
   <td style="text-align:right;"> 555.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C20H28O4 </td>
   <td style="text-align:right;"> 333.2060 </td>
   <td style="text-align:right;"> 331.19150 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Fatty acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_138 </td>
   <td style="text-align:left;"> cGMP (Guanosine 3',5'-cyclic monophosphate sodium salt) </td>
   <td style="text-align:left;"> 345.047437 </td>
   <td style="text-align:right;"> 77.16597 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H12N5O7P </td>
   <td style="text-align:right;"> 346.0547 </td>
   <td style="text-align:right;"> 344.04020 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_139 </td>
   <td style="text-align:left;"> d-ribo Phytosphingosine 1-Phosphate </td>
   <td style="text-align:left;"> 397.259327 </td>
   <td style="text-align:right;"> 555.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C18H40NO6P </td>
   <td style="text-align:right;"> 398.2666 </td>
   <td style="text-align:right;"> 396.25200 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Lipids </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_140 </td>
   <td style="text-align:left;"> CTP (Cytidine-5'-triphosphate disodium salt dihydrate) </td>
   <td style="text-align:left;"> 519.005651 </td>
   <td style="text-align:right;"> 77.16597 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H20N3O16P3 </td>
   <td style="text-align:right;"> 520.0129 </td>
   <td style="text-align:right;"> 517.99840 </td>
   <td style="text-align:left;"> Mix_E </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_141 </td>
   <td style="text-align:left;"> L-Threonine allo free </td>
   <td style="text-align:left;"> 119.058244 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H9NO3 </td>
   <td style="text-align:right;"> 120.0655 </td>
   <td style="text-align:right;"> 118.05100 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_142 </td>
   <td style="text-align:left;"> L-Hydroxyproline </td>
   <td style="text-align:left;"> 131.058244 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H9NO3 </td>
   <td style="text-align:right;"> 132.0655 </td>
   <td style="text-align:right;"> 130.05100 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_143 </td>
   <td style="text-align:left;"> L-Asparagine monohydrate </td>
   <td style="text-align:left;"> 132.053493 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H8N2O3 </td>
   <td style="text-align:right;"> 133.0608 </td>
   <td style="text-align:right;"> 131.04620 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_144 </td>
   <td style="text-align:left;"> L-(+)-Lysine Monohydrate </td>
   <td style="text-align:left;"> 146.105528 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H14N2O2 </td>
   <td style="text-align:right;"> 147.1128 </td>
   <td style="text-align:right;"> 145.09820 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_145 </td>
   <td style="text-align:left;"> L-Glutamic acid 5-methyl ester </td>
   <td style="text-align:left;"> 161.068808 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H11NO4 </td>
   <td style="text-align:right;"> 162.0761 </td>
   <td style="text-align:right;"> 160.06150 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_146 </td>
   <td style="text-align:left;"> DL-o-Tyrosine </td>
   <td style="text-align:left;"> 181.073894 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H11NO3 </td>
   <td style="text-align:right;"> 182.0812 </td>
   <td style="text-align:right;"> 180.06660 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_147 </td>
   <td style="text-align:left;"> L-Tyrosine </td>
   <td style="text-align:left;"> 181.073894 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H11NO3 </td>
   <td style="text-align:right;"> 182.0812 </td>
   <td style="text-align:right;"> 180.06660 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_148 </td>
   <td style="text-align:left;"> N-alpha-acetyl-L-lysine </td>
   <td style="text-align:left;"> 188.116093 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H16N2O3 </td>
   <td style="text-align:right;"> 189.1234 </td>
   <td style="text-align:right;"> 187.10880 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_149 </td>
   <td style="text-align:left;"> N-Acetyl-L-Tyrosine </td>
   <td style="text-align:left;"> 223.084459 </td>
   <td style="text-align:right;"> 127.72450 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H13NO4 </td>
   <td style="text-align:right;"> 224.0917 </td>
   <td style="text-align:right;"> 222.07720 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Amino acids and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_150 </td>
   <td style="text-align:left;"> Galactinol </td>
   <td style="text-align:left;"> 342.116215 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C12H22O11 </td>
   <td style="text-align:right;"> 343.1235 </td>
   <td style="text-align:right;"> 341.10890 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Carbohydrates and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_151 </td>
   <td style="text-align:left;"> Vitamin K1 </td>
   <td style="text-align:left;"> 450.34978 </td>
   <td style="text-align:right;"> 679.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C31H46O2 </td>
   <td style="text-align:right;"> 451.3571 </td>
   <td style="text-align:right;"> 449.34250 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Lipids </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_152 </td>
   <td style="text-align:left;"> 1,2,3,4-Tetrahydro-6,7-isoquinolinediol hydrobromide </td>
   <td style="text-align:left;"> 165.078979 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H11NO2 </td>
   <td style="text-align:right;"> 166.0863 </td>
   <td style="text-align:right;"> 164.07170 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Miscellaneous </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_153 </td>
   <td style="text-align:left;"> (+)-Catechin hydrate </td>
   <td style="text-align:left;"> 290.07904 </td>
   <td style="text-align:right;"> 174.14399 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C15H14O6 </td>
   <td style="text-align:right;"> 291.0863 </td>
   <td style="text-align:right;"> 289.07180 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Miscellaneous </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_154 </td>
   <td style="text-align:left;"> 1-Methyladenine </td>
   <td style="text-align:left;"> 149.070145 </td>
   <td style="text-align:right;"> 119.24377 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H7N5 </td>
   <td style="text-align:right;"> 150.0774 </td>
   <td style="text-align:right;"> 148.06290 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_155 </td>
   <td style="text-align:left;"> N6-Methyladenine </td>
   <td style="text-align:left;"> 149.070145 </td>
   <td style="text-align:right;"> 119.24377 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H7N5 </td>
   <td style="text-align:right;"> 150.0774 </td>
   <td style="text-align:right;"> 148.06290 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_156 </td>
   <td style="text-align:left;"> Xanthine </td>
   <td style="text-align:left;"> 152.033426 </td>
   <td style="text-align:right;"> 45.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H4N4O2 </td>
   <td style="text-align:right;"> 153.0407 </td>
   <td style="text-align:right;"> 151.02610 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_157 </td>
   <td style="text-align:left;"> 7-methylguanine </td>
   <td style="text-align:left;"> 165.06506 </td>
   <td style="text-align:right;"> 71.46982 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H7N5O </td>
   <td style="text-align:right;"> 166.0723 </td>
   <td style="text-align:right;"> 164.05780 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_158 </td>
   <td style="text-align:left;"> 8-Hydroxy-2'-deoxyguanosine </td>
   <td style="text-align:left;"> 283.09167 </td>
   <td style="text-align:right;"> 127.72450 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H13N5O5 </td>
   <td style="text-align:right;"> 284.0990 </td>
   <td style="text-align:right;"> 282.08440 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_159 </td>
   <td style="text-align:left;"> dGDP (2'-Deoxyguanosine-5'-monophosphate, Sodium salt hydrate) </td>
   <td style="text-align:left;"> 347.063088 </td>
   <td style="text-align:right;"> 50.68565 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H14N5O7P </td>
   <td style="text-align:right;"> 348.0704 </td>
   <td style="text-align:right;"> 346.05580 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Nucleosides and conjugates </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_160 </td>
   <td style="text-align:left;"> ?-Aminobutyric acid </td>
   <td style="text-align:left;"> 103.063329 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H9NO2 </td>
   <td style="text-align:right;"> 104.0706 </td>
   <td style="text-align:right;"> 102.05600 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_161 </td>
   <td style="text-align:left;"> 4-Imidazoleacetic acid hydrochloride </td>
   <td style="text-align:left;"> 126.042928 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H6N2O2 </td>
   <td style="text-align:right;"> 127.0502 </td>
   <td style="text-align:right;"> 125.03560 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_162 </td>
   <td style="text-align:left;"> L-Pyroglutamic acid </td>
   <td style="text-align:left;"> 129.042594 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H7NO3 </td>
   <td style="text-align:right;"> 130.0499 </td>
   <td style="text-align:right;"> 128.03530 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_163 </td>
   <td style="text-align:left;"> Dimethylmalonic acid </td>
   <td style="text-align:left;"> 132.04226 </td>
   <td style="text-align:right;"> 39.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H8O4 </td>
   <td style="text-align:right;"> 133.0495 </td>
   <td style="text-align:right;"> 131.03500 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_164 </td>
   <td style="text-align:left;"> 1-Methyl-4-imidazoleacetic acid </td>
   <td style="text-align:left;"> 140.058578 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H8N2O2 </td>
   <td style="text-align:right;"> 141.0659 </td>
   <td style="text-align:right;"> 139.05130 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_165 </td>
   <td style="text-align:left;"> 4-Guanidinobutyric acid </td>
   <td style="text-align:left;"> 145.085127 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H11O2N3 </td>
   <td style="text-align:right;"> 146.0924 </td>
   <td style="text-align:right;"> 144.07780 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_166 </td>
   <td style="text-align:left;"> ?-Ketoglutaric acid </td>
   <td style="text-align:left;"> 146.021525 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H6O5 </td>
   <td style="text-align:right;"> 147.0288 </td>
   <td style="text-align:right;"> 145.01420 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_167 </td>
   <td style="text-align:left;"> 2-Oxoglutaric acid </td>
   <td style="text-align:left;"> 146.021525 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H6O5 </td>
   <td style="text-align:right;"> 147.0288 </td>
   <td style="text-align:right;"> 145.01420 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_168 </td>
   <td style="text-align:left;"> L-2-Aminoadipic acid </td>
   <td style="text-align:left;"> 161.068809 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H11NO4 </td>
   <td style="text-align:right;"> 162.0761 </td>
   <td style="text-align:right;"> 160.06150 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_169 </td>
   <td style="text-align:left;"> 4-Pyridoxic acid </td>
   <td style="text-align:left;"> 183.053159 </td>
   <td style="text-align:right;"> 58.17477 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H9NO4 </td>
   <td style="text-align:right;"> 184.0604 </td>
   <td style="text-align:right;"> 182.04590 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_170 </td>
   <td style="text-align:left;"> 2-Methylhippuric acid </td>
   <td style="text-align:left;"> 193.073894 </td>
   <td style="text-align:right;"> 149.27535 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H11NO3 </td>
   <td style="text-align:right;"> 194.0812 </td>
   <td style="text-align:right;"> 192.06660 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Organic acids and derivatives </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_171 </td>
   <td style="text-align:left;"> L-Alanylglycine </td>
   <td style="text-align:left;"> 146.069143 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H10N2O3 </td>
   <td style="text-align:right;"> 147.0764 </td>
   <td style="text-align:right;"> 145.06190 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Peptides </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_172 </td>
   <td style="text-align:left;"> L-glycyl-L-hydroxyproline (Gly-Hyp-OH) </td>
   <td style="text-align:left;"> 188.079708 </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H12N2O4 </td>
   <td style="text-align:right;"> 189.0870 </td>
   <td style="text-align:right;"> 187.07240 </td>
   <td style="text-align:left;"> Mix_F </td>
   <td style="text-align:left;"> Peptides </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_173 </td>
   <td style="text-align:left;"> glycine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 76.0393 </td>
   <td style="text-align:right;"> 74.02480 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_174 </td>
   <td style="text-align:left;"> trimethylamine-N-oxide </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 76.0762 </td>
   <td style="text-align:right;"> 74.06060 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_175 </td>
   <td style="text-align:left;"> GABA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 104.0712 </td>
   <td style="text-align:right;"> 102.05550 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_176 </td>
   <td style="text-align:left;"> aminoisobutyric acid </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 104.0706 </td>
   <td style="text-align:right;"> 102.05610 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_177 </td>
   <td style="text-align:left;"> dimethylglycine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 104.0706 </td>
   <td style="text-align:right;"> 102.05610 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_178 </td>
   <td style="text-align:left;"> serine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 106.0499 </td>
   <td style="text-align:right;"> 104.03530 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_179 </td>
   <td style="text-align:left;"> creatinine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 114.0667 </td>
   <td style="text-align:right;"> 112.05110 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_180 </td>
   <td style="text-align:left;"> guanidinoacetic acid </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 118.0611 </td>
   <td style="text-align:right;"> 116.04660 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_181 </td>
   <td style="text-align:left;"> betaine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 118.0863 </td>
   <td style="text-align:right;"> 116.07170 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_182 </td>
   <td style="text-align:left;"> valine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 118.0863 </td>
   <td style="text-align:right;"> 116.07170 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_183 </td>
   <td style="text-align:left;"> homoserine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 120.0655 </td>
   <td style="text-align:right;"> 118.05100 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_184 </td>
   <td style="text-align:left;"> threonine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 120.0655 </td>
   <td style="text-align:right;"> 118.05100 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_185 </td>
   <td style="text-align:left;"> taurine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 126.0219 </td>
   <td style="text-align:right;"> 124.00740 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_186 </td>
   <td style="text-align:left;"> valine-d8 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 126.1365 </td>
   <td style="text-align:right;"> 124.05020 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_187 </td>
   <td style="text-align:left;"> 5-aminolevulinic acid </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 132.0655 </td>
   <td style="text-align:right;"> 130.05100 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_188 </td>
   <td style="text-align:left;"> hydroxyproline </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 132.0655 </td>
   <td style="text-align:right;"> 130.05100 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_189 </td>
   <td style="text-align:left;"> creatine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 132.0768 </td>
   <td style="text-align:right;"> 130.06220 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_190 </td>
   <td style="text-align:left;"> aspartate </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 134.0448 </td>
   <td style="text-align:right;"> 132.03020 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_191 </td>
   <td style="text-align:left;"> anthranilic acid </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 116.00888 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 138.0550 </td>
   <td style="text-align:right;"> 136.04040 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_192 </td>
   <td style="text-align:left;"> phosphoethanolamine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 142.0264 </td>
   <td style="text-align:right;"> 140.01180 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_193 </td>
   <td style="text-align:left;"> acetylcholine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 146.1176 </td>
   <td style="text-align:right;"> 144.10300 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_194 </td>
   <td style="text-align:left;"> butyrobetaine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 146.1176 </td>
   <td style="text-align:right;"> 144.10300 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_195 </td>
   <td style="text-align:left;"> glutamine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 39.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 147.0764 </td>
   <td style="text-align:right;"> 145.06190 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_196 </td>
   <td style="text-align:left;"> lysine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 147.1128 </td>
   <td style="text-align:right;"> 145.09830 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_197 </td>
   <td style="text-align:left;"> glutamate </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 148.0604 </td>
   <td style="text-align:right;"> 146.04590 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_198 </td>
   <td style="text-align:left;"> allantoin </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 159.0513 </td>
   <td style="text-align:right;"> 157.03670 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_199 </td>
   <td style="text-align:left;"> methionine sulfoxide </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 166.0532 </td>
   <td style="text-align:right;"> 164.03870 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_200 </td>
   <td style="text-align:left;"> phenylalanine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 166.0863 </td>
   <td style="text-align:right;"> 164.07170 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_201 </td>
   <td style="text-align:left;"> pyridoxine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 170.0812 </td>
   <td style="text-align:right;"> 168.06660 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_202 </td>
   <td style="text-align:left;"> phenylalanine-d8 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 174.1365 </td>
   <td style="text-align:right;"> 172.12190 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_203 </td>
   <td style="text-align:left;"> arginine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 175.1190 </td>
   <td style="text-align:right;"> 173.10440 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_204 </td>
   <td style="text-align:left;"> citrulline </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 176.1030 </td>
   <td style="text-align:right;"> 174.08840 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_205 </td>
   <td style="text-align:left;"> cotinine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 173.42627 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 177.1022 </td>
   <td style="text-align:right;"> 175.08770 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_206 </td>
   <td style="text-align:left;"> serotonin </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 173.42627 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 177.1022 </td>
   <td style="text-align:right;"> 175.08770 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_207 </td>
   <td style="text-align:left;"> tyrosine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 182.0812 </td>
   <td style="text-align:right;"> 180.06660 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_208 </td>
   <td style="text-align:left;"> NMMA (Tilarginine) </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 189.1346 </td>
   <td style="text-align:right;"> 187.12000 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_209 </td>
   <td style="text-align:left;"> kynurenic acid </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 180.00535 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 190.0499 </td>
   <td style="text-align:right;"> 188.03530 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_210 </td>
   <td style="text-align:left;"> 5-HIAA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 36.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 192.0655 </td>
   <td style="text-align:right;"> 190.05100 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_211 </td>
   <td style="text-align:left;"> metanephrine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 33.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 198.1130 </td>
   <td style="text-align:right;"> 196.09790 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_212 </td>
   <td style="text-align:left;"> tryptophan </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 48.42382 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 205.0972 </td>
   <td style="text-align:right;"> 203.08260 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_213 </td>
   <td style="text-align:left;"> kyurenine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 36.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 209.0926 </td>
   <td style="text-align:right;"> 207.07700 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_214 </td>
   <td style="text-align:left;"> 3-chlorotyrosine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 38.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 216.0422 </td>
   <td style="text-align:right;"> 214.02760 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_215 </td>
   <td style="text-align:left;"> 5-hydroxytryptophan </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 48.42382 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 221.0921 </td>
   <td style="text-align:right;"> 219.07750 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_216 </td>
   <td style="text-align:left;"> 3-nitrotyrosine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 48.42382 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 227.0662 </td>
   <td style="text-align:right;"> 225.05170 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_217 </td>
   <td style="text-align:left;"> 2-deoxyuridine </td>
   <td style="text-align:left;"> Nucleside </td>
   <td style="text-align:right;"> 41.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H12N2O5 </td>
   <td style="text-align:right;"> 229.0819 </td>
   <td style="text-align:right;"> 227.06730 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_218 </td>
   <td style="text-align:left;"> anserine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 38.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 241.1295 </td>
   <td style="text-align:right;"> 239.11500 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_219 </td>
   <td style="text-align:left;"> thymidine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 87.30018 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 243.0975 </td>
   <td style="text-align:right;"> 241.08300 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_220 </td>
   <td style="text-align:left;"> 2-deoxyadenosine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 159.67002 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 252.1091 </td>
   <td style="text-align:right;"> 250.09460 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_221 </td>
   <td style="text-align:left;"> C6 carnitine (hexanoylcarnitine) </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 194.95780 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 260.1856 </td>
   <td style="text-align:right;"> 258.17110 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_222 </td>
   <td style="text-align:left;"> atenolol </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 75.33822 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 267.1703 </td>
   <td style="text-align:right;"> 265.15580 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_223 </td>
   <td style="text-align:left;"> adenosine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 110.62600 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 268.1040 </td>
   <td style="text-align:right;"> 266.08950 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_224 </td>
   <td style="text-align:left;"> C7 carnitine (heptanoylcarnitine) </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 251.77709 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 274.2018 </td>
   <td style="text-align:right;"> 272.18620 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_225 </td>
   <td style="text-align:left;"> xanthosine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 61.58197 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 285.0830 </td>
   <td style="text-align:right;"> 283.06840 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_226 </td>
   <td style="text-align:left;"> C8 carnitine (octanoylcarnitine) </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 306.80210 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 288.2169 </td>
   <td style="text-align:right;"> 286.20240 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_227 </td>
   <td style="text-align:left;"> methylthioadenosine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 246.99231 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 298.0968 </td>
   <td style="text-align:right;"> 296.08230 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_228 </td>
   <td style="text-align:left;"> C9 carnitine (nonanoylcarnitine) </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 336.70699 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 302.2331 </td>
   <td style="text-align:right;"> 300.21750 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_229 </td>
   <td style="text-align:left;"> C10 carnitine (decanoylcarnitine) </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 397.11487 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 316.2488 </td>
   <td style="text-align:right;"> 314.23320 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_230 </td>
   <td style="text-align:left;"> cAMP </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 126.17654 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 330.0598 </td>
   <td style="text-align:right;"> 328.04520 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_231 </td>
   <td style="text-align:left;"> C12:1 carnitine (dodecenoylcarnitine) </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 369.00427 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 342.2644 </td>
   <td style="text-align:right;"> 340.24880 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_232 </td>
   <td style="text-align:left;"> C12 carnitine (dodecanoylcarnitine) </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 535.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 344.2795 </td>
   <td style="text-align:right;"> 342.26500 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_233 </td>
   <td style="text-align:left;"> cGMP </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 80.12301 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 346.0547 </td>
   <td style="text-align:right;"> 344.04020 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_234 </td>
   <td style="text-align:left;"> C14 carnitine (myristoylcarnitine) </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 519.12684 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 372.3108 </td>
   <td style="text-align:right;"> 370.29630 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_235 </td>
   <td style="text-align:left;"> 5-adenosylhomocysteine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 90.29067 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 385.1289 </td>
   <td style="text-align:right;"> 383.11430 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_236 </td>
   <td style="text-align:left;"> s-adenosylmethionine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 510.75347 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 399.1445 </td>
   <td style="text-align:right;"> 397.13000 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_237 </td>
   <td style="text-align:left;"> C16 carnitine (palmitoylcarnitine) </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 564.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 400.3421 </td>
   <td style="text-align:right;"> 398.32760 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_238 </td>
   <td style="text-align:left;"> lisinopril </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 117.80317 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 406.2336 </td>
   <td style="text-align:right;"> 404.21910 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_239 </td>
   <td style="text-align:left;"> carvedilol </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 350.46324 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 407.1965 </td>
   <td style="text-align:right;"> 405.18200 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_240 </td>
   <td style="text-align:left;"> C18:1 carnitine (oleylcarnitine) </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 573.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 426.3583 </td>
   <td style="text-align:right;"> 424.34270 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_241 </td>
   <td style="text-align:left;"> glipizide </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 470.68091 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 446.1857 </td>
   <td style="text-align:right;"> 444.17110 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_242 </td>
   <td style="text-align:left;"> verapamil </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 375.58335 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 455.2904 </td>
   <td style="text-align:right;"> 453.27590 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_243 </td>
   <td style="text-align:left;"> sildenafil </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 390.53580 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 475.2122 </td>
   <td style="text-align:right;"> 473.19760 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_244 </td>
   <td style="text-align:left;"> atorvastatin </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 519.12684 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 559.2603 </td>
   <td style="text-align:right;"> 557.24570 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_245 </td>
   <td style="text-align:left;"> triiodothyronine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 392.33009 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 651.7973 </td>
   <td style="text-align:right;"> 649.78280 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_246 </td>
   <td style="text-align:left;"> thyroxine </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 432.40265 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 777.6940 </td>
   <td style="text-align:right;"> 775.67940 </td>
   <td style="text-align:left;"> Mix_MM </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_247 </td>
   <td style="text-align:left;"> PURINE </td>
   <td style="text-align:left;"> 120.0436 </td>
   <td style="text-align:right;"> 90.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H4N4 </td>
   <td style="text-align:right;"> 121.0514 </td>
   <td style="text-align:right;"> 119.03580 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_248 </td>
   <td style="text-align:left;"> 3-METHYGLUTARIC ACID </td>
   <td style="text-align:left;"> 146.05791 </td>
   <td style="text-align:right;"> 93.09334 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H10O4 </td>
   <td style="text-align:right;"> 147.0657 </td>
   <td style="text-align:right;"> 145.05010 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_249 </td>
   <td style="text-align:left;"> D-RIBOSE </td>
   <td style="text-align:left;"> 150.05283 </td>
   <td style="text-align:right;"> 179.91823 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H10O5 </td>
   <td style="text-align:right;"> 151.0606 </td>
   <td style="text-align:right;"> 149.04500 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_250 </td>
   <td style="text-align:left;"> PHOSPHOCHOLINE </td>
   <td style="text-align:left;"> 183.06604 </td>
   <td style="text-align:right;"> 539.45486 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H14NO4P </td>
   <td style="text-align:right;"> 184.0738 </td>
   <td style="text-align:right;"> 182.05820 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_251 </td>
   <td style="text-align:left;"> AZELAIC ACID </td>
   <td style="text-align:left;"> 188.10486 </td>
   <td style="text-align:right;"> 312.77780 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H16O4 </td>
   <td style="text-align:right;"> 189.1127 </td>
   <td style="text-align:right;"> 187.09710 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_252 </td>
   <td style="text-align:left;"> L-KYNURENINE </td>
   <td style="text-align:left;"> 208.08479 </td>
   <td style="text-align:right;"> 58.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H12N2O3 </td>
   <td style="text-align:right;"> 209.0926 </td>
   <td style="text-align:right;"> 207.07700 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_253 </td>
   <td style="text-align:left;"> DETHIOBIOTIN </td>
   <td style="text-align:left;"> 214.13174 </td>
   <td style="text-align:right;"> 288.88638 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H18N2O3 </td>
   <td style="text-align:right;"> 215.1395 </td>
   <td style="text-align:right;"> 213.12390 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_254 </td>
   <td style="text-align:left;"> N-ACETYLSEROTONIN </td>
   <td style="text-align:left;"> 218.10553 </td>
   <td style="text-align:right;"> 323.84943 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C12H14N2O2 </td>
   <td style="text-align:right;"> 219.1133 </td>
   <td style="text-align:right;"> 217.09770 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_255 </td>
   <td style="text-align:left;"> ALPHA-D-GLUCOSE 1-PHOSPHATE </td>
   <td style="text-align:left;"> 260.02972 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H13O9P </td>
   <td style="text-align:right;"> 261.0375 </td>
   <td style="text-align:right;"> 259.02190 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_256 </td>
   <td style="text-align:left;"> THIAMINE </td>
   <td style="text-align:left;"> 265.11231 </td>
   <td style="text-align:right;"> 246.34801 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C12H17N4OS </td>
   <td style="text-align:right;"> 266.1201 </td>
   <td style="text-align:right;"> 264.10450 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_257 </td>
   <td style="text-align:left;"> ADENOSINE 2',3'-CYCLIC MONOPHOSPHATE </td>
   <td style="text-align:left;"> 267.09676 </td>
   <td style="text-align:right;"> 232.94551 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H13N5O4 </td>
   <td style="text-align:right;"> 268.1046 </td>
   <td style="text-align:right;"> 266.08900 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_258 </td>
   <td style="text-align:left;"> PETROSELINIC ACID </td>
   <td style="text-align:left;"> 282.25588 </td>
   <td style="text-align:right;"> 790.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C18H34O2 </td>
   <td style="text-align:right;"> 283.2637 </td>
   <td style="text-align:right;"> 281.24810 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_259 </td>
   <td style="text-align:left;"> N-ACETYLNEURAMINATE </td>
   <td style="text-align:left;"> 309.10598 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H19NO9 </td>
   <td style="text-align:right;"> 310.1138 </td>
   <td style="text-align:right;"> 308.09820 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_260 </td>
   <td style="text-align:left;"> CORTISOL </td>
   <td style="text-align:left;"> 362.20933 </td>
   <td style="text-align:right;"> 644.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C21H30O5 </td>
   <td style="text-align:right;"> 363.2171 </td>
   <td style="text-align:right;"> 361.20150 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_261 </td>
   <td style="text-align:left;"> CHOLESTERYL ACETATE </td>
   <td style="text-align:left;"> 428.36543 </td>
   <td style="text-align:right;"> 714.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C29H48O2 </td>
   <td style="text-align:right;"> 429.3732 </td>
   <td style="text-align:right;"> 427.35760 </td>
   <td style="text-align:left;"> Pool_1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_262 </td>
   <td style="text-align:left;"> DIACETYL </td>
   <td style="text-align:left;"> 86.03678 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H6O2 </td>
   <td style="text-align:right;"> 87.0446 </td>
   <td style="text-align:right;"> 85.02900 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_263 </td>
   <td style="text-align:left;"> 2-METHYLPROPANOATE </td>
   <td style="text-align:left;"> 88.05243 </td>
   <td style="text-align:right;"> 391.59804 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H8O2 </td>
   <td style="text-align:right;"> 89.0602 </td>
   <td style="text-align:right;"> 87.04460 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_264 </td>
   <td style="text-align:left;"> ANILINE </td>
   <td style="text-align:left;"> 93.05785 </td>
   <td style="text-align:right;"> 59.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H7N </td>
   <td style="text-align:right;"> 94.0657 </td>
   <td style="text-align:right;"> 92.05010 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_265 </td>
   <td style="text-align:left;"> PENTANOATE </td>
   <td style="text-align:left;"> 102.06808 </td>
   <td style="text-align:right;"> 391.59804 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H10O2 </td>
   <td style="text-align:right;"> 103.0759 </td>
   <td style="text-align:right;"> 101.06030 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_266 </td>
   <td style="text-align:left;"> CYTOSINE </td>
   <td style="text-align:left;"> 111.04326 </td>
   <td style="text-align:right;"> 33.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H5N3O </td>
   <td style="text-align:right;"> 112.0511 </td>
   <td style="text-align:right;"> 110.03550 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_267 </td>
   <td style="text-align:left;"> MALEIC ACID </td>
   <td style="text-align:left;"> 116.01096 </td>
   <td style="text-align:right;"> 64.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H4O4 </td>
   <td style="text-align:right;"> 117.0188 </td>
   <td style="text-align:right;"> 115.00320 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_268 </td>
   <td style="text-align:left;"> NICOTINATE </td>
   <td style="text-align:left;"> 123.03203 </td>
   <td style="text-align:right;"> 45.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H5NO2 </td>
   <td style="text-align:right;"> 124.0398 </td>
   <td style="text-align:right;"> 122.02420 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_269 </td>
   <td style="text-align:left;"> HEPTANOIC ACID </td>
   <td style="text-align:left;"> 130.09938 </td>
   <td style="text-align:right;"> 300.35370 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H14O2 </td>
   <td style="text-align:right;"> 131.1072 </td>
   <td style="text-align:right;"> 129.09160 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_270 </td>
   <td style="text-align:left;"> 3-UREIDOPROPIONATE </td>
   <td style="text-align:left;"> 132.05349 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H8N2O3 </td>
   <td style="text-align:right;"> 133.0613 </td>
   <td style="text-align:right;"> 131.04570 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_271 </td>
   <td style="text-align:left;"> PHENYL ACETATE </td>
   <td style="text-align:left;"> 136.05243 </td>
   <td style="text-align:right;"> 315.46423 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H8O2 </td>
   <td style="text-align:right;"> 137.0602 </td>
   <td style="text-align:right;"> 135.04460 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_272 </td>
   <td style="text-align:left;"> L-HISTIDINOL </td>
   <td style="text-align:left;"> 141.09021 </td>
   <td style="text-align:right;"> 830.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H11N3O </td>
   <td style="text-align:right;"> 142.0980 </td>
   <td style="text-align:right;"> 140.08240 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_273 </td>
   <td style="text-align:left;"> D-XYLOSE </td>
   <td style="text-align:left;"> 150.05283 </td>
   <td style="text-align:right;"> 179.46948 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H10O5 </td>
   <td style="text-align:right;"> 151.0606 </td>
   <td style="text-align:right;"> 149.04500 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_274 </td>
   <td style="text-align:left;"> 2',4'-DIHYDROXYACETOPHENONE </td>
   <td style="text-align:left;"> 152.04735 </td>
   <td style="text-align:right;"> 213.75875 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H8O3 </td>
   <td style="text-align:right;"> 153.0552 </td>
   <td style="text-align:right;"> 151.03960 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_275 </td>
   <td style="text-align:left;"> (S)-NICOTINE </td>
   <td style="text-align:left;"> 162.1157 </td>
   <td style="text-align:right;"> 828.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H14N2 </td>
   <td style="text-align:right;"> 163.1235 </td>
   <td style="text-align:right;"> 161.10790 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_276 </td>
   <td style="text-align:left;"> SUBERIC ACID </td>
   <td style="text-align:left;"> 174.08921 </td>
   <td style="text-align:right;"> 250.37272 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H14O4 </td>
   <td style="text-align:right;"> 175.0970 </td>
   <td style="text-align:right;"> 173.08140 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_277 </td>
   <td style="text-align:left;"> D-SORBITOL </td>
   <td style="text-align:left;"> 180.06339 </td>
   <td style="text-align:right;"> 175.40126 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H12O6 </td>
   <td style="text-align:right;"> 181.0712 </td>
   <td style="text-align:right;"> 179.05560 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_278 </td>
   <td style="text-align:left;"> 4-HYDROXY-2-QUINOLINECARBOXYLIC ACID </td>
   <td style="text-align:left;"> 189.04259 </td>
   <td style="text-align:right;"> 210.27171 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H7NO3 </td>
   <td style="text-align:right;"> 190.0504 </td>
   <td style="text-align:right;"> 188.03480 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_279 </td>
   <td style="text-align:left;"> D-TRYPTOPHAN </td>
   <td style="text-align:left;"> 204.08988 </td>
   <td style="text-align:right;"> 97.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H12N2O2 </td>
   <td style="text-align:right;"> 205.0977 </td>
   <td style="text-align:right;"> 203.08210 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_280 </td>
   <td style="text-align:left;"> MYRISTIC ACID </td>
   <td style="text-align:left;"> 228.20893 </td>
   <td style="text-align:right;"> 683.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C14H28O2 </td>
   <td style="text-align:right;"> 229.2167 </td>
   <td style="text-align:right;"> 227.20110 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_281 </td>
   <td style="text-align:left;"> PALMITOLEIC ACID </td>
   <td style="text-align:left;"> 254.22458 </td>
   <td style="text-align:right;"> 707.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C16H30O2 </td>
   <td style="text-align:right;"> 255.2324 </td>
   <td style="text-align:right;"> 253.21680 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_282 </td>
   <td style="text-align:left;"> ALPHA-D-GALACTOSE 1-PHOSPHATE </td>
   <td style="text-align:left;"> 260.02971 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H13O9P </td>
   <td style="text-align:right;"> 261.0375 </td>
   <td style="text-align:right;"> 259.02190 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_283 </td>
   <td style="text-align:left;"> ADENOSINE </td>
   <td style="text-align:left;"> 267.09676 </td>
   <td style="text-align:right;"> 94.03688 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H13N5O4 </td>
   <td style="text-align:right;"> 268.1046 </td>
   <td style="text-align:right;"> 266.08900 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_284 </td>
   <td style="text-align:left;"> INOSINE </td>
   <td style="text-align:left;"> 268.08077 </td>
   <td style="text-align:right;"> 66.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H12N4O5 </td>
   <td style="text-align:right;"> 269.0886 </td>
   <td style="text-align:right;"> 267.07300 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_285 </td>
   <td style="text-align:left;"> ELAIDIC ACID </td>
   <td style="text-align:left;"> 282.25588 </td>
   <td style="text-align:right;"> 792.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C18H34O2 </td>
   <td style="text-align:right;"> 283.2637 </td>
   <td style="text-align:right;"> 281.24810 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_286 </td>
   <td style="text-align:left;"> CYTIDINE 2',3'-CYCLIC MONO-PHOS-PHATE </td>
   <td style="text-align:left;"> 305.04129 </td>
   <td style="text-align:right;"> 36.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H12N3O7P </td>
   <td style="text-align:right;"> 306.0491 </td>
   <td style="text-align:right;"> 304.03350 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_287 </td>
   <td style="text-align:left;"> THYMIDINE 5'-MONOPHOSPHATE </td>
   <td style="text-align:left;"> 322.05661 </td>
   <td style="text-align:right;"> 81.83222 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H15N2O8P </td>
   <td style="text-align:right;"> 323.0644 </td>
   <td style="text-align:right;"> 321.04880 </td>
   <td style="text-align:left;"> Pool_2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_288 </td>
   <td style="text-align:left;"> BETA-ALANINE </td>
   <td style="text-align:left;"> 89.04768 </td>
   <td style="text-align:right;"> 43.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C3H7NO2 </td>
   <td style="text-align:right;"> 90.0555 </td>
   <td style="text-align:right;"> 88.03990 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_289 </td>
   <td style="text-align:left;"> 4-IMIDAZOLEACETIC ACID </td>
   <td style="text-align:left;"> 126.04293 </td>
   <td style="text-align:right;"> 89.70240 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H6N2O2 </td>
   <td style="text-align:right;"> 127.0507 </td>
   <td style="text-align:right;"> 125.03510 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_290 </td>
   <td style="text-align:left;"> 5-OXO-D-PROLINE </td>
   <td style="text-align:left;"> 129.04259 </td>
   <td style="text-align:right;"> 40.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H7NO3 </td>
   <td style="text-align:right;"> 130.0504 </td>
   <td style="text-align:right;"> 128.03480 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_291 </td>
   <td style="text-align:left;"> 4-METHYL-2-OXO-PENTANOIC ACID </td>
   <td style="text-align:left;"> 130.06299 </td>
   <td style="text-align:right;"> 57.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H10O3 </td>
   <td style="text-align:right;"> 131.0708 </td>
   <td style="text-align:right;"> 129.05520 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_292 </td>
   <td style="text-align:left;"> CIS-4-HYDROXY-D-PROLINE </td>
   <td style="text-align:left;"> 131.05824 </td>
   <td style="text-align:right;"> 43.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H9NO3 </td>
   <td style="text-align:right;"> 132.0660 </td>
   <td style="text-align:right;"> 130.05040 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_293 </td>
   <td style="text-align:left;"> MANDELIC ACID </td>
   <td style="text-align:left;"> 152.04734 </td>
   <td style="text-align:right;"> 214.39694 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H8O3 </td>
   <td style="text-align:right;"> 153.0551 </td>
   <td style="text-align:right;"> 151.03950 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_294 </td>
   <td style="text-align:left;"> PYRIDINE-2,3-DICARBOXYLATE </td>
   <td style="text-align:left;"> 167.02186 </td>
   <td style="text-align:right;"> 219.61672 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H5NO4 </td>
   <td style="text-align:right;"> 168.0297 </td>
   <td style="text-align:right;"> 166.01410 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_295 </td>
   <td style="text-align:left;"> INDOLE-3-ACETATE </td>
   <td style="text-align:left;"> 175.06333 </td>
   <td style="text-align:right;"> 324.01215 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H9NO2 </td>
   <td style="text-align:right;"> 176.0711 </td>
   <td style="text-align:right;"> 174.05550 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_296 </td>
   <td style="text-align:left;"> CAFFEATE </td>
   <td style="text-align:left;"> 180.04226 </td>
   <td style="text-align:right;"> 536.28287 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H8O4 </td>
   <td style="text-align:right;"> 181.0501 </td>
   <td style="text-align:right;"> 179.03450 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_297 </td>
   <td style="text-align:left;"> 4-PYRIDOXATE </td>
   <td style="text-align:left;"> 183.05316 </td>
   <td style="text-align:right;"> 79.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H9NO4 </td>
   <td style="text-align:right;"> 184.0610 </td>
   <td style="text-align:right;"> 182.04540 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_298 </td>
   <td style="text-align:left;"> LAURIC ACID </td>
   <td style="text-align:left;"> 200.17763 </td>
   <td style="text-align:right;"> 465.52597 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C12H24O2 </td>
   <td style="text-align:right;"> 201.1854 </td>
   <td style="text-align:right;"> 199.16980 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_299 </td>
   <td style="text-align:left;"> D-SACCHARIC ACID </td>
   <td style="text-align:left;"> 210.03757 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H10O8 </td>
   <td style="text-align:right;"> 211.0454 </td>
   <td style="text-align:right;"> 209.02980 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_300 </td>
   <td style="text-align:left;"> 3-NITRO-L-TYROSINE </td>
   <td style="text-align:left;"> 226.05897 </td>
   <td style="text-align:right;"> 84.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H10N2O5 </td>
   <td style="text-align:right;"> 227.0668 </td>
   <td style="text-align:right;"> 225.05120 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_301 </td>
   <td style="text-align:left;"> LUMICHROME </td>
   <td style="text-align:left;"> 242.08038 </td>
   <td style="text-align:right;"> 330.39187 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C12H10N4O2 </td>
   <td style="text-align:right;"> 243.0882 </td>
   <td style="text-align:right;"> 241.07260 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_302 </td>
   <td style="text-align:left;"> 3-METHOXY-L-TYROSINE </td>
   <td style="text-align:left;"> 247.10559 </td>
   <td style="text-align:right;"> 322.27223 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H17NO6 </td>
   <td style="text-align:right;"> 248.1134 </td>
   <td style="text-align:right;"> 246.09780 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_303 </td>
   <td style="text-align:left;"> PALMITATE </td>
   <td style="text-align:left;"> 256.24023 </td>
   <td style="text-align:right;"> 761.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C16H32O2 </td>
   <td style="text-align:right;"> 257.2480 </td>
   <td style="text-align:right;"> 255.23240 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_304 </td>
   <td style="text-align:left;"> D-FRUCTOSE 6-PHOSPHATE </td>
   <td style="text-align:left;"> 260.02972 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H13O9P </td>
   <td style="text-align:right;"> 261.0375 </td>
   <td style="text-align:right;"> 259.02190 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_305 </td>
   <td style="text-align:left;"> SPHINGANINE </td>
   <td style="text-align:left;"> 301.29808 </td>
   <td style="text-align:right;"> 529.90315 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C18H39NO2 </td>
   <td style="text-align:right;"> 302.3059 </td>
   <td style="text-align:right;"> 300.29030 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_306 </td>
   <td style="text-align:left;"> ADENOSINE 3',5'-CYCLIC MONOPHOSPHATE </td>
   <td style="text-align:left;"> 329.05252 </td>
   <td style="text-align:right;"> 143.06006 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H12N5O6P </td>
   <td style="text-align:right;"> 330.0603 </td>
   <td style="text-align:right;"> 328.04470 </td>
   <td style="text-align:left;"> Pool_3 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_307 </td>
   <td style="text-align:left;"> PROPENOATE </td>
   <td style="text-align:left;"> 72.02113 </td>
   <td style="text-align:right;"> 64.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C3H4O2 </td>
   <td style="text-align:right;"> 73.0289 </td>
   <td style="text-align:right;"> 71.01330 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_308 </td>
   <td style="text-align:left;"> PHENOL </td>
   <td style="text-align:left;"> 94.04187 </td>
   <td style="text-align:right;"> 202.02118 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H6O </td>
   <td style="text-align:right;"> 95.0497 </td>
   <td style="text-align:right;"> 93.03410 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_309 </td>
   <td style="text-align:left;"> 5-OXO-L-PROLINE </td>
   <td style="text-align:left;"> 129.04259 </td>
   <td style="text-align:right;"> 40.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H7NO3 </td>
   <td style="text-align:right;"> 130.0504 </td>
   <td style="text-align:right;"> 128.03480 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_310 </td>
   <td style="text-align:left;"> UROCANATE </td>
   <td style="text-align:left;"> 138.04293 </td>
   <td style="text-align:right;"> 40.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H6N2O2 </td>
   <td style="text-align:right;"> 139.0507 </td>
   <td style="text-align:right;"> 137.03510 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_311 </td>
   <td style="text-align:left;"> 4-ACETAMIDOBUTANOATE </td>
   <td style="text-align:left;"> 145.07389 </td>
   <td style="text-align:right;"> 45.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H11NO3 </td>
   <td style="text-align:right;"> 146.0817 </td>
   <td style="text-align:right;"> 144.06610 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_312 </td>
   <td style="text-align:left;"> PYRIDOXAL </td>
   <td style="text-align:left;"> 167.05824 </td>
   <td style="text-align:right;"> 36.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H9NO3 </td>
   <td style="text-align:right;"> 168.0660 </td>
   <td style="text-align:right;"> 166.05040 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_313 </td>
   <td style="text-align:left;"> THEOBROMINE </td>
   <td style="text-align:left;"> 180.06473 </td>
   <td style="text-align:right;"> 154.74631 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H8N4O2 </td>
   <td style="text-align:right;"> 181.0725 </td>
   <td style="text-align:right;"> 179.05690 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_314 </td>
   <td style="text-align:left;"> FERULATE </td>
   <td style="text-align:left;"> 194.05791 </td>
   <td style="text-align:right;"> 50.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H10O4 </td>
   <td style="text-align:right;"> 195.0657 </td>
   <td style="text-align:right;"> 193.05010 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_315 </td>
   <td style="text-align:left;"> 5-HYDROXY-L-TRYPTOPHAN </td>
   <td style="text-align:left;"> 220.08479 </td>
   <td style="text-align:right;"> 42.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H12N2O3 </td>
   <td style="text-align:right;"> 221.0926 </td>
   <td style="text-align:right;"> 219.07700 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_316 </td>
   <td style="text-align:left;"> THYMIDINE </td>
   <td style="text-align:left;"> 242.09027 </td>
   <td style="text-align:right;"> 443.94013 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H14N2O5 </td>
   <td style="text-align:right;"> 243.0981 </td>
   <td style="text-align:right;"> 241.08250 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_317 </td>
   <td style="text-align:left;"> D-MANNOSE 6-PHOSPHATE </td>
   <td style="text-align:left;"> 260.02972 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H13O9P </td>
   <td style="text-align:right;"> 261.0375 </td>
   <td style="text-align:right;"> 259.02190 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_318 </td>
   <td style="text-align:left;"> LINOLEATE </td>
   <td style="text-align:left;"> 280.24023 </td>
   <td style="text-align:right;"> 729.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C18H32O2 </td>
   <td style="text-align:right;"> 281.2480 </td>
   <td style="text-align:right;"> 279.23240 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_319 </td>
   <td style="text-align:left;"> RETINOATE </td>
   <td style="text-align:left;"> 300.20893 </td>
   <td style="text-align:right;"> 660.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C20H28O2 </td>
   <td style="text-align:right;"> 301.2167 </td>
   <td style="text-align:right;"> 299.20110 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_320 </td>
   <td style="text-align:left;"> D-RIBULOSE 1,5-BISPHOSPHATE </td>
   <td style="text-align:left;"> 309.98548 </td>
   <td style="text-align:right;"> 203.18846 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H12O11P2 </td>
   <td style="text-align:right;"> 310.9933 </td>
   <td style="text-align:right;"> 308.97770 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_321 </td>
   <td style="text-align:left;"> 3',5'-CYCLIC AMP </td>
   <td style="text-align:left;"> 329.05252 </td>
   <td style="text-align:right;"> 151.24446 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H12N5O6P </td>
   <td style="text-align:right;"> 330.0603 </td>
   <td style="text-align:right;"> 328.04470 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_322 </td>
   <td style="text-align:left;"> LAUROYLCARNITINE </td>
   <td style="text-align:left;"> 343.27225 </td>
   <td style="text-align:right;"> 534.11257 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C19H37NO4 </td>
   <td style="text-align:right;"> 344.2800 </td>
   <td style="text-align:right;"> 342.26440 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_323 </td>
   <td style="text-align:left;"> 3-ALPHA,11-BETA,17-ALPHA,21-TETRAHYDROXY- 5-ALPHA-PREGNAN-20-ONE </td>
   <td style="text-align:left;"> 366.24062 </td>
   <td style="text-align:right;"> 643.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C21H34O5 </td>
   <td style="text-align:right;"> 367.2484 </td>
   <td style="text-align:right;"> 365.23280 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_324 </td>
   <td style="text-align:left;"> BIS(2-ETHYLHEXYL)PHTHALATE </td>
   <td style="text-align:left;"> 390.27701 </td>
   <td style="text-align:right;"> 650.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C24H38O4 </td>
   <td style="text-align:right;"> 391.2848 </td>
   <td style="text-align:right;"> 389.26920 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_325 </td>
   <td style="text-align:left;"> 4-HYDROXY-3-METHOXYPHENYLGLYCOL </td>
   <td style="text-align:left;"> 454.23152 </td>
   <td style="text-align:right;"> 542.28354 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C22H34N2O8 </td>
   <td style="text-align:right;"> 455.2393 </td>
   <td style="text-align:right;"> 453.22370 </td>
   <td style="text-align:left;"> Pool_4 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_326 </td>
   <td style="text-align:left;"> PYRUVIC ALDEHYDE </td>
   <td style="text-align:left;"> 72.02113 </td>
   <td style="text-align:right;"> 66.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C3H4O2 </td>
   <td style="text-align:right;"> 73.0289 </td>
   <td style="text-align:right;"> 71.01330 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_327 </td>
   <td style="text-align:left;"> 2-HYDROXYPYRIDINE </td>
   <td style="text-align:left;"> 95.03711 </td>
   <td style="text-align:right;"> 66.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H5NO </td>
   <td style="text-align:right;"> 96.0449 </td>
   <td style="text-align:right;"> 94.02930 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_328 </td>
   <td style="text-align:left;"> INDOLE </td>
   <td style="text-align:left;"> 117.05785 </td>
   <td style="text-align:right;"> 239.69439 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H7N </td>
   <td style="text-align:right;"> 118.0657 </td>
   <td style="text-align:right;"> 116.05010 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_329 </td>
   <td style="text-align:left;"> BENZOATE </td>
   <td style="text-align:left;"> 122.03678 </td>
   <td style="text-align:right;"> 157.51453 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H5O2 </td>
   <td style="text-align:right;"> 123.0446 </td>
   <td style="text-align:right;"> 121.02900 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_330 </td>
   <td style="text-align:left;"> PICOLINIC ACID </td>
   <td style="text-align:left;"> 123.03203 </td>
   <td style="text-align:right;"> 45.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H5NO2 </td>
   <td style="text-align:right;"> 124.0398 </td>
   <td style="text-align:right;"> 122.02420 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_331 </td>
   <td style="text-align:left;"> GUAIACOL </td>
   <td style="text-align:left;"> 124.05243 </td>
   <td style="text-align:right;"> 75.33466 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H8O2 </td>
   <td style="text-align:right;"> 125.0602 </td>
   <td style="text-align:right;"> 123.04460 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_332 </td>
   <td style="text-align:left;"> SALICYLATE </td>
   <td style="text-align:left;"> 138.0317 </td>
   <td style="text-align:right;"> 107.03261 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H6O3 </td>
   <td style="text-align:right;"> 139.0395 </td>
   <td style="text-align:right;"> 137.02390 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_333 </td>
   <td style="text-align:left;"> MONO-METHYL GLUTARATE </td>
   <td style="text-align:left;"> 146.05791 </td>
   <td style="text-align:right;"> 84.13965 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H10O4 </td>
   <td style="text-align:right;"> 147.0657 </td>
   <td style="text-align:right;"> 145.05010 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_334 </td>
   <td style="text-align:left;"> 3-METHYL-2-OXINDOLE </td>
   <td style="text-align:left;"> 147.06841 </td>
   <td style="text-align:right;"> 213.27944 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H9NO </td>
   <td style="text-align:right;"> 148.0762 </td>
   <td style="text-align:right;"> 146.06060 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_335 </td>
   <td style="text-align:left;"> 3-AMINO-5-HYDROXYBENZOIC ACID </td>
   <td style="text-align:left;"> 153.0426 </td>
   <td style="text-align:right;"> 48.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H7NO3 </td>
   <td style="text-align:right;"> 154.0504 </td>
   <td style="text-align:right;"> 152.03480 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_336 </td>
   <td style="text-align:left;"> PHENYLPYRUVATE </td>
   <td style="text-align:left;"> 164.04735 </td>
   <td style="text-align:right;"> 67.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H8O3 </td>
   <td style="text-align:right;"> 165.0552 </td>
   <td style="text-align:right;"> 163.03960 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_337 </td>
   <td style="text-align:left;"> MYO-INOSITOL </td>
   <td style="text-align:left;"> 180.06339 </td>
   <td style="text-align:right;"> 155.16653 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C6H12O6 </td>
   <td style="text-align:right;"> 181.0712 </td>
   <td style="text-align:right;"> 179.05560 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_338 </td>
   <td style="text-align:left;"> 3-(4-HYDROXYPHENYL)LACTATE </td>
   <td style="text-align:left;"> 182.05791 </td>
   <td style="text-align:right;"> 293.11131 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H10O4 </td>
   <td style="text-align:right;"> 183.0657 </td>
   <td style="text-align:right;"> 181.05010 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_339 </td>
   <td style="text-align:left;"> 10-HYDROXYDECANOATE </td>
   <td style="text-align:left;"> 188.14125 </td>
   <td style="text-align:right;"> 378.81317 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H20O3 </td>
   <td style="text-align:right;"> 189.1491 </td>
   <td style="text-align:right;"> 187.13350 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_340 </td>
   <td style="text-align:left;"> 5-HYDROXYINDOLEACETATE </td>
   <td style="text-align:left;"> 191.05824 </td>
   <td style="text-align:right;"> 180.99449 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H9NO3 </td>
   <td style="text-align:right;"> 192.0660 </td>
   <td style="text-align:right;"> 190.05040 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_341 </td>
   <td style="text-align:left;"> L-TRYPTOPHAN </td>
   <td style="text-align:left;"> 204.08988 </td>
   <td style="text-align:right;"> 236.17240 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11H12N2O2 </td>
   <td style="text-align:right;"> 205.0977 </td>
   <td style="text-align:right;"> 203.08210 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_342 </td>
   <td style="text-align:left;"> URIDINE </td>
   <td style="text-align:left;"> 244.06954 </td>
   <td style="text-align:right;"> 406.98912 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H12N2O6 </td>
   <td style="text-align:right;"> 245.0773 </td>
   <td style="text-align:right;"> 243.06170 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_343 </td>
   <td style="text-align:left;"> BIOTIN </td>
   <td style="text-align:left;"> 244.08817 </td>
   <td style="text-align:right;"> 329.50525 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H16N2O3S </td>
   <td style="text-align:right;"> 245.0960 </td>
   <td style="text-align:right;"> 243.08040 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_344 </td>
   <td style="text-align:left;"> CHOLATE </td>
   <td style="text-align:left;"> 408.28758 </td>
   <td style="text-align:right;"> 540.23790 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C24H40O5 </td>
   <td style="text-align:right;"> 409.2954 </td>
   <td style="text-align:right;"> 407.27980 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_345 </td>
   <td style="text-align:left;"> 1,2-DIDECANOYL-SN-GLYCERO-3-PHOSPHOCHOLINE </td>
   <td style="text-align:left;"> 565.37436 </td>
   <td style="text-align:right;"> 719.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C28H56NO8P </td>
   <td style="text-align:right;"> 566.3822 </td>
   <td style="text-align:right;"> 564.36660 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_346 </td>
   <td style="text-align:left;"> URIDINE 5'-DIPHOSPHO-N-ACETYLGALACTOSAMINE </td>
   <td style="text-align:left;"> 607.08154 </td>
   <td style="text-align:right;"> 76.20000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C17H27N3O17P2 </td>
   <td style="text-align:right;"> 608.0893 </td>
   <td style="text-align:right;"> 606.07370 </td>
   <td style="text-align:left;"> Pool_5 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_347 </td>
   <td style="text-align:left;"> SUCCINATE </td>
   <td style="text-align:left;"> 118.02661 </td>
   <td style="text-align:right;"> 38.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H6O4 </td>
   <td style="text-align:right;"> 119.0344 </td>
   <td style="text-align:right;"> 117.01880 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_348 </td>
   <td style="text-align:left;"> INDOXYL SULFATE </td>
   <td style="text-align:left;"> 133.05277 </td>
   <td style="text-align:right;"> 206.70181 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H7NO </td>
   <td style="text-align:right;"> 134.0606 </td>
   <td style="text-align:right;"> 132.04500 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_349 </td>
   <td style="text-align:left;"> TRIGONELLINE </td>
   <td style="text-align:left;"> 137.04768 </td>
   <td style="text-align:right;"> 166.90316 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H7NO2 </td>
   <td style="text-align:right;"> 138.0555 </td>
   <td style="text-align:right;"> 136.03990 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_350 </td>
   <td style="text-align:left;"> TRANS-CINNAMATE </td>
   <td style="text-align:left;"> 148.05243 </td>
   <td style="text-align:right;"> 320.83028 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H8O2 </td>
   <td style="text-align:right;"> 149.0602 </td>
   <td style="text-align:right;"> 147.04460 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_351 </td>
   <td style="text-align:left;"> ARABINOSE </td>
   <td style="text-align:left;"> 150.05283 </td>
   <td style="text-align:right;"> 178.60865 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H10O5 </td>
   <td style="text-align:right;"> 151.0606 </td>
   <td style="text-align:right;"> 149.04500 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_352 </td>
   <td style="text-align:left;"> RESORCINOL MONOACETATE </td>
   <td style="text-align:left;"> 152.04735 </td>
   <td style="text-align:right;"> 242.40354 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H8O3 </td>
   <td style="text-align:right;"> 153.0552 </td>
   <td style="text-align:right;"> 151.03960 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_353 </td>
   <td style="text-align:left;"> XYLITOL </td>
   <td style="text-align:left;"> 152.06848 </td>
   <td style="text-align:right;"> 200.84907 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H12O5 </td>
   <td style="text-align:right;"> 153.0763 </td>
   <td style="text-align:right;"> 151.06070 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_354 </td>
   <td style="text-align:left;"> 3,4-DIHYDROXYPHENYLACETATE </td>
   <td style="text-align:left;"> 168.04226 </td>
   <td style="text-align:right;"> 93.15861 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C8H8O4 </td>
   <td style="text-align:right;"> 169.0501 </td>
   <td style="text-align:right;"> 167.03450 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_355 </td>
   <td style="text-align:left;"> 3-(4-HYDROXYPHENYL)PYRUVATE </td>
   <td style="text-align:left;"> 180.04226 </td>
   <td style="text-align:right;"> 539.13756 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H8O4 </td>
   <td style="text-align:right;"> 181.0501 </td>
   <td style="text-align:right;"> 179.03450 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_356 </td>
   <td style="text-align:left;"> 3,4-DIHYDROXY-L-PHENYLALANINE </td>
   <td style="text-align:left;"> 197.06881 </td>
   <td style="text-align:right;"> 220.16312 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H11NO4 </td>
   <td style="text-align:right;"> 198.0766 </td>
   <td style="text-align:right;"> 196.06100 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_357 </td>
   <td style="text-align:left;"> N6-(DELTA2-ISOPENTENYL)-ADENINE </td>
   <td style="text-align:left;"> 203.1171 </td>
   <td style="text-align:right;"> 319.07446 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C10H13N5 </td>
   <td style="text-align:right;"> 204.1249 </td>
   <td style="text-align:right;"> 202.10930 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_358 </td>
   <td style="text-align:left;"> OLEATE </td>
   <td style="text-align:left;"> 282.25588 </td>
   <td style="text-align:right;"> 792.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C18H34O2 </td>
   <td style="text-align:right;"> 283.2637 </td>
   <td style="text-align:right;"> 281.24810 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_359 </td>
   <td style="text-align:left;"> STEARATE </td>
   <td style="text-align:left;"> 284.27153 </td>
   <td style="text-align:right;"> 711.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C18H36O2 </td>
   <td style="text-align:right;"> 285.2793 </td>
   <td style="text-align:right;"> 283.26370 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_360 </td>
   <td style="text-align:left;"> RAC-GLYCEROL 1-MYRISTATE </td>
   <td style="text-align:left;"> 302.24571 </td>
   <td style="text-align:right;"> 657.60000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C17H34O4 </td>
   <td style="text-align:right;"> 303.2535 </td>
   <td style="text-align:right;"> 301.23790 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_361 </td>
   <td style="text-align:left;"> 1-OLEOYL-RAC-GLYCEROL </td>
   <td style="text-align:left;"> 356.29266 </td>
   <td style="text-align:right;"> 642.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C21H40O4 </td>
   <td style="text-align:right;"> 357.3005 </td>
   <td style="text-align:right;"> 355.28490 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_362 </td>
   <td style="text-align:left;"> SEROTONIN CREATININE SULFATE COMPLEX </td>
   <td style="text-align:left;"> 405.13182 </td>
   <td style="text-align:right;"> 245.32991 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C14H23N5O7S </td>
   <td style="text-align:right;"> 406.1396 </td>
   <td style="text-align:right;"> 404.12400 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_363 </td>
   <td style="text-align:left;"> URIDINE 5'-DIPHOSPHO-N-ACETYLGLUCOSAMINE </td>
   <td style="text-align:left;"> 607.08158 </td>
   <td style="text-align:right;"> 79.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C17H27N3O17P2 </td>
   <td style="text-align:right;"> 608.0894 </td>
   <td style="text-align:right;"> 606.07380 </td>
   <td style="text-align:left;"> Pool_6 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_364 </td>
   <td style="text-align:left;"> METHYLMALONATE </td>
   <td style="text-align:left;"> 118.02661 </td>
   <td style="text-align:right;"> 38.40000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C4H6O4 </td>
   <td style="text-align:right;"> 119.0344 </td>
   <td style="text-align:right;"> 117.01880 </td>
   <td style="text-align:left;"> Pool_7 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_365 </td>
   <td style="text-align:left;"> 4-HYDROXYBENZALDEHYDE </td>
   <td style="text-align:left;"> 122.03678 </td>
   <td style="text-align:right;"> 162.22213 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C7H6O2 </td>
   <td style="text-align:right;"> 123.0446 </td>
   <td style="text-align:right;"> 121.02900 </td>
   <td style="text-align:left;"> Pool_7 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_366 </td>
   <td style="text-align:left;"> N-ACETYL-DL-SERINE </td>
   <td style="text-align:left;"> 147.05316 </td>
   <td style="text-align:right;"> 34.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H9NO4 </td>
   <td style="text-align:right;"> 148.0610 </td>
   <td style="text-align:right;"> 146.04540 </td>
   <td style="text-align:left;"> Pool_7 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_367 </td>
   <td style="text-align:left;"> D-(-)-ARABINOSE </td>
   <td style="text-align:left;"> 150.05282 </td>
   <td style="text-align:right;"> 181.44612 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H10O5 </td>
   <td style="text-align:right;"> 151.0606 </td>
   <td style="text-align:right;"> 149.04500 </td>
   <td style="text-align:left;"> Pool_7 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_368 </td>
   <td style="text-align:left;"> GUANINE </td>
   <td style="text-align:left;"> 151.04941 </td>
   <td style="text-align:right;"> 203.58282 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H5N5O </td>
   <td style="text-align:right;"> 152.0572 </td>
   <td style="text-align:right;"> 150.04160 </td>
   <td style="text-align:left;"> Pool_7 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_369 </td>
   <td style="text-align:left;"> RIBITOL </td>
   <td style="text-align:left;"> 152.06848 </td>
   <td style="text-align:right;"> 203.58282 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C5H12O5 </td>
   <td style="text-align:right;"> 153.0763 </td>
   <td style="text-align:right;"> 151.06070 </td>
   <td style="text-align:left;"> Pool_7 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_370 </td>
   <td style="text-align:left;"> 3-(2-HYDROXYPHENYL)PROPANOATE </td>
   <td style="text-align:left;"> 166.063 </td>
   <td style="text-align:right;"> 462.81532 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H10O3 </td>
   <td style="text-align:right;"> 167.0708 </td>
   <td style="text-align:right;"> 165.05520 </td>
   <td style="text-align:left;"> Pool_7 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_371 </td>
   <td style="text-align:left;"> 3-METHOXYTYRAMINE </td>
   <td style="text-align:left;"> 167.09464 </td>
   <td style="text-align:right;"> 91.80000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C9H13NO2 </td>
   <td style="text-align:right;"> 168.1024 </td>
   <td style="text-align:right;"> 166.08680 </td>
   <td style="text-align:left;"> Pool_7 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_372 </td>
   <td style="text-align:left;"> THIAMINE MONOPHOSPHATE </td>
   <td style="text-align:left;"> 344.07081 </td>
   <td style="text-align:right;"> 420.87208 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C12H17N4O4PS </td>
   <td style="text-align:right;"> 345.0786 </td>
   <td style="text-align:right;"> 343.06300 </td>
   <td style="text-align:left;"> Pool_7 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_373 </td>
   <td style="text-align:left;"> CORTICOSTERONE </td>
   <td style="text-align:left;"> 346.21441 </td>
   <td style="text-align:right;"> 444.46515 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C21H30O4 </td>
   <td style="text-align:right;"> 347.2222 </td>
   <td style="text-align:right;"> 345.20660 </td>
   <td style="text-align:left;"> Pool_7 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_374 </td>
   <td style="text-align:left;"> CORTISONE </td>
   <td style="text-align:left;"> 360.19368 </td>
   <td style="text-align:right;"> 391.16229 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C21H28O5 </td>
   <td style="text-align:right;"> 361.2015 </td>
   <td style="text-align:right;"> 359.18590 </td>
   <td style="text-align:left;"> Pool_7 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_375 </td>
   <td style="text-align:left;"> SN-GLYCEROL 3-PHOSPHATE </td>
   <td style="text-align:left;"> 370.22328 </td>
   <td style="text-align:right;"> 307.27582 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C15H35N2O6P </td>
   <td style="text-align:right;"> 371.2311 </td>
   <td style="text-align:right;"> 369.21550 </td>
   <td style="text-align:left;"> Pool_7 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_376 </td>
   <td style="text-align:left;"> 3,5-DIIODO-L-THYRONINE </td>
   <td style="text-align:left;"> 524.89341 </td>
   <td style="text-align:right;"> 329.41253 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C15H13I2NO4 </td>
   <td style="text-align:right;"> 525.9012 </td>
   <td style="text-align:right;"> 523.88560 </td>
   <td style="text-align:left;"> Pool_7 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_377 </td>
   <td style="text-align:left;"> Indolepyruvate </td>
   <td style="text-align:left;"> 203.057675 </td>
   <td style="text-align:right;"> 293.05228 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB60484 </td>
   <td style="text-align:left;"> C00331 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 204.0655 </td>
   <td style="text-align:right;"> 202.04985 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tryptophan Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_378 </td>
   <td style="text-align:left;"> Phenylalanylleucine </td>
   <td style="text-align:left;"> 278.162675 </td>
   <td style="text-align:right;"> 190.37233 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 279.1705 </td>
   <td style="text-align:right;"> 277.15485 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Peptide </td>
   <td style="text-align:left;"> Dipeptide </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_379 </td>
   <td style="text-align:left;"> 4-formyl Indole(1) </td>
   <td style="text-align:left;"> 145.052175 </td>
   <td style="text-align:right;"> 220.62010 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 146.0600 </td>
   <td style="text-align:right;"> 144.04435 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tryptophan Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_380 </td>
   <td style="text-align:left;"> 4-formyl Indole(2) </td>
   <td style="text-align:left;"> 145.052175 </td>
   <td style="text-align:right;"> 184.31799 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 146.0600 </td>
   <td style="text-align:right;"> 144.04435 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tryptophan Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_381 </td>
   <td style="text-align:left;"> Thyroxine </td>
   <td style="text-align:left;"> 776.686675 </td>
   <td style="text-align:right;"> 437.22852 </td>
   <td style="text-align:left;"> 51-48-9 </td>
   <td style="text-align:left;"> HMDB01918 </td>
   <td style="text-align:left;"> C01829 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 777.6945 </td>
   <td style="text-align:right;"> 775.67885 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tyrosine Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_382 </td>
   <td style="text-align:left;"> Retinol (Vitamin A) </td>
   <td style="text-align:left;"> 268.218575 </td>
   <td style="text-align:right;"> 624.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00305 </td>
   <td style="text-align:left;"> C00473 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 269.2264 </td>
   <td style="text-align:right;"> 267.21075 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Vitamin A Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_383 </td>
   <td style="text-align:left;"> C5:1 AC </td>
   <td style="text-align:left;"> 243.146575 </td>
   <td style="text-align:right;"> 105.46671 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02366 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 244.1544 </td>
   <td style="text-align:right;"> 242.13875 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_384 </td>
   <td style="text-align:left;"> C10:0 AC </td>
   <td style="text-align:left;"> 315.240575 </td>
   <td style="text-align:right;"> 401.27048 </td>
   <td style="text-align:left;"> 1492-27-9 </td>
   <td style="text-align:left;"> HMDB00651 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 316.2484 </td>
   <td style="text-align:right;"> 314.23275 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_385 </td>
   <td style="text-align:left;"> C10:1 AC </td>
   <td style="text-align:left;"> 313.224975 </td>
   <td style="text-align:right;"> 371.26164 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13205 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 314.2328 </td>
   <td style="text-align:right;"> 312.21715 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_386 </td>
   <td style="text-align:left;"> C10:2 AC </td>
   <td style="text-align:left;"> 311.209275 </td>
   <td style="text-align:right;"> 329.18236 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13325 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 312.2171 </td>
   <td style="text-align:right;"> 310.20145 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_387 </td>
   <td style="text-align:left;"> C10:3 AC(1) </td>
   <td style="text-align:left;"> 309.193575 </td>
   <td style="text-align:right;"> 311.12449 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 310.2014 </td>
   <td style="text-align:right;"> 308.18575 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_388 </td>
   <td style="text-align:left;"> C10:3 AC(2) </td>
   <td style="text-align:left;"> 309.193675 </td>
   <td style="text-align:right;"> 299.07794 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 310.2015 </td>
   <td style="text-align:right;"> 308.18585 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_389 </td>
   <td style="text-align:left;"> C11:0 AC </td>
   <td style="text-align:left;"> 329.255875 </td>
   <td style="text-align:right;"> 431.23950 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 330.2637 </td>
   <td style="text-align:right;"> 328.24805 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_390 </td>
   <td style="text-align:left;"> C12:0 AC </td>
   <td style="text-align:left;"> 343.271775 </td>
   <td style="text-align:right;"> 473.12922 </td>
   <td style="text-align:left;"> 25518-54-1 </td>
   <td style="text-align:left;"> HMDB02250 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 344.2796 </td>
   <td style="text-align:right;"> 342.26395 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_391 </td>
   <td style="text-align:left;"> C12:1 AC </td>
   <td style="text-align:left;"> 341.256075 </td>
   <td style="text-align:right;"> 437.22852 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13326 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 342.2639 </td>
   <td style="text-align:right;"> 340.24825 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_392 </td>
   <td style="text-align:left;"> C14:1 AC </td>
   <td style="text-align:left;"> 369.287375 </td>
   <td style="text-align:right;"> 497.03117 </td>
   <td style="text-align:left;"> 835598-21-5 </td>
   <td style="text-align:left;"> HMDB02014 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 370.2952 </td>
   <td style="text-align:right;"> 368.27955 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_393 </td>
   <td style="text-align:left;"> C14:2 AC </td>
   <td style="text-align:left;"> 367.271675 </td>
   <td style="text-align:right;"> 467.14975 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13331 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 368.2795 </td>
   <td style="text-align:right;"> 366.26385 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_394 </td>
   <td style="text-align:left;"> C16 Sphingosine 1-phosphate </td>
   <td style="text-align:left;"> 351.216975 </td>
   <td style="text-align:right;"> 514.94090 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB60061 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 352.2248 </td>
   <td style="text-align:right;"> 350.20915 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Sphingolipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_395 </td>
   <td style="text-align:left;"> C16:1 AC </td>
   <td style="text-align:left;"> 397.318775 </td>
   <td style="text-align:right;"> 534.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 398.3266 </td>
   <td style="text-align:right;"> 396.31095 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_396 </td>
   <td style="text-align:left;"> C18 Sphingosine 1-phosphate </td>
   <td style="text-align:left;"> 379.248275 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> 26993-30-6 </td>
   <td style="text-align:left;"> HMDB00277 </td>
   <td style="text-align:left;"> C06124 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 380.2561 </td>
   <td style="text-align:right;"> 378.24045 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Sphingolipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_397 </td>
   <td style="text-align:left;"> C18:1 AC </td>
   <td style="text-align:left;"> 425.349775 </td>
   <td style="text-align:right;"> 570.00000 </td>
   <td style="text-align:left;"> 38677-66-6 </td>
   <td style="text-align:left;"> HMDB05065 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 426.3576 </td>
   <td style="text-align:right;"> 424.34195 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_398 </td>
   <td style="text-align:left;"> C18:2 AC </td>
   <td style="text-align:left;"> 423.334275 </td>
   <td style="text-align:right;"> 552.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB06461 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 424.3421 </td>
   <td style="text-align:right;"> 422.32645 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_399 </td>
   <td style="text-align:left;"> C4:0 AC </td>
   <td style="text-align:left;"> 231.146475 </td>
   <td style="text-align:right;"> 56.80904 </td>
   <td style="text-align:left;"> 25576-40-3 </td>
   <td style="text-align:left;"> HMDB02013 </td>
   <td style="text-align:left;"> C02862 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 232.1543 </td>
   <td style="text-align:right;"> 230.13865 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism (also BCAA Metabolism) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_400 </td>
   <td style="text-align:left;"> C5:0 AC </td>
   <td style="text-align:left;"> 245.162175 </td>
   <td style="text-align:right;"> 117.61520 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 246.1700 </td>
   <td style="text-align:right;"> 244.15435 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_401 </td>
   <td style="text-align:left;"> C5:0,DC AC </td>
   <td style="text-align:left;"> 289.152275 </td>
   <td style="text-align:right;"> 36.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 290.1601 </td>
   <td style="text-align:right;"> 288.14445 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_402 </td>
   <td style="text-align:left;"> C6:0 AC </td>
   <td style="text-align:left;"> 259.177975 </td>
   <td style="text-align:right;"> 202.47621 </td>
   <td style="text-align:left;"> 6418-78-6 </td>
   <td style="text-align:left;"> HMDB00705 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 260.1858 </td>
   <td style="text-align:right;"> 258.17015 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_403 </td>
   <td style="text-align:left;"> C8:0 AC </td>
   <td style="text-align:left;"> 287.209375 </td>
   <td style="text-align:right;"> 311.12449 </td>
   <td style="text-align:left;"> 25243-95-2 </td>
   <td style="text-align:left;"> HMDB00791 </td>
   <td style="text-align:left;"> C02838 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 288.2172 </td>
   <td style="text-align:right;"> 286.20155 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_404 </td>
   <td style="text-align:left;"> C8:1 AC </td>
   <td style="text-align:left;"> 285.193675 </td>
   <td style="text-align:right;"> 262.90008 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13324 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 286.2015 </td>
   <td style="text-align:right;"> 284.18585 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_405 </td>
   <td style="text-align:left;"> C9:0 AC </td>
   <td style="text-align:left;"> 301.224975 </td>
   <td style="text-align:right;"> 341.21297 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 302.2328 </td>
   <td style="text-align:right;"> 300.21715 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_406 </td>
   <td style="text-align:left;"> L-Carnitine </td>
   <td style="text-align:left;"> 161.104475 </td>
   <td style="text-align:right;"> 36.00000 </td>
   <td style="text-align:left;"> 541-15-1 </td>
   <td style="text-align:left;"> HMDB00062 </td>
   <td style="text-align:left;"> C00318 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 162.1123 </td>
   <td style="text-align:right;"> 160.09665 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Carnitine Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_407 </td>
   <td style="text-align:left;"> LysoPC(14:0) </td>
   <td style="text-align:left;"> 467.300675 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10379 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 468.3085 </td>
   <td style="text-align:right;"> 466.29285 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_408 </td>
   <td style="text-align:left;"> LysoPC(15:0) </td>
   <td style="text-align:left;"> 481.316175 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10381 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 482.3240 </td>
   <td style="text-align:right;"> 480.30835 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_409 </td>
   <td style="text-align:left;"> LysoPC(16:0) </td>
   <td style="text-align:left;"> 495.331675 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10382 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 496.3395 </td>
   <td style="text-align:right;"> 494.32385 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_410 </td>
   <td style="text-align:left;"> LysoPC(16:1) </td>
   <td style="text-align:left;"> 493.316175 </td>
   <td style="text-align:right;"> 570.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10383 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 494.3240 </td>
   <td style="text-align:right;"> 492.30835 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_411 </td>
   <td style="text-align:left;"> LysoPC(17:0) </td>
   <td style="text-align:left;"> 509.347575 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB12108 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 510.3554 </td>
   <td style="text-align:right;"> 508.33975 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_412 </td>
   <td style="text-align:left;"> LysoPC(18:0) </td>
   <td style="text-align:left;"> 523.362975 </td>
   <td style="text-align:right;"> 636.00000 </td>
   <td style="text-align:left;"> 5655-17-4 </td>
   <td style="text-align:left;"> HMDB10384 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 524.3708 </td>
   <td style="text-align:right;"> 522.35515 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_413 </td>
   <td style="text-align:left;"> LysoPC(18:2) </td>
   <td style="text-align:left;"> 519.331775 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10386 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 520.3396 </td>
   <td style="text-align:right;"> 518.32395 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_414 </td>
   <td style="text-align:left;"> LysoPC(20:0) </td>
   <td style="text-align:left;"> 551.394175 </td>
   <td style="text-align:right;"> 666.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10390 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 552.4020 </td>
   <td style="text-align:right;"> 550.38635 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_415 </td>
   <td style="text-align:left;"> LysoPC(20:1) </td>
   <td style="text-align:left;"> 549.378575 </td>
   <td style="text-align:right;"> 642.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10391 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 550.3864 </td>
   <td style="text-align:right;"> 548.37075 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_416 </td>
   <td style="text-align:left;"> LysoPC(20:2) </td>
   <td style="text-align:left;"> 547.363075 </td>
   <td style="text-align:right;"> 624.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10392 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 548.3709 </td>
   <td style="text-align:right;"> 546.35525 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_417 </td>
   <td style="text-align:left;"> LysoPC(20:3) </td>
   <td style="text-align:left;"> 545.346675 </td>
   <td style="text-align:right;"> 606.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10393 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 546.3545 </td>
   <td style="text-align:right;"> 544.33885 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_418 </td>
   <td style="text-align:left;"> LysoPC(20:4) </td>
   <td style="text-align:left;"> 543.331375 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10395 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 544.3392 </td>
   <td style="text-align:right;"> 542.32355 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_419 </td>
   <td style="text-align:left;"> LysoPC(22:0) </td>
   <td style="text-align:left;"> 579.426875 </td>
   <td style="text-align:right;"> 708.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10398 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 580.4347 </td>
   <td style="text-align:right;"> 578.41905 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_420 </td>
   <td style="text-align:left;"> LysoPC(22:4) </td>
   <td style="text-align:left;"> 571.362975 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10401 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 572.3708 </td>
   <td style="text-align:right;"> 570.35515 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_421 </td>
   <td style="text-align:left;"> LysoPC(22:6) </td>
   <td style="text-align:left;"> 567.331175 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10404 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 568.3390 </td>
   <td style="text-align:right;"> 566.32335 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_422 </td>
   <td style="text-align:left;"> LysoPC(O-18:0) </td>
   <td style="text-align:left;"> 509.383475 </td>
   <td style="text-align:right;"> 654.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11149 </td>
   <td style="text-align:left;"> C04317 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 510.3913 </td>
   <td style="text-align:right;"> 508.37565 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_423 </td>
   <td style="text-align:left;"> LysoPC(P-16:0) </td>
   <td style="text-align:left;"> 479.336775 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10407 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 480.3446 </td>
   <td style="text-align:right;"> 478.32895 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_424 </td>
   <td style="text-align:left;"> LysoPC(P-18:0) </td>
   <td style="text-align:left;"> 507.368175 </td>
   <td style="text-align:right;"> 630.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13122 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 508.3760 </td>
   <td style="text-align:right;"> 506.36035 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_425 </td>
   <td style="text-align:left;"> LysoPC(P-18:1) </td>
   <td style="text-align:left;"> 505.352275 </td>
   <td style="text-align:right;"> 624.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10408 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 506.3601 </td>
   <td style="text-align:right;"> 504.34445 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_426 </td>
   <td style="text-align:left;"> LysoPE(16:0) </td>
   <td style="text-align:left;"> 453.284875 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11473 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 454.2927 </td>
   <td style="text-align:right;"> 452.27705 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_427 </td>
   <td style="text-align:left;"> LysoPE(18:0) </td>
   <td style="text-align:left;"> 481.315975 </td>
   <td style="text-align:right;"> 630.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11129 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 482.3238 </td>
   <td style="text-align:right;"> 480.30815 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_428 </td>
   <td style="text-align:left;"> LysoPE(18:2) </td>
   <td style="text-align:left;"> 477.284875 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11477 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 478.2927 </td>
   <td style="text-align:right;"> 476.27705 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_429 </td>
   <td style="text-align:left;"> LysoPE(20:1) </td>
   <td style="text-align:left;"> 507.331875 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11482 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 508.3397 </td>
   <td style="text-align:right;"> 506.32405 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_430 </td>
   <td style="text-align:left;"> LysoPE(20:3) </td>
   <td style="text-align:left;"> 503.300375 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11484 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 504.3082 </td>
   <td style="text-align:right;"> 502.29255 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_431 </td>
   <td style="text-align:left;"> LysoPE(20:4) </td>
   <td style="text-align:left;"> 501.284875 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11487 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 502.2927 </td>
   <td style="text-align:right;"> 500.27705 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_432 </td>
   <td style="text-align:left;"> LysoPE(22:0) </td>
   <td style="text-align:left;"> 537.378475 </td>
   <td style="text-align:right;"> 648.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11490 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 538.3863 </td>
   <td style="text-align:right;"> 536.37065 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_433 </td>
   <td style="text-align:left;"> LysoPE(22:6) </td>
   <td style="text-align:left;"> 525.284575 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11496 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 526.2924 </td>
   <td style="text-align:right;"> 524.27675 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_434 </td>
   <td style="text-align:left;"> LysoPE(P-16:0) </td>
   <td style="text-align:left;"> 437.289775 </td>
   <td style="text-align:right;"> 612.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11152 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 438.2976 </td>
   <td style="text-align:right;"> 436.28195 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_435 </td>
   <td style="text-align:left;"> 7-Methylguanine </td>
   <td style="text-align:left;"> 165.064575 </td>
   <td style="text-align:right;"> 75.06761 </td>
   <td style="text-align:left;"> 578-76-7 </td>
   <td style="text-align:left;"> HMDB00897 </td>
   <td style="text-align:left;"> C02242 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 166.0724 </td>
   <td style="text-align:right;"> 164.05675 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Nucleotide </td>
   <td style="text-align:left;"> Purine Metabolism, Guanine containing </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_436 </td>
   <td style="text-align:left;"> gamma-glutamylleucine(1) </td>
   <td style="text-align:left;"> 260.136775 </td>
   <td style="text-align:right;"> 62.89682 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11171 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 261.1446 </td>
   <td style="text-align:right;"> 259.12895 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Peptide </td>
   <td style="text-align:left;"> Gamma-glutamyl Amino Acid </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_437 </td>
   <td style="text-align:left;"> gamma-glutamylleucine(2) </td>
   <td style="text-align:left;"> 260.136775 </td>
   <td style="text-align:right;"> 53.90338 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11171 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 261.1446 </td>
   <td style="text-align:right;"> 259.12895 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Peptide </td>
   <td style="text-align:left;"> Gamma-glutamyl Amino Acid </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_438 </td>
   <td style="text-align:left;"> Phenylalanyl-Tryptophan </td>
   <td style="text-align:left;"> 351.157875 </td>
   <td style="text-align:right;"> 226.66488 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB29006 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 352.1657 </td>
   <td style="text-align:right;"> 350.15005 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Peptide </td>
   <td style="text-align:left;"> Dipeptide </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_439 </td>
   <td style="text-align:left;"> Caffeine </td>
   <td style="text-align:left;"> 194.079675 </td>
   <td style="text-align:right;"> 280.99618 </td>
   <td style="text-align:left;"> 58-08-2 </td>
   <td style="text-align:left;"> HMDB01847 </td>
   <td style="text-align:left;"> C07481 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 195.0875 </td>
   <td style="text-align:right;"> 193.07185 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Xanthine Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_440 </td>
   <td style="text-align:left;"> Hippuric acid </td>
   <td style="text-align:left;"> 179.057575 </td>
   <td style="text-align:right;"> 123.68705 </td>
   <td style="text-align:left;"> 495-69-2 </td>
   <td style="text-align:left;"> HMDB00714 </td>
   <td style="text-align:left;"> C01586 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 180.0654 </td>
   <td style="text-align:right;"> 178.04975 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_441 </td>
   <td style="text-align:left;"> Piperine(1) </td>
   <td style="text-align:left;"> 285.136075 </td>
   <td style="text-align:right;"> 514.94090 </td>
   <td style="text-align:left;"> 30511-76-3 </td>
   <td style="text-align:left;"> HMDB29377 </td>
   <td style="text-align:left;"> C03882 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 286.1439 </td>
   <td style="text-align:right;"> 284.12825 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Food Component/Plant </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_442 </td>
   <td style="text-align:left;"> Piperine(2) </td>
   <td style="text-align:left;"> 285.136075 </td>
   <td style="text-align:right;"> 508.97258 </td>
   <td style="text-align:left;"> 30511-76-3 </td>
   <td style="text-align:left;"> HMDB29377 </td>
   <td style="text-align:left;"> C03882 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 286.1439 </td>
   <td style="text-align:right;"> 284.12825 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Food Component/Plant </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_443 </td>
   <td style="text-align:left;"> Theophylline </td>
   <td style="text-align:left;"> 180.064075 </td>
   <td style="text-align:right;"> 208.52577 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB0001889 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 181.0719 </td>
   <td style="text-align:right;"> 179.05625 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Xanthine Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_444 </td>
   <td style="text-align:left;"> N1-Methyl-2-pyridone-5-carboxamide(1) </td>
   <td style="text-align:left;"> 152.057975 </td>
   <td style="text-align:right;"> 75.06761 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB04193 </td>
   <td style="text-align:left;"> C05842 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 153.0658 </td>
   <td style="text-align:right;"> 151.05015 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Nicotinate and Nicotinamide Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_445 </td>
   <td style="text-align:left;"> N1-Methyl-2-pyridone-5-carboxamide(2) </td>
   <td style="text-align:left;"> 152.057975 </td>
   <td style="text-align:right;"> 105.46671 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB04193 </td>
   <td style="text-align:left;"> C05842 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 153.0658 </td>
   <td style="text-align:right;"> 151.05015 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Nicotinate and Nicotinamide Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_446 </td>
   <td style="text-align:left;"> MG(18:0) </td>
   <td style="text-align:left;"> 358.307575 </td>
   <td style="text-align:right;"> 660.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11131 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 359.3154 </td>
   <td style="text-align:right;"> 357.29975 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_447 </td>
   <td style="text-align:left;"> Oleoyl Ethyl Amide </td>
   <td style="text-align:left;"> 309.302575 </td>
   <td style="text-align:right;"> 666.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 310.3104 </td>
   <td style="text-align:right;"> 308.29475 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_448 </td>
   <td style="text-align:left;"> Sphinganine 1-phosphate </td>
   <td style="text-align:left;"> 381.264075 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> 19794-97-9 </td>
   <td style="text-align:left;"> HMDB01383 </td>
   <td style="text-align:left;"> C01120 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 382.2719 </td>
   <td style="text-align:right;"> 380.25625 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Sphingolipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_449 </td>
   <td style="text-align:left;"> N2,N2-Dimethylguanosine </td>
   <td style="text-align:left;"> 311.122675 </td>
   <td style="text-align:right;"> 172.20455 </td>
   <td style="text-align:left;"> 2140-67-2 </td>
   <td style="text-align:left;"> HMDB04824 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 312.1305 </td>
   <td style="text-align:right;"> 310.11485 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Nucleotide </td>
   <td style="text-align:left;"> Purine Metabolism, Guanine containing </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_450 </td>
   <td style="text-align:left;"> Alpha-N-Phenylacetyl-L-glutamine </td>
   <td style="text-align:left;"> 264.110575 </td>
   <td style="text-align:right;"> 160.08473 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB06344 </td>
   <td style="text-align:left;"> C04148 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 265.1184 </td>
   <td style="text-align:right;"> 263.10275 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Peptide </td>
   <td style="text-align:left;"> Acetylated Peptides </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_451 </td>
   <td style="text-align:left;"> Cyclo(ala-pro) </td>
   <td style="text-align:left;"> 168.089275 </td>
   <td style="text-align:right;"> 99.39007 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 169.0971 </td>
   <td style="text-align:right;"> 167.08145 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Peptide </td>
   <td style="text-align:left;"> Dipeptide </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_452 </td>
   <td style="text-align:left;"> gamma-glutamylphenylalanine </td>
   <td style="text-align:left;"> 294.121375 </td>
   <td style="text-align:right;"> 81.15062 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00594 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 295.1292 </td>
   <td style="text-align:right;"> 293.11355 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Peptide </td>
   <td style="text-align:left;"> Gamma-glutamyl Amino Acid </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_453 </td>
   <td style="text-align:left;"> Phenylalanylphenylalanine </td>
   <td style="text-align:left;"> 312.146975 </td>
   <td style="text-align:right;"> 214.57373 </td>
   <td style="text-align:left;"> 2577-40-4 </td>
   <td style="text-align:left;"> HMDB13302 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 313.1548 </td>
   <td style="text-align:right;"> 311.13915 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Peptide </td>
   <td style="text-align:left;"> Dipeptide </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_454 </td>
   <td style="text-align:left;"> 2-Piperidinone </td>
   <td style="text-align:left;"> 99.067775 </td>
   <td style="text-align:right;"> 75.06761 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11749 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 100.0756 </td>
   <td style="text-align:right;"> 98.05995 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Food Component/Plant </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_455 </td>
   <td style="text-align:left;"> Dihydroferulic acid </td>
   <td style="text-align:left;"> 276.030575 </td>
   <td style="text-align:right;"> 311.12449 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 277.0384 </td>
   <td style="text-align:right;"> 275.02275 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Food Component/Plant </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_456 </td>
   <td style="text-align:left;"> Paraxanthine </td>
   <td style="text-align:left;"> 180.063975 </td>
   <td style="text-align:right;"> 190.37233 </td>
   <td style="text-align:left;"> 611-59-6 </td>
   <td style="text-align:left;"> HMDB01860 </td>
   <td style="text-align:left;"> C13747 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 181.0718 </td>
   <td style="text-align:right;"> 179.05615 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Xanthine Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_457 </td>
   <td style="text-align:left;"> PS(28:2) </td>
   <td style="text-align:left;"> 675.409175 </td>
   <td style="text-align:right;"> 642.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB12342 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 676.4170 </td>
   <td style="text-align:right;"> 674.40135 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_458 </td>
   <td style="text-align:left;"> PS(30:1) </td>
   <td style="text-align:left;"> 705.456975 </td>
   <td style="text-align:right;"> 672.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 706.4648 </td>
   <td style="text-align:right;"> 704.44915 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_459 </td>
   <td style="text-align:left;"> PS(30:2) </td>
   <td style="text-align:left;"> 703.439375 </td>
   <td style="text-align:right;"> 654.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 704.4472 </td>
   <td style="text-align:right;"> 702.43155 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_460 </td>
   <td style="text-align:left;"> PS(32:3) </td>
   <td style="text-align:left;"> 729.458475 </td>
   <td style="text-align:right;"> 678.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 730.4663 </td>
   <td style="text-align:right;"> 728.45065 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_461 </td>
   <td style="text-align:left;"> SM(d18:1/12:0) </td>
   <td style="text-align:left;"> 646.503775 </td>
   <td style="text-align:right;"> 702.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB12096 </td>
   <td style="text-align:left;"> C00550 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 647.5116 </td>
   <td style="text-align:right;"> 645.49595 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_462 </td>
   <td style="text-align:left;"> SM(d18:1/14:0) </td>
   <td style="text-align:left;"> 674.535075 </td>
   <td style="text-align:right;"> 756.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB12097 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 675.5429 </td>
   <td style="text-align:right;"> 673.52725 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_463 </td>
   <td style="text-align:left;"> Kynurenic acid </td>
   <td style="text-align:left;"> 189.043025 </td>
   <td style="text-align:right;"> 190.37233 </td>
   <td style="text-align:left;"> 492-27-3 </td>
   <td style="text-align:left;"> HMDB00715 </td>
   <td style="text-align:left;"> C01717 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 190.0508 </td>
   <td style="text-align:right;"> 188.03520 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tryptophan Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_464 </td>
   <td style="text-align:left;"> 25-hydroxyvitamin D3 </td>
   <td style="text-align:left;"> 400.334625 </td>
   <td style="text-align:right;"> 666.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 401.3424 </td>
   <td style="text-align:right;"> 399.32680 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Vitamin D Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_465 </td>
   <td style="text-align:left;"> (S)-(-)-2-Hydroxyisocaproic acid </td>
   <td style="text-align:left;"> 132.079225 </td>
   <td style="text-align:right;"> 99.39007 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB0000746 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 133.0871 </td>
   <td style="text-align:right;"> 131.07140 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Leucine, Isoleucine and Valine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_466 </td>
   <td style="text-align:left;"> 3-Methyl-2-oxovaleric acid </td>
   <td style="text-align:left;"> 130.063625 </td>
   <td style="text-align:right;"> 62.89682 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB03736 </td>
   <td style="text-align:left;"> C00671 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 131.0714 </td>
   <td style="text-align:right;"> 129.05580 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Leucine, Isoleucine and Valine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_467 </td>
   <td style="text-align:left;"> N-Acetylleucine|N-Acetylisoleucine </td>
   <td style="text-align:left;"> 173.105825 </td>
   <td style="text-align:right;"> 172.20455 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11756|HMDB61684 </td>
   <td style="text-align:left;"> |C02710 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 174.1137 </td>
   <td style="text-align:right;"> 172.09800 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Leucine, Isoleucine and Valine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_468 </td>
   <td style="text-align:left;"> N-Acetyl-L-phenylalanine </td>
   <td style="text-align:left;"> 207.089925 </td>
   <td style="text-align:right;"> 208.52577 </td>
   <td style="text-align:left;"> 2018-61-3 </td>
   <td style="text-align:left;"> HMDB00512 </td>
   <td style="text-align:left;"> C03519 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 208.0977 </td>
   <td style="text-align:right;"> 206.08210 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Phenylalanine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_469 </td>
   <td style="text-align:left;"> Pyridoxic acid </td>
   <td style="text-align:left;"> 183.053625 </td>
   <td style="text-align:right;"> 62.89682 </td>
   <td style="text-align:left;"> 82-82-6 </td>
   <td style="text-align:left;"> HMDB00017 </td>
   <td style="text-align:left;"> C00847 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 184.0615 </td>
   <td style="text-align:right;"> 182.04580 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Vitamin B6 Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_470 </td>
   <td style="text-align:left;"> 3-carboxy-4-methyl-5-propyl-2-furanpropanoate (CMPF) </td>
   <td style="text-align:left;"> 240.100225 </td>
   <td style="text-align:right;"> 431.23950 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB61112 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 241.1080 </td>
   <td style="text-align:right;"> 239.09240 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_471 </td>
   <td style="text-align:left;"> 9-HODE </td>
   <td style="text-align:left;"> 296.235725 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB04702 </td>
   <td style="text-align:left;"> C14826 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 297.2436 </td>
   <td style="text-align:right;"> 295.22790 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_472 </td>
   <td style="text-align:left;"> C10:0,DC FA (Sebacic acid)(1) </td>
   <td style="text-align:left;"> 202.121125 </td>
   <td style="text-align:right;"> 383.26995 </td>
   <td style="text-align:left;"> 111-20-6 </td>
   <td style="text-align:left;"> HMDB00792 </td>
   <td style="text-align:left;"> C08277 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 203.1290 </td>
   <td style="text-align:right;"> 201.11330 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_473 </td>
   <td style="text-align:left;"> C10:0,DC FA (Sebacic acid)(2) </td>
   <td style="text-align:left;"> 202.121125 </td>
   <td style="text-align:right;"> 359.24695 </td>
   <td style="text-align:left;"> 111-20-6 </td>
   <td style="text-align:left;"> HMDB00792 </td>
   <td style="text-align:left;"> C08277 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 203.1290 </td>
   <td style="text-align:right;"> 201.11330 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_474 </td>
   <td style="text-align:left;"> C10:0,OH FA(1) </td>
   <td style="text-align:left;"> 188.141725 </td>
   <td style="text-align:right;"> 431.23950 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02203 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 189.1496 </td>
   <td style="text-align:right;"> 187.13390 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_475 </td>
   <td style="text-align:left;"> C10:0,OH FA(2) </td>
   <td style="text-align:left;"> 188.141825 </td>
   <td style="text-align:right;"> 455.18604 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02203 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 189.1497 </td>
   <td style="text-align:right;"> 187.13400 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_476 </td>
   <td style="text-align:left;"> C10:1 FA(1) </td>
   <td style="text-align:left;"> 170.131225 </td>
   <td style="text-align:right;"> 485.08338 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 171.1390 </td>
   <td style="text-align:right;"> 169.12340 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_477 </td>
   <td style="text-align:left;"> C10:1 FA(2) </td>
   <td style="text-align:left;"> 170.131125 </td>
   <td style="text-align:right;"> 497.03117 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 171.1389 </td>
   <td style="text-align:right;"> 169.12330 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_478 </td>
   <td style="text-align:left;"> C10:1,DC FA </td>
   <td style="text-align:left;"> 200.105425 </td>
   <td style="text-align:right;"> 341.21297 </td>
   <td style="text-align:left;"> 72879-22-2 </td>
   <td style="text-align:left;"> HMDB00603 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 201.1132 </td>
   <td style="text-align:right;"> 199.09760 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_479 </td>
   <td style="text-align:left;"> C10:1,OH FA </td>
   <td style="text-align:left;"> 186.126125 </td>
   <td style="text-align:right;"> 413.26286 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 187.1339 </td>
   <td style="text-align:right;"> 185.11830 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_480 </td>
   <td style="text-align:left;"> C10:2 FA </td>
   <td style="text-align:left;"> 168.115525 </td>
   <td style="text-align:right;"> 437.22852 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 169.1233 </td>
   <td style="text-align:right;"> 167.10770 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_481 </td>
   <td style="text-align:left;"> C10:3 FA(1) </td>
   <td style="text-align:left;"> 166.099825 </td>
   <td style="text-align:right;"> 425.24888 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 167.1077 </td>
   <td style="text-align:right;"> 165.09200 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_482 </td>
   <td style="text-align:left;"> C10:3 FA(2) </td>
   <td style="text-align:left;"> 166.099825 </td>
   <td style="text-align:right;"> 437.22852 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 167.1077 </td>
   <td style="text-align:right;"> 165.09200 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_483 </td>
   <td style="text-align:left;"> C11:0,DC FA </td>
   <td style="text-align:left;"> 216.136625 </td>
   <td style="text-align:right;"> 413.26286 </td>
   <td style="text-align:left;"> 1852-04-6 </td>
   <td style="text-align:left;"> HMDB00888 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 217.1445 </td>
   <td style="text-align:right;"> 215.12880 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_484 </td>
   <td style="text-align:left;"> C13:0,DC FA(1) </td>
   <td style="text-align:left;"> 244.167925 </td>
   <td style="text-align:right;"> 503.00267 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 245.1757 </td>
   <td style="text-align:right;"> 243.16010 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_485 </td>
   <td style="text-align:left;"> C13:0,DC FA(2) </td>
   <td style="text-align:left;"> 244.167925 </td>
   <td style="text-align:right;"> 479.10710 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 245.1757 </td>
   <td style="text-align:right;"> 243.16010 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_486 </td>
   <td style="text-align:left;"> C13:0,DC FA(3) </td>
   <td style="text-align:left;"> 244.167925 </td>
   <td style="text-align:right;"> 497.03117 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 245.1757 </td>
   <td style="text-align:right;"> 243.16010 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_487 </td>
   <td style="text-align:left;"> C13:0,DC FA(4) </td>
   <td style="text-align:left;"> 244.167925 </td>
   <td style="text-align:right;"> 485.08338 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 245.1757 </td>
   <td style="text-align:right;"> 243.16010 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_488 </td>
   <td style="text-align:left;"> C11:1 FA </td>
   <td style="text-align:left;"> 184.146825 </td>
   <td style="text-align:right;"> 514.94090 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB33724 </td>
   <td style="text-align:left;"> C13910 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 185.1547 </td>
   <td style="text-align:right;"> 183.13900 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_489 </td>
   <td style="text-align:left;"> C12:0 FA(1) </td>
   <td style="text-align:left;"> 200.178225 </td>
   <td style="text-align:right;"> 570.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 201.1860 </td>
   <td style="text-align:right;"> 199.17040 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_490 </td>
   <td style="text-align:left;"> C12:0 FA(2) </td>
   <td style="text-align:left;"> 200.178125 </td>
   <td style="text-align:right;"> 467.14975 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 201.1859 </td>
   <td style="text-align:right;"> 199.17030 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_491 </td>
   <td style="text-align:left;"> C12:0,DC FA </td>
   <td style="text-align:left;"> 230.152325 </td>
   <td style="text-align:right;"> 449.20179 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00623 </td>
   <td style="text-align:left;"> C02678 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 231.1601 </td>
   <td style="text-align:right;"> 229.14450 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_492 </td>
   <td style="text-align:left;"> C12:0,OH FA(1) </td>
   <td style="text-align:left;"> 216.173125 </td>
   <td style="text-align:right;"> 508.97258 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00387 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 217.1809 </td>
   <td style="text-align:right;"> 215.16530 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_493 </td>
   <td style="text-align:left;"> C12:0,OH FA(2) </td>
   <td style="text-align:left;"> 216.173025 </td>
   <td style="text-align:right;"> 491.05807 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00387 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 217.1808 </td>
   <td style="text-align:right;"> 215.16520 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_494 </td>
   <td style="text-align:left;"> C12:1 FA(1) </td>
   <td style="text-align:left;"> 198.162525 </td>
   <td style="text-align:right;"> 546.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00529 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 199.1704 </td>
   <td style="text-align:right;"> 197.15470 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_495 </td>
   <td style="text-align:left;"> C12:1 FA(2) </td>
   <td style="text-align:left;"> 198.162525 </td>
   <td style="text-align:right;"> 540.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00529 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 199.1704 </td>
   <td style="text-align:right;"> 197.15470 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_496 </td>
   <td style="text-align:left;"> C12:1, OH FA </td>
   <td style="text-align:left;"> 214.157625 </td>
   <td style="text-align:right;"> 473.12922 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 215.1654 </td>
   <td style="text-align:right;"> 213.14980 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_497 </td>
   <td style="text-align:left;"> C12:1,DC FA(1) </td>
   <td style="text-align:left;"> 228.136725 </td>
   <td style="text-align:right;"> 443.21595 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 229.1446 </td>
   <td style="text-align:right;"> 227.12890 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_498 </td>
   <td style="text-align:left;"> C12:1,DC FA(2) </td>
   <td style="text-align:left;"> 228.136725 </td>
   <td style="text-align:right;"> 419.25667 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 229.1446 </td>
   <td style="text-align:right;"> 227.12890 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_499 </td>
   <td style="text-align:left;"> C12:1,DC FA(3) </td>
   <td style="text-align:left;"> 228.136625 </td>
   <td style="text-align:right;"> 431.23950 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 229.1445 </td>
   <td style="text-align:right;"> 227.12880 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_500 </td>
   <td style="text-align:left;"> C12:1,DC FA(4) </td>
   <td style="text-align:left;"> 228.136725 </td>
   <td style="text-align:right;"> 467.14975 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 229.1446 </td>
   <td style="text-align:right;"> 227.12890 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_501 </td>
   <td style="text-align:left;"> C12:1,OH FA </td>
   <td style="text-align:left;"> 214.157525 </td>
   <td style="text-align:right;"> 491.05807 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 215.1653 </td>
   <td style="text-align:right;"> 213.14970 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_502 </td>
   <td style="text-align:left;"> C12:2,OH FA </td>
   <td style="text-align:left;"> 196.146825 </td>
   <td style="text-align:right;"> 520.90762 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 197.1547 </td>
   <td style="text-align:right;"> 195.13900 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_503 </td>
   <td style="text-align:left;"> C13:1,OH FA </td>
   <td style="text-align:left;"> 212.178225 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 213.1860 </td>
   <td style="text-align:right;"> 211.17040 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_504 </td>
   <td style="text-align:left;"> C14:0 FA </td>
   <td style="text-align:left;"> 228.209525 </td>
   <td style="text-align:right;"> 612.00000 </td>
   <td style="text-align:left;"> 544-63-8 </td>
   <td style="text-align:left;"> HMDB00806 </td>
   <td style="text-align:left;"> C06424 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 229.2174 </td>
   <td style="text-align:right;"> 227.20170 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_505 </td>
   <td style="text-align:left;"> C14:0,DC FA(1) </td>
   <td style="text-align:left;"> 258.183825 </td>
   <td style="text-align:right;"> 514.94090 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00872 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 259.1916 </td>
   <td style="text-align:right;"> 257.17600 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_506 </td>
   <td style="text-align:left;"> C14:0,DC FA(2) </td>
   <td style="text-align:left;"> 258.183725 </td>
   <td style="text-align:right;"> 529.35833 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00872 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 259.1916 </td>
   <td style="text-align:right;"> 257.17590 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_507 </td>
   <td style="text-align:left;"> C14:0,OH FA(1) </td>
   <td style="text-align:left;"> 244.204325 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 245.2122 </td>
   <td style="text-align:right;"> 243.19650 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_508 </td>
   <td style="text-align:left;"> C14:0,OH FA(2) </td>
   <td style="text-align:left;"> 244.204225 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 245.2121 </td>
   <td style="text-align:right;"> 243.19640 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_509 </td>
   <td style="text-align:left;"> C14:1 FA(1) </td>
   <td style="text-align:left;"> 226.193825 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02000 </td>
   <td style="text-align:left;"> C08322 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 227.2017 </td>
   <td style="text-align:right;"> 225.18600 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_510 </td>
   <td style="text-align:left;"> C14:1 FA(2) </td>
   <td style="text-align:left;"> 226.193825 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02000 </td>
   <td style="text-align:left;"> C08322 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 227.2017 </td>
   <td style="text-align:right;"> 225.18600 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_511 </td>
   <td style="text-align:left;"> C14:1,OH FA(1) </td>
   <td style="text-align:left;"> 242.188825 </td>
   <td style="text-align:right;"> 540.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 243.1967 </td>
   <td style="text-align:right;"> 241.18100 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_512 </td>
   <td style="text-align:left;"> C14:1,OH FA(2) </td>
   <td style="text-align:left;"> 242.188725 </td>
   <td style="text-align:right;"> 529.35833 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 243.1966 </td>
   <td style="text-align:right;"> 241.18090 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_513 </td>
   <td style="text-align:left;"> C14:2 FA </td>
   <td style="text-align:left;"> 224.178225 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 225.1860 </td>
   <td style="text-align:right;"> 223.17040 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_514 </td>
   <td style="text-align:left;"> C14:2,OH FA </td>
   <td style="text-align:left;"> 240.173125 </td>
   <td style="text-align:right;"> 514.94090 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 241.1809 </td>
   <td style="text-align:right;"> 239.16530 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_515 </td>
   <td style="text-align:left;"> C15:0 FA </td>
   <td style="text-align:left;"> 242.225225 </td>
   <td style="text-align:right;"> 630.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 243.2330 </td>
   <td style="text-align:right;"> 241.21740 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_516 </td>
   <td style="text-align:left;"> C15:0,OH FA </td>
   <td style="text-align:left;"> 258.220025 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 259.2278 </td>
   <td style="text-align:right;"> 257.21220 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_517 </td>
   <td style="text-align:left;"> C15:1 FA </td>
   <td style="text-align:left;"> 240.209425 </td>
   <td style="text-align:right;"> 606.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 241.2173 </td>
   <td style="text-align:right;"> 239.20160 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_518 </td>
   <td style="text-align:left;"> C16:0,2OH FA </td>
   <td style="text-align:left;"> 288.230525 </td>
   <td style="text-align:right;"> 612.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 289.2384 </td>
   <td style="text-align:right;"> 287.22270 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dihydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_519 </td>
   <td style="text-align:left;"> C16:0,DC FA(1) </td>
   <td style="text-align:left;"> 286.215025 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00672 </td>
   <td style="text-align:left;"> C19615 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 287.2228 </td>
   <td style="text-align:right;"> 285.20720 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_520 </td>
   <td style="text-align:left;"> C16:0,DC FA(2) </td>
   <td style="text-align:left;"> 286.214925 </td>
   <td style="text-align:right;"> 552.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00672 </td>
   <td style="text-align:left;"> C19615 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 287.2228 </td>
   <td style="text-align:right;"> 285.20710 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_521 </td>
   <td style="text-align:left;"> C16:0,OH FA(1) </td>
   <td style="text-align:left;"> 272.235825 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB31057 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 273.2437 </td>
   <td style="text-align:right;"> 271.22800 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_522 </td>
   <td style="text-align:left;"> C16:0,OH FA(2) </td>
   <td style="text-align:left;"> 272.235725 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB31057 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 273.2436 </td>
   <td style="text-align:right;"> 271.22790 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_523 </td>
   <td style="text-align:left;"> C16:1 FA </td>
   <td style="text-align:left;"> 254.225025 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> 373-49-9 </td>
   <td style="text-align:left;"> HMDB03229 </td>
   <td style="text-align:left;"> C08362 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 255.2329 </td>
   <td style="text-align:right;"> 253.21720 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_524 </td>
   <td style="text-align:left;"> C16:1,OH FA(1) </td>
   <td style="text-align:left;"> 270.220025 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 271.2278 </td>
   <td style="text-align:right;"> 269.21220 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_525 </td>
   <td style="text-align:left;"> C16:1,OH FA(2) </td>
   <td style="text-align:left;"> 270.220025 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 271.2278 </td>
   <td style="text-align:right;"> 269.21220 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_526 </td>
   <td style="text-align:left;"> C16:2 FA </td>
   <td style="text-align:left;"> 252.209425 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 253.2173 </td>
   <td style="text-align:right;"> 251.20160 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_527 </td>
   <td style="text-align:left;"> C16:2,OH FA </td>
   <td style="text-align:left;"> 268.204425 </td>
   <td style="text-align:right;"> 552.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 269.2122 </td>
   <td style="text-align:right;"> 267.19660 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_528 </td>
   <td style="text-align:left;"> C16:3 FA </td>
   <td style="text-align:left;"> 250.193725 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 251.2015 </td>
   <td style="text-align:right;"> 249.18590 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_529 </td>
   <td style="text-align:left;"> C16:4 FA </td>
   <td style="text-align:left;"> 248.178125 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 249.1859 </td>
   <td style="text-align:right;"> 247.17030 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_530 </td>
   <td style="text-align:left;"> C17:0 FA(1) </td>
   <td style="text-align:left;"> 270.256525 </td>
   <td style="text-align:right;"> 660.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 271.2643 </td>
   <td style="text-align:right;"> 269.24870 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_531 </td>
   <td style="text-align:left;"> C17:0 FA(2) </td>
   <td style="text-align:left;"> 266.224925 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 267.2328 </td>
   <td style="text-align:right;"> 265.21710 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_532 </td>
   <td style="text-align:left;"> C17:1 FA </td>
   <td style="text-align:left;"> 268.240825 </td>
   <td style="text-align:right;"> 636.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB60038 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 269.2486 </td>
   <td style="text-align:right;"> 267.23300 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_533 </td>
   <td style="text-align:left;"> C18:0,DC FA(1) </td>
   <td style="text-align:left;"> 314.246325 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00782 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 315.2541 </td>
   <td style="text-align:right;"> 313.23850 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_534 </td>
   <td style="text-align:left;"> C18:0,DC FA(2) </td>
   <td style="text-align:left;"> 314.246425 </td>
   <td style="text-align:right;"> 546.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00782 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 315.2543 </td>
   <td style="text-align:right;"> 313.23860 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_535 </td>
   <td style="text-align:left;"> C18:0,DC FA(3) </td>
   <td style="text-align:left;"> 314.246325 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00782 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 315.2541 </td>
   <td style="text-align:right;"> 313.23850 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_536 </td>
   <td style="text-align:left;"> C18:0,OH FA(1) </td>
   <td style="text-align:left;"> 300.266925 </td>
   <td style="text-align:right;"> 612.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C03045 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 301.2747 </td>
   <td style="text-align:right;"> 299.25910 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_537 </td>
   <td style="text-align:left;"> C18:0,OH FA(2) </td>
   <td style="text-align:left;"> 300.266925 </td>
   <td style="text-align:right;"> 636.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C03045 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 301.2747 </td>
   <td style="text-align:right;"> 299.25910 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_538 </td>
   <td style="text-align:left;"> C18:1,3OH FA </td>
   <td style="text-align:left;"> 330.241425 </td>
   <td style="text-align:right;"> 479.10710 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 331.2493 </td>
   <td style="text-align:right;"> 329.23360 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Trihydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_539 </td>
   <td style="text-align:left;"> C18:1,DC FA </td>
   <td style="text-align:left;"> 312.230825 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 313.2387 </td>
   <td style="text-align:right;"> 311.22300 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_540 </td>
   <td style="text-align:left;"> C18:1,OH FA(1) </td>
   <td style="text-align:left;"> 298.251325 </td>
   <td style="text-align:right;"> 612.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 299.2591 </td>
   <td style="text-align:right;"> 297.24350 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_541 </td>
   <td style="text-align:left;"> C18:1,OH FA(2) </td>
   <td style="text-align:left;"> 298.251425 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 299.2593 </td>
   <td style="text-align:right;"> 297.24360 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_542 </td>
   <td style="text-align:left;"> C18:2,DC FA </td>
   <td style="text-align:left;"> 310.215125 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 311.2230 </td>
   <td style="text-align:right;"> 309.20730 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_543 </td>
   <td style="text-align:left;"> C18:2,OH FA </td>
   <td style="text-align:left;"> 296.235625 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 297.2434 </td>
   <td style="text-align:right;"> 295.22780 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_544 </td>
   <td style="text-align:left;"> C18:3,OH FA(1) </td>
   <td style="text-align:left;"> 294.220025 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 295.2278 </td>
   <td style="text-align:right;"> 293.21220 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_545 </td>
   <td style="text-align:left;"> C18:3,OH FA(2) </td>
   <td style="text-align:left;"> 294.220125 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 295.2280 </td>
   <td style="text-align:right;"> 293.21230 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_546 </td>
   <td style="text-align:left;"> C18:3,OH FA(3) </td>
   <td style="text-align:left;"> 294.220025 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 295.2278 </td>
   <td style="text-align:right;"> 293.21220 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_547 </td>
   <td style="text-align:left;"> C18:4 FA </td>
   <td style="text-align:left;"> 276.209525 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB06547 </td>
   <td style="text-align:left;"> C16300 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 277.2174 </td>
   <td style="text-align:right;"> 275.20170 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_548 </td>
   <td style="text-align:left;"> C19:0 FA(1) </td>
   <td style="text-align:left;"> 298.287725 </td>
   <td style="text-align:right;"> 702.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00772 </td>
   <td style="text-align:left;"> C16535 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 299.2955 </td>
   <td style="text-align:right;"> 297.27990 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_549 </td>
   <td style="text-align:left;"> C19:0 FA(2) </td>
   <td style="text-align:left;"> 298.287525 </td>
   <td style="text-align:right;"> 672.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00772 </td>
   <td style="text-align:left;"> C16535 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 299.2953 </td>
   <td style="text-align:right;"> 297.27970 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_550 </td>
   <td style="text-align:left;"> C19:1 FA </td>
   <td style="text-align:left;"> 296.272025 </td>
   <td style="text-align:right;"> 666.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13622 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 297.2799 </td>
   <td style="text-align:right;"> 295.26420 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_551 </td>
   <td style="text-align:left;"> C20:0 FA </td>
   <td style="text-align:left;"> 312.303525 </td>
   <td style="text-align:right;"> 684.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02212 </td>
   <td style="text-align:left;"> C06425 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 313.3114 </td>
   <td style="text-align:right;"> 311.29570 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_552 </td>
   <td style="text-align:left;"> C20:0,2OH FA </td>
   <td style="text-align:left;"> 344.293125 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> 120727-26-6 </td>
   <td style="text-align:left;"> HMDB31923 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 345.3010 </td>
   <td style="text-align:right;"> 343.28530 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dihydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_553 </td>
   <td style="text-align:left;"> C20:1 FA </td>
   <td style="text-align:left;"> 310.287925 </td>
   <td style="text-align:right;"> 684.00000 </td>
   <td style="text-align:left;"> 5561-99-9 </td>
   <td style="text-align:left;"> HMDB02231 </td>
   <td style="text-align:left;"> C16526 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 311.2957 </td>
   <td style="text-align:right;"> 309.28010 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_554 </td>
   <td style="text-align:left;"> C20:2 FA </td>
   <td style="text-align:left;"> 308.272225 </td>
   <td style="text-align:right;"> 660.00000 </td>
   <td style="text-align:left;"> 5598-38-9 </td>
   <td style="text-align:left;"> HMDB05060 </td>
   <td style="text-align:left;"> C16525 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 309.2801 </td>
   <td style="text-align:right;"> 307.26440 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_555 </td>
   <td style="text-align:left;"> C20:2,OH FA </td>
   <td style="text-align:left;"> 324.267025 </td>
   <td style="text-align:right;"> 624.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 325.2749 </td>
   <td style="text-align:right;"> 323.25920 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_556 </td>
   <td style="text-align:left;"> C20:3 FA </td>
   <td style="text-align:left;"> 306.256425 </td>
   <td style="text-align:right;"> 642.00000 </td>
   <td style="text-align:left;"> 1783-84-2 </td>
   <td style="text-align:left;"> HMDB02925 </td>
   <td style="text-align:left;"> C03242 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 307.2643 </td>
   <td style="text-align:right;"> 305.24860 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_557 </td>
   <td style="text-align:left;"> C20:3,OH FA(1) </td>
   <td style="text-align:left;"> 322.251325 </td>
   <td style="text-align:right;"> 606.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 323.2591 </td>
   <td style="text-align:right;"> 321.24350 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_558 </td>
   <td style="text-align:left;"> C20:3,OH FA(2) </td>
   <td style="text-align:left;"> 322.251325 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 323.2591 </td>
   <td style="text-align:right;"> 321.24350 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_559 </td>
   <td style="text-align:left;"> C20:4,DC FA </td>
   <td style="text-align:left;"> 334.215125 </td>
   <td style="text-align:right;"> 461.16869 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 335.2230 </td>
   <td style="text-align:right;"> 333.20730 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_560 </td>
   <td style="text-align:left;"> C20:4,OH FA(1) </td>
   <td style="text-align:left;"> 320.235625 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 321.2434 </td>
   <td style="text-align:right;"> 319.22780 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_561 </td>
   <td style="text-align:left;"> C20:4,OH FA(2) </td>
   <td style="text-align:left;"> 320.235625 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 321.2434 </td>
   <td style="text-align:right;"> 319.22780 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_562 </td>
   <td style="text-align:left;"> C20:5 FA </td>
   <td style="text-align:left;"> 302.225125 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> 10417-94-4 </td>
   <td style="text-align:left;"> HMDB01999 </td>
   <td style="text-align:left;"> C06428 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 303.2330 </td>
   <td style="text-align:right;"> 301.21730 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_563 </td>
   <td style="text-align:left;"> C22:2 FA </td>
   <td style="text-align:left;"> 336.303525 </td>
   <td style="text-align:right;"> 702.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB61714 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 337.3114 </td>
   <td style="text-align:right;"> 335.29570 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_564 </td>
   <td style="text-align:left;"> C22:3 FA </td>
   <td style="text-align:left;"> 334.287725 </td>
   <td style="text-align:right;"> 672.00000 </td>
   <td style="text-align:left;"> 28845-86-5 </td>
   <td style="text-align:left;"> HMDB02823 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 335.2955 </td>
   <td style="text-align:right;"> 333.27990 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_565 </td>
   <td style="text-align:left;"> C22:4 FA </td>
   <td style="text-align:left;"> 332.272225 </td>
   <td style="text-align:right;"> 654.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02226 </td>
   <td style="text-align:left;"> C16527 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 333.2801 </td>
   <td style="text-align:right;"> 331.26440 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_566 </td>
   <td style="text-align:left;"> C22:5 FA </td>
   <td style="text-align:left;"> 330.256525 </td>
   <td style="text-align:right;"> 642.00000 </td>
   <td style="text-align:left;"> 24880-45-3 </td>
   <td style="text-align:left;"> HMDB06528 </td>
   <td style="text-align:left;"> C16513 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 331.2643 </td>
   <td style="text-align:right;"> 329.24870 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_567 </td>
   <td style="text-align:left;"> C24:4 FA </td>
   <td style="text-align:left;"> 360.303525 </td>
   <td style="text-align:right;"> 690.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB06246 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 361.3114 </td>
   <td style="text-align:right;"> 359.29570 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_568 </td>
   <td style="text-align:left;"> C24:5 FA </td>
   <td style="text-align:left;"> 358.287925 </td>
   <td style="text-align:right;"> 672.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB06322 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 359.2957 </td>
   <td style="text-align:right;"> 357.28010 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_569 </td>
   <td style="text-align:left;"> C24:6 FA </td>
   <td style="text-align:left;"> 356.272125 </td>
   <td style="text-align:right;"> 654.00000 </td>
   <td style="text-align:left;"> 81247-23-6 </td>
   <td style="text-align:left;"> HMDB02007 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 357.2799 </td>
   <td style="text-align:right;"> 355.26430 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_570 </td>
   <td style="text-align:left;"> C25:0,OH FA </td>
   <td style="text-align:left;"> 398.376425 </td>
   <td style="text-align:right;"> 690.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 399.3843 </td>
   <td style="text-align:right;"> 397.36860 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_571 </td>
   <td style="text-align:left;"> C8:0,OH FA(1) </td>
   <td style="text-align:left;"> 160.110425 </td>
   <td style="text-align:right;"> 311.12449 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 161.1182 </td>
   <td style="text-align:right;"> 159.10260 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_572 </td>
   <td style="text-align:left;"> C8:0,OH FA(2) </td>
   <td style="text-align:left;"> 160.110525 </td>
   <td style="text-align:right;"> 335.19846 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 161.1183 </td>
   <td style="text-align:right;"> 159.10270 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_573 </td>
   <td style="text-align:left;"> C8:0,OH FA(3) </td>
   <td style="text-align:left;"> 160.110425 </td>
   <td style="text-align:right;"> 232.70806 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 161.1182 </td>
   <td style="text-align:right;"> 159.10260 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_574 </td>
   <td style="text-align:left;"> C8:2,OH FA(1) </td>
   <td style="text-align:left;"> 156.079125 </td>
   <td style="text-align:right;"> 220.62010 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 157.0870 </td>
   <td style="text-align:right;"> 155.07130 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_575 </td>
   <td style="text-align:left;"> C8:2,OH FA(2) </td>
   <td style="text-align:left;"> 156.079125 </td>
   <td style="text-align:right;"> 299.07794 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 157.0870 </td>
   <td style="text-align:right;"> 155.07130 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_576 </td>
   <td style="text-align:left;"> C9:0,DC FA (Azelaic acid) </td>
   <td style="text-align:left;"> 188.105425 </td>
   <td style="text-align:right;"> 329.18236 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00784 </td>
   <td style="text-align:left;"> C08261 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 189.1132 </td>
   <td style="text-align:right;"> 187.09760 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_577 </td>
   <td style="text-align:left;"> C9:1,OH FA </td>
   <td style="text-align:left;"> 172.110525 </td>
   <td style="text-align:right;"> 341.21297 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 173.1183 </td>
   <td style="text-align:right;"> 171.10270 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_578 </td>
   <td style="text-align:left;"> LysoPE(16:1) </td>
   <td style="text-align:left;"> 451.270225 </td>
   <td style="text-align:right;"> 570.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11474 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 452.2781 </td>
   <td style="text-align:right;"> 450.26240 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_579 </td>
   <td style="text-align:left;"> LysoPE(18:1) </td>
   <td style="text-align:left;"> 479.301725 </td>
   <td style="text-align:right;"> 606.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11475 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 480.3096 </td>
   <td style="text-align:right;"> 478.29390 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_580 </td>
   <td style="text-align:left;"> LysoPE(20:0) </td>
   <td style="text-align:left;"> 509.348225 </td>
   <td style="text-align:right;"> 636.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11481 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 510.3560 </td>
   <td style="text-align:right;"> 508.34040 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_581 </td>
   <td style="text-align:left;"> LysoPE(22:4) </td>
   <td style="text-align:left;"> 529.316825 </td>
   <td style="text-align:right;"> 612.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11493 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 530.3247 </td>
   <td style="text-align:right;"> 528.30900 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_582 </td>
   <td style="text-align:left;"> LysoPE(22:5) </td>
   <td style="text-align:left;"> 527.301725 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11494 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 528.3095 </td>
   <td style="text-align:right;"> 526.29390 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_583 </td>
   <td style="text-align:left;"> LysoPI(18:1) </td>
   <td style="text-align:left;"> 598.312625 </td>
   <td style="text-align:right;"> 714.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB61693 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 599.3205 </td>
   <td style="text-align:right;"> 597.30480 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_584 </td>
   <td style="text-align:left;"> LysoPI(20:4) </td>
   <td style="text-align:left;"> 620.296625 </td>
   <td style="text-align:right;"> 678.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB61690 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 621.3044 </td>
   <td style="text-align:right;"> 619.28880 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_585 </td>
   <td style="text-align:left;"> 1-Methylxanthine </td>
   <td style="text-align:left;"> 166.049625 </td>
   <td style="text-align:right;"> 117.61520 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10738 </td>
   <td style="text-align:left;"> C16358 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 167.0574 </td>
   <td style="text-align:right;"> 165.04180 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Xanthine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_586 </td>
   <td style="text-align:left;"> Dihydro-3-coumaric acid </td>
   <td style="text-align:left;"> 166.063525 </td>
   <td style="text-align:right;"> 196.42507 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> C11457 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 167.0713 </td>
   <td style="text-align:right;"> 165.05570 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_587 </td>
   <td style="text-align:left;"> 2-Hydroxyphenylacetate </td>
   <td style="text-align:left;"> 152.047825 </td>
   <td style="text-align:right;"> 141.89306 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00669 </td>
   <td style="text-align:left;"> C05852 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 153.0557 </td>
   <td style="text-align:right;"> 151.04000 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tyrosine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_588 </td>
   <td style="text-align:left;"> Gentisic acid </td>
   <td style="text-align:left;"> 154.027125 </td>
   <td style="text-align:right;"> 129.75731 </td>
   <td style="text-align:left;"> 490-79-9 </td>
   <td style="text-align:left;"> HMDB00152 </td>
   <td style="text-align:left;"> C00628 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 155.0350 </td>
   <td style="text-align:right;"> 153.01930 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tyrosine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_589 </td>
   <td style="text-align:left;"> L-?-Hydroxyisovaleric acid </td>
   <td style="text-align:left;"> 118.063525 </td>
   <td style="text-align:right;"> 36.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00407 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 119.0713 </td>
   <td style="text-align:right;"> 117.05570 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Leucine, Isoleucine and Valine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_590 </td>
   <td style="text-align:left;"> p-Cresol glucuronide </td>
   <td style="text-align:left;"> 284.090025 </td>
   <td style="text-align:right;"> 147.95854 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11686 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 285.0978 </td>
   <td style="text-align:right;"> 283.08220 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tyrosine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_591 </td>
   <td style="text-align:left;"> p-Cresol sulfate </td>
   <td style="text-align:left;"> 188.014825 </td>
   <td style="text-align:right;"> 141.89306 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB0011635 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 189.0226 </td>
   <td style="text-align:right;"> 187.00700 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tyrosine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_592 </td>
   <td style="text-align:left;"> Phenol sulphate </td>
   <td style="text-align:left;"> 173.999225 </td>
   <td style="text-align:right;"> 56.80904 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB60015 </td>
   <td style="text-align:left;"> C00850 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 175.0070 </td>
   <td style="text-align:right;"> 172.99140 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tyrosine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_593 </td>
   <td style="text-align:left;"> Phenyllactate (PLA) </td>
   <td style="text-align:left;"> 166.063425 </td>
   <td style="text-align:right;"> 141.89306 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00779 </td>
   <td style="text-align:left;"> C05607 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 167.0712 </td>
   <td style="text-align:right;"> 165.05560 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Phenylalanine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_594 </td>
   <td style="text-align:left;"> Dihydroxyvitamin D3(1) </td>
   <td style="text-align:left;"> 416.329525 </td>
   <td style="text-align:right;"> 684.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00430 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 417.3374 </td>
   <td style="text-align:right;"> 415.32170 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Vitamin D Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_595 </td>
   <td style="text-align:left;"> Dihydroxyvitamin D3(2) </td>
   <td style="text-align:left;"> 416.329525 </td>
   <td style="text-align:right;"> 654.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00430 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 417.3374 </td>
   <td style="text-align:right;"> 415.32170 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Vitamin D Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_596 </td>
   <td style="text-align:left;"> gamma-CEHC </td>
   <td style="text-align:left;"> 264.136725 </td>
   <td style="text-align:right;"> 413.26286 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB01931 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 265.1445 </td>
   <td style="text-align:right;"> 263.12890 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Tocopherol Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_597 </td>
   <td style="text-align:left;"> 16a-hydroxy DHEA 3-sulfate </td>
   <td style="text-align:left;"> 384.161325 </td>
   <td style="text-align:right;"> 461.16869 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 385.1692 </td>
   <td style="text-align:right;"> 383.15350 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_598 </td>
   <td style="text-align:left;"> 5alpha-Androstan-3alpha,17alpha-diol monosulfate(1) </td>
   <td style="text-align:left;"> 372.195925 </td>
   <td style="text-align:right;"> 570.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 373.2038 </td>
   <td style="text-align:right;"> 371.18810 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_599 </td>
   <td style="text-align:left;"> 5alpha-Androstan-3alpha,17alpha-diol monosulfate(2) </td>
   <td style="text-align:left;"> 372.196825 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 373.2047 </td>
   <td style="text-align:right;"> 371.18900 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_600 </td>
   <td style="text-align:left;"> 5alpha-Androstan-3alpha,17alpha-diol monosulfate(3) </td>
   <td style="text-align:left;"> 372.196525 </td>
   <td style="text-align:right;"> 546.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 373.2043 </td>
   <td style="text-align:right;"> 371.18870 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_601 </td>
   <td style="text-align:left;"> 5alpha-Androstan-3alpha,17beta-diol 17-glucuronide(1) </td>
   <td style="text-align:left;"> 468.271425 </td>
   <td style="text-align:right;"> 508.97258 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 469.2792 </td>
   <td style="text-align:right;"> 467.26360 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_602 </td>
   <td style="text-align:left;"> 5alpha-Androstan-3alpha,17beta-diol 17-glucuronide(2) </td>
   <td style="text-align:left;"> 468.272725 </td>
   <td style="text-align:right;"> 529.35833 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 469.2806 </td>
   <td style="text-align:right;"> 467.26490 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_603 </td>
   <td style="text-align:left;"> 7-alpha-hydroxy-3-oxo-4-cholestenoate (7-Hoca) </td>
   <td style="text-align:left;"> 430.308625 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB12458 </td>
   <td style="text-align:left;"> C17337 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 431.3164 </td>
   <td style="text-align:right;"> 429.30080 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Sterol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_604 </td>
   <td style="text-align:left;"> Androsterone glucuronide(1) </td>
   <td style="text-align:left;"> 466.256725 </td>
   <td style="text-align:right;"> 520.90762 </td>
   <td style="text-align:left;"> 1852-43-3 </td>
   <td style="text-align:left;"> HMDB02829 </td>
   <td style="text-align:left;"> C11135 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 467.2645 </td>
   <td style="text-align:right;"> 465.24890 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_605 </td>
   <td style="text-align:left;"> Androsterone glucuronide(2) </td>
   <td style="text-align:left;"> 466.256825 </td>
   <td style="text-align:right;"> 503.00267 </td>
   <td style="text-align:left;"> 1852-43-3 </td>
   <td style="text-align:left;"> HMDB02829 </td>
   <td style="text-align:left;"> C11135 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 467.2647 </td>
   <td style="text-align:right;"> 465.24900 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_606 </td>
   <td style="text-align:left;"> Androsterone sulfate(1) </td>
   <td style="text-align:left;"> 370.181925 </td>
   <td style="text-align:right;"> 570.00000 </td>
   <td style="text-align:left;"> 2479-86-9 </td>
   <td style="text-align:left;"> HMDB02759 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 371.1898 </td>
   <td style="text-align:right;"> 369.17410 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_607 </td>
   <td style="text-align:left;"> Androsterone sulfate(2) </td>
   <td style="text-align:left;"> 370.180725 </td>
   <td style="text-align:right;"> 534.00000 </td>
   <td style="text-align:left;"> 2479-86-9 </td>
   <td style="text-align:left;"> HMDB02759 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 371.1886 </td>
   <td style="text-align:right;"> 369.17290 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_608 </td>
   <td style="text-align:left;"> Chenodeoxycholic acid glycine conjugate(1) </td>
   <td style="text-align:left;"> 449.314725 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> 640-79-9 </td>
   <td style="text-align:left;"> HMDB00637 </td>
   <td style="text-align:left;"> C05466 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 450.3225 </td>
   <td style="text-align:right;"> 448.30690 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_609 </td>
   <td style="text-align:left;"> Chenodeoxycholic acid glycine conjugate(2) </td>
   <td style="text-align:left;"> 449.314525 </td>
   <td style="text-align:right;"> 520.90762 </td>
   <td style="text-align:left;"> 640-79-9 </td>
   <td style="text-align:left;"> HMDB00637 </td>
   <td style="text-align:left;"> C05466 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 450.3223 </td>
   <td style="text-align:right;"> 448.30670 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_610 </td>
   <td style="text-align:left;"> Chenodeoxycholic Acid(1) </td>
   <td style="text-align:left;"> 392.293425 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB0000518 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 393.3012 </td>
   <td style="text-align:right;"> 391.28560 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_611 </td>
   <td style="text-align:left;"> Chenodeoxycholic Acid(2) </td>
   <td style="text-align:left;"> 392.293425 </td>
   <td style="text-align:right;"> 570.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB0000518 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 393.3012 </td>
   <td style="text-align:right;"> 391.28560 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_612 </td>
   <td style="text-align:left;"> Chenodeoxycholic Acid(3) </td>
   <td style="text-align:left;"> 392.293425 </td>
   <td style="text-align:right;"> 552.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB0000518 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 393.3012 </td>
   <td style="text-align:right;"> 391.28560 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_613 </td>
   <td style="text-align:left;"> Cholic Acid </td>
   <td style="text-align:left;"> 408.288225 </td>
   <td style="text-align:right;"> 552.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB0000619 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 409.2960 </td>
   <td style="text-align:right;"> 407.28040 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_614 </td>
   <td style="text-align:left;"> Dehydroisoandrosterone sulfate (DHEA-S)(1) </td>
   <td style="text-align:left;"> 368.166325 </td>
   <td style="text-align:right;"> 534.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB01032 </td>
   <td style="text-align:left;"> C04555 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 369.1741 </td>
   <td style="text-align:right;"> 367.15850 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_615 </td>
   <td style="text-align:left;"> Dehydroisoandrosterone sulfate (DHEA-S)(2) </td>
   <td style="text-align:left;"> 368.166025 </td>
   <td style="text-align:right;"> 526.87275 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB01032 </td>
   <td style="text-align:left;"> C04555 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 369.1739 </td>
   <td style="text-align:right;"> 367.15820 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_616 </td>
   <td style="text-align:left;"> Glycocholic acid </td>
   <td style="text-align:left;"> 465.309325 </td>
   <td style="text-align:right;"> 529.35833 </td>
   <td style="text-align:left;"> 475-31-0 </td>
   <td style="text-align:left;"> HMDB00138 </td>
   <td style="text-align:left;"> C01921 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 466.3172 </td>
   <td style="text-align:right;"> 464.30150 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_617 </td>
   <td style="text-align:left;"> LysoPG(18:0) </td>
   <td style="text-align:left;"> 512.311725 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 513.3196 </td>
   <td style="text-align:right;"> 511.30390 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_618 </td>
   <td style="text-align:left;"> MG(14:1)(1) </td>
   <td style="text-align:left;"> 300.230625 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11531 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 301.2385 </td>
   <td style="text-align:right;"> 299.22280 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_619 </td>
   <td style="text-align:left;"> MG(14:1)(2) </td>
   <td style="text-align:left;"> 300.230625 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11531 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 301.2385 </td>
   <td style="text-align:right;"> 299.22280 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_620 </td>
   <td style="text-align:left;"> MG(14:1)(3) </td>
   <td style="text-align:left;"> 300.230525 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11531 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 301.2384 </td>
   <td style="text-align:right;"> 299.22270 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_621 </td>
   <td style="text-align:left;"> MG(15:0)(1) </td>
   <td style="text-align:left;"> 316.261925 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11532 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 317.2697 </td>
   <td style="text-align:right;"> 315.25410 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_622 </td>
   <td style="text-align:left;"> MG(15:0)(2) </td>
   <td style="text-align:left;"> 316.261925 </td>
   <td style="text-align:right;"> 552.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11532 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 317.2697 </td>
   <td style="text-align:right;"> 315.25410 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_623 </td>
   <td style="text-align:left;"> MG(15:0)(3) </td>
   <td style="text-align:left;"> 316.261725 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11532 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 317.2695 </td>
   <td style="text-align:right;"> 315.25390 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_624 </td>
   <td style="text-align:left;"> MG(16:1) </td>
   <td style="text-align:left;"> 328.261625 </td>
   <td style="text-align:right;"> 630.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11534 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 329.2695 </td>
   <td style="text-align:right;"> 327.25380 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_625 </td>
   <td style="text-align:left;"> MG(18:1) </td>
   <td style="text-align:left;"> 356.293025 </td>
   <td style="text-align:right;"> 660.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11536 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 357.3009 </td>
   <td style="text-align:right;"> 355.28520 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_626 </td>
   <td style="text-align:left;"> MG(18:3) </td>
   <td style="text-align:left;"> 352.261825 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11539 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 353.2697 </td>
   <td style="text-align:right;"> 351.25400 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_627 </td>
   <td style="text-align:left;"> MG(20:0) </td>
   <td style="text-align:left;"> 386.339825 </td>
   <td style="text-align:right;"> 648.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11542 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 387.3476 </td>
   <td style="text-align:right;"> 385.33200 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_628 </td>
   <td style="text-align:left;"> MG(20:4)(1) </td>
   <td style="text-align:left;"> 378.277425 </td>
   <td style="text-align:right;"> 630.00000 </td>
   <td style="text-align:left;"> 53847-30-6 </td>
   <td style="text-align:left;"> HMDB04666 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 379.2853 </td>
   <td style="text-align:right;"> 377.26960 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_629 </td>
   <td style="text-align:left;"> MG(20:4)(2) </td>
   <td style="text-align:left;"> 378.277625 </td>
   <td style="text-align:right;"> 552.00000 </td>
   <td style="text-align:left;"> 53847-30-6 </td>
   <td style="text-align:left;"> HMDB04666 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 379.2855 </td>
   <td style="text-align:right;"> 377.26980 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_630 </td>
   <td style="text-align:left;"> MG(20:5) </td>
   <td style="text-align:left;"> 376.261825 </td>
   <td style="text-align:right;"> 612.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11550 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 377.2697 </td>
   <td style="text-align:right;"> 375.25400 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_631 </td>
   <td style="text-align:left;"> MG(22:2) </td>
   <td style="text-align:left;"> 410.340025 </td>
   <td style="text-align:right;"> 672.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11553 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 411.3478 </td>
   <td style="text-align:right;"> 409.33220 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_632 </td>
   <td style="text-align:left;"> MG(24:0)(1) </td>
   <td style="text-align:left;"> 442.402525 </td>
   <td style="text-align:right;"> 678.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11558 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 443.4103 </td>
   <td style="text-align:right;"> 441.39470 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_633 </td>
   <td style="text-align:left;"> MG(24:0)(2) </td>
   <td style="text-align:left;"> 442.402825 </td>
   <td style="text-align:right;"> 672.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11558 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 443.4106 </td>
   <td style="text-align:right;"> 441.39500 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_634 </td>
   <td style="text-align:left;"> MG(24:1) </td>
   <td style="text-align:left;"> 440.387025 </td>
   <td style="text-align:right;"> 666.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11559 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 441.3949 </td>
   <td style="text-align:right;"> 439.37920 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Monoacylglycerol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_635 </td>
   <td style="text-align:left;"> Palmitoylglycine </td>
   <td style="text-align:left;"> 313.262425 </td>
   <td style="text-align:right;"> 624.00000 </td>
   <td style="text-align:left;"> 158305-64-7 </td>
   <td style="text-align:left;"> HMDB13034 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 314.2702 </td>
   <td style="text-align:right;"> 312.25460 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Glycine) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_636 </td>
   <td style="text-align:left;"> Pregnanediol-3-glucuronide </td>
   <td style="text-align:left;"> 496.304025 </td>
   <td style="text-align:right;"> 546.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10318 </td>
   <td style="text-align:left;"> C03033 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 497.3118 </td>
   <td style="text-align:right;"> 495.29620 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Progestin Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_637 </td>
   <td style="text-align:left;"> Pregnanolone sulfate </td>
   <td style="text-align:left;"> 398.213225 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 399.2210 </td>
   <td style="text-align:right;"> 397.20540 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Progestin Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_638 </td>
   <td style="text-align:left;"> Pregnenolone sulfate </td>
   <td style="text-align:left;"> 396.197525 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> 1247-64-9 </td>
   <td style="text-align:left;"> HMDB00774 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 397.2054 </td>
   <td style="text-align:right;"> 395.18970 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Progestin Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_639 </td>
   <td style="text-align:left;"> Sulfolithocholic acid </td>
   <td style="text-align:left;"> 456.255025 </td>
   <td style="text-align:right;"> 660.00000 </td>
   <td style="text-align:left;"> 34669-57-3 </td>
   <td style="text-align:left;"> HMDB00907 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 457.2629 </td>
   <td style="text-align:right;"> 455.24720 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_640 </td>
   <td style="text-align:left;"> Sulfolithocholylglycine </td>
   <td style="text-align:left;"> 513.276125 </td>
   <td style="text-align:right;"> 648.00000 </td>
   <td style="text-align:left;"> 15324-64-8 </td>
   <td style="text-align:left;"> HMDB02639 </td>
   <td style="text-align:left;"> C11301 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 514.2840 </td>
   <td style="text-align:right;"> 512.26830 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_641 </td>
   <td style="text-align:left;"> Taurocholic acid(1) </td>
   <td style="text-align:left;"> 515.291625 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> 81-24-3 </td>
   <td style="text-align:left;"> HMDB00036 </td>
   <td style="text-align:left;"> C05122 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 516.2994 </td>
   <td style="text-align:right;"> 514.28380 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_642 </td>
   <td style="text-align:left;"> Taurocholic acid(2) </td>
   <td style="text-align:left;"> 515.293125 </td>
   <td style="text-align:right;"> 529.35833 </td>
   <td style="text-align:left;"> 81-24-3 </td>
   <td style="text-align:left;"> HMDB00036 </td>
   <td style="text-align:left;"> C05122 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 516.3009 </td>
   <td style="text-align:right;"> 514.28530 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_643 </td>
   <td style="text-align:left;"> Tauroursodeoxycholic acid </td>
   <td style="text-align:left;"> 499.297025 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> 14605-22-2 </td>
   <td style="text-align:left;"> HMDB00874 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 500.3048 </td>
   <td style="text-align:right;"> 498.28920 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_644 </td>
   <td style="text-align:left;"> Tetrahydroaldosterone-3-glucuronide(1) </td>
   <td style="text-align:left;"> 540.257225 </td>
   <td style="text-align:right;"> 425.24888 </td>
   <td style="text-align:left;"> 20605-81-6 </td>
   <td style="text-align:left;"> HMDB10357 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 541.2650 </td>
   <td style="text-align:right;"> 539.24940 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_645 </td>
   <td style="text-align:left;"> Tetrahydroaldosterone-3-glucuronide(2) </td>
   <td style="text-align:left;"> 540.256725 </td>
   <td style="text-align:right;"> 529.35833 </td>
   <td style="text-align:left;"> 20605-81-6 </td>
   <td style="text-align:left;"> HMDB10357 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 541.2645 </td>
   <td style="text-align:right;"> 539.24890 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_646 </td>
   <td style="text-align:left;"> Tetrahydrocortisol </td>
   <td style="text-align:left;"> 366.241125 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> 53-02-1 </td>
   <td style="text-align:left;"> HMDB00949 </td>
   <td style="text-align:left;"> C05472 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 367.2489 </td>
   <td style="text-align:right;"> 365.23330 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_647 </td>
   <td style="text-align:left;"> N6-Carbamoyl-L-threonyladenosine </td>
   <td style="text-align:left;"> 412.134825 </td>
   <td style="text-align:right;"> 220.62010 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB41623 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 413.1427 </td>
   <td style="text-align:right;"> 411.12700 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Nucleotide </td>
   <td style="text-align:left;"> Purine Metabolism, Adenine containing </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_648 </td>
   <td style="text-align:left;"> gamma-glutamylhistidine </td>
   <td style="text-align:left;"> 284.116625 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 285.1245 </td>
   <td style="text-align:right;"> 283.10880 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Peptide </td>
   <td style="text-align:left;"> Gamma-glutamyl Amino Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_649 </td>
   <td style="text-align:left;"> 3-Phenylpropionate (hydrocinnamate) </td>
   <td style="text-align:left;"> 150.068525 </td>
   <td style="text-align:right;"> 280.99618 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00764 </td>
   <td style="text-align:left;"> C05629 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 151.0763 </td>
   <td style="text-align:right;"> 149.06070 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_650 </td>
   <td style="text-align:left;"> 4-Methylcatechol sulfate </td>
   <td style="text-align:left;"> 204.009825 </td>
   <td style="text-align:right;"> 117.61520 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 205.0177 </td>
   <td style="text-align:right;"> 203.00200 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_651 </td>
   <td style="text-align:left;"> Cinnamoylglycine </td>
   <td style="text-align:left;"> 205.074425 </td>
   <td style="text-align:right;"> 262.90008 </td>
   <td style="text-align:left;"> 16534-24-0 </td>
   <td style="text-align:left;"> HMDB11621 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 206.0822 </td>
   <td style="text-align:right;"> 204.06660 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Food Component/Plant </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_652 </td>
   <td style="text-align:left;"> eugenol sulfate </td>
   <td style="text-align:left;"> 244.040925 </td>
   <td style="text-align:right;"> 329.18236 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 245.0488 </td>
   <td style="text-align:right;"> 243.03310 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Food Component/Plant </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_653 </td>
   <td style="text-align:left;"> methyl-4-hydroxybenzoate sulfate </td>
   <td style="text-align:left;"> 232.004625 </td>
   <td style="text-align:right;"> 250.82805 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 233.0125 </td>
   <td style="text-align:right;"> 230.99680 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_654 </td>
   <td style="text-align:left;"> Phenylbutyric acid </td>
   <td style="text-align:left;"> 164.084325 </td>
   <td style="text-align:right;"> 449.20179 </td>
   <td style="text-align:left;"> 90-27-7 </td>
   <td style="text-align:left;"> HMDB00329 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 165.0922 </td>
   <td style="text-align:right;"> 163.07650 </td>
   <td style="text-align:left;"> iPOP </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_655 </td>
   <td style="text-align:left;"> Thyroxine </td>
   <td style="text-align:left;"> 776.682675 </td>
   <td style="text-align:right;"> 426.00000 </td>
   <td style="text-align:left;"> 51-48-9 </td>
   <td style="text-align:left;"> HMDB01918 </td>
   <td style="text-align:left;"> C01829 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 777.6905 </td>
   <td style="text-align:right;"> 775.67485 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tyrosine Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_656 </td>
   <td style="text-align:left;"> Nicotinamide </td>
   <td style="text-align:left;"> 122.047275 </td>
   <td style="text-align:right;"> 54.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> HMDB01406 </td>
   <td style="text-align:left;"> C00153 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 123.0551 </td>
   <td style="text-align:right;"> 121.03945 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Nicotinate and Nicotinamide Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_657 </td>
   <td style="text-align:left;"> N1-Methyl-2-pyridone-5-carboxamide </td>
   <td style="text-align:left;"> 152.057875 </td>
   <td style="text-align:right;"> 66.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB04193 </td>
   <td style="text-align:left;"> C05842 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 153.0657 </td>
   <td style="text-align:right;"> 151.05005 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Nicotinate and Nicotinamide Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_658 </td>
   <td style="text-align:left;"> Retinol (Vitamin A) </td>
   <td style="text-align:left;"> 268.217975 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00305 </td>
   <td style="text-align:left;"> C00473 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 269.2258 </td>
   <td style="text-align:right;"> 267.21015 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Vitamin A Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_659 </td>
   <td style="text-align:left;"> Biliverdin </td>
   <td style="text-align:left;"> 582.245675 </td>
   <td style="text-align:right;"> 642.00000 </td>
   <td style="text-align:left;"> 114-25-0 </td>
   <td style="text-align:left;"> HMDB01008 </td>
   <td style="text-align:left;"> C00500 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 583.2535 </td>
   <td style="text-align:right;"> 581.23785 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Hemoglobin and Porphyrin Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_660 </td>
   <td style="text-align:left;"> C5:0 AC (2-methylbutyrylcarnitine|isovalerylcarnitine) </td>
   <td style="text-align:left;"> 245.161475 </td>
   <td style="text-align:right;"> 108.00000 </td>
   <td style="text-align:left;"> 31023-25-3 </td>
   <td style="text-align:left;"> HMDB00378 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 246.1693 </td>
   <td style="text-align:right;"> 244.15365 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_661 </td>
   <td style="text-align:left;"> C6:0 AC (Hexanoylcarnitine) </td>
   <td style="text-align:left;"> 259.177075 </td>
   <td style="text-align:right;"> 192.00000 </td>
   <td style="text-align:left;"> 6418-78-6 </td>
   <td style="text-align:left;"> HMDB00705 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 260.1849 </td>
   <td style="text-align:right;"> 258.16925 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_662 </td>
   <td style="text-align:left;"> C8:1 AC (Octenoylcarnitine) </td>
   <td style="text-align:left;"> 285.192575 </td>
   <td style="text-align:right;"> 252.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13324 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 286.2004 </td>
   <td style="text-align:right;"> 284.18475 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_663 </td>
   <td style="text-align:left;"> C8:0 AC (L-Octanoylcarnitine) </td>
   <td style="text-align:left;"> 287.208275 </td>
   <td style="text-align:right;"> 306.00000 </td>
   <td style="text-align:left;"> 25243-95-2 </td>
   <td style="text-align:left;"> HMDB00791 </td>
   <td style="text-align:left;"> C02838 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 288.2161 </td>
   <td style="text-align:right;"> 286.20045 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_664 </td>
   <td style="text-align:left;"> C9:0 AC (Nonanoylcarnitine) </td>
   <td style="text-align:left;"> 301.223875 </td>
   <td style="text-align:right;"> 330.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13288 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 302.2317 </td>
   <td style="text-align:right;"> 300.21605 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_665 </td>
   <td style="text-align:left;"> Sphinganine </td>
   <td style="text-align:left;"> 301.296575 </td>
   <td style="text-align:right;"> 504.00000 </td>
   <td style="text-align:left;"> 764-22-7 </td>
   <td style="text-align:left;"> HMDB00269 </td>
   <td style="text-align:left;"> C00836 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 302.3044 </td>
   <td style="text-align:right;"> 300.28875 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Sphingolipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_666 </td>
   <td style="text-align:left;"> C10:3 AC (Decatrenoylcarnitine) </td>
   <td style="text-align:left;"> 309.192475 </td>
   <td style="text-align:right;"> 300.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 310.2003 </td>
   <td style="text-align:right;"> 308.18465 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_667 </td>
   <td style="text-align:left;"> Oleoyl Ethyl Amide </td>
   <td style="text-align:left;"> 309.301775 </td>
   <td style="text-align:right;"> 654.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 310.3096 </td>
   <td style="text-align:right;"> 308.29395 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Amide </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_668 </td>
   <td style="text-align:left;"> C10:2 AC (Decadienoylcarnitine) </td>
   <td style="text-align:left;"> 311.208075 </td>
   <td style="text-align:right;"> 324.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13325 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 312.2159 </td>
   <td style="text-align:right;"> 310.20025 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_669 </td>
   <td style="text-align:left;"> C10:1 AC (Decenoylcarnitine) </td>
   <td style="text-align:left;"> 313.223775 </td>
   <td style="text-align:right;"> 354.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13205 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 314.2316 </td>
   <td style="text-align:right;"> 312.21595 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_670 </td>
   <td style="text-align:left;"> C10:0 AC (Decanoylcarnitine) </td>
   <td style="text-align:left;"> 315.239475 </td>
   <td style="text-align:right;"> 396.00000 </td>
   <td style="text-align:left;"> 1492-27-9 </td>
   <td style="text-align:left;"> HMDB00651 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 316.2473 </td>
   <td style="text-align:right;"> 314.23165 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_671 </td>
   <td style="text-align:left;"> Allopregnanolone </td>
   <td style="text-align:left;"> 318.254375 </td>
   <td style="text-align:right;"> 654.00000 </td>
   <td style="text-align:left;"> 516-54-1 </td>
   <td style="text-align:left;"> HMDB01449 </td>
   <td style="text-align:left;"> C13712 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 319.2622 </td>
   <td style="text-align:right;"> 317.24655 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Progestin Steroids </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_672 </td>
   <td style="text-align:left;"> C11:0 AC (Undecanoylcarnitine) </td>
   <td style="text-align:left;"> 329.255075 </td>
   <td style="text-align:right;"> 420.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13321 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 330.2629 </td>
   <td style="text-align:right;"> 328.24725 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_673 </td>
   <td style="text-align:left;"> C10:0,OH AC (Hydroxydecanoyl carnitine) </td>
   <td style="text-align:left;"> 331.234175 </td>
   <td style="text-align:right;"> 318.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB61636 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 332.2420 </td>
   <td style="text-align:right;"> 330.22635 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_674 </td>
   <td style="text-align:left;"> C12:1 AC (Dodecenoylcarnitine) </td>
   <td style="text-align:left;"> 341.254975 </td>
   <td style="text-align:right;"> 426.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13326 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 342.2628 </td>
   <td style="text-align:right;"> 340.24715 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_675 </td>
   <td style="text-align:left;"> C12:0 AC (Dodecanoylcarnitine) </td>
   <td style="text-align:left;"> 343.270575 </td>
   <td style="text-align:right;"> 462.00000 </td>
   <td style="text-align:left;"> 25518-54-1 </td>
   <td style="text-align:left;"> HMDB02250 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 344.2784 </td>
   <td style="text-align:right;"> 342.26275 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_676 </td>
   <td style="text-align:left;"> Deoxycortisol </td>
   <td style="text-align:left;"> 346.212775 </td>
   <td style="text-align:right;"> 408.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> HMDB04030 </td>
   <td style="text-align:left;"> C05497 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 347.2206 </td>
   <td style="text-align:right;"> 345.20495 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Corticosteroids </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_677 </td>
   <td style="text-align:left;"> C16 Sphingosine 1-phosphate </td>
   <td style="text-align:left;"> 351.215875 </td>
   <td style="text-align:right;"> 504.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB60061 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 352.2237 </td>
   <td style="text-align:right;"> 350.20805 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Sphingolipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_678 </td>
   <td style="text-align:left;"> Hydroxy-cholenoic acid </td>
   <td style="text-align:left;"> 356.269975 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00308 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 357.2778 </td>
   <td style="text-align:right;"> 355.26215 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_679 </td>
   <td style="text-align:left;"> Cortisol </td>
   <td style="text-align:left;"> 362.207675 </td>
   <td style="text-align:right;"> 414.00000 </td>
   <td style="text-align:left;"> 50-23-7 </td>
   <td style="text-align:left;"> HMDB00063 </td>
   <td style="text-align:left;"> C00735 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 363.2155 </td>
   <td style="text-align:right;"> 361.19985 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Corticosteroids </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_680 </td>
   <td style="text-align:left;"> Tetrahydrocortisone </td>
   <td style="text-align:left;"> 364.223075 </td>
   <td style="text-align:right;"> 408.00000 </td>
   <td style="text-align:left;"> 53-05-4 </td>
   <td style="text-align:left;"> HMDB00903 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 365.2309 </td>
   <td style="text-align:right;"> 363.21525 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Corticosteroids </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_681 </td>
   <td style="text-align:left;"> C14:2 AC (Tetradecadiencarnitine) </td>
   <td style="text-align:left;"> 367.270475 </td>
   <td style="text-align:right;"> 456.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13331 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 368.2783 </td>
   <td style="text-align:right;"> 366.26265 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_682 </td>
   <td style="text-align:left;"> C14:1 AC (Tetradecenoylcarnitine) </td>
   <td style="text-align:left;"> 369.286175 </td>
   <td style="text-align:right;"> 486.00000 </td>
   <td style="text-align:left;"> 835598-21-5 </td>
   <td style="text-align:left;"> HMDB02014 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 370.2940 </td>
   <td style="text-align:right;"> 368.27835 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_683 </td>
   <td style="text-align:left;"> C18 Sphingosine 1-phosphate </td>
   <td style="text-align:left;"> 379.247075 </td>
   <td style="text-align:right;"> 552.00000 </td>
   <td style="text-align:left;"> 26993-30-6 </td>
   <td style="text-align:left;"> HMDB00277 </td>
   <td style="text-align:left;"> C06124 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 380.2549 </td>
   <td style="text-align:right;"> 378.23925 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Sphingolipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_684 </td>
   <td style="text-align:left;"> Sphinganine 1-phosphate </td>
   <td style="text-align:left;"> 381.262975 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> 19794-97-9 </td>
   <td style="text-align:left;"> HMDB01383 </td>
   <td style="text-align:left;"> C01120 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 382.2708 </td>
   <td style="text-align:right;"> 380.25515 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Sphingolipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_685 </td>
   <td style="text-align:left;"> C14:1,OH AC (Hydroxy-tetradecenoylcarnitine) </td>
   <td style="text-align:left;"> 385.281075 </td>
   <td style="text-align:right;"> 444.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13330 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 386.2889 </td>
   <td style="text-align:right;"> 384.27325 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_686 </td>
   <td style="text-align:left;"> C14:0,OH AC (Hydroxymyristoylcarnitine) </td>
   <td style="text-align:left;"> 387.296675 </td>
   <td style="text-align:right;"> 474.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> HMDB13166 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 388.3045 </td>
   <td style="text-align:right;"> 386.28885 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_687 </td>
   <td style="text-align:left;"> C16:2 AC (Hexadecadienoylcarnitine) </td>
   <td style="text-align:left;"> 395.301875 </td>
   <td style="text-align:right;"> 498.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13334 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 396.3097 </td>
   <td style="text-align:right;"> 394.29405 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_688 </td>
   <td style="text-align:left;"> C16:1 AC (Hexadecenoyl carnitine) </td>
   <td style="text-align:left;"> 397.317475 </td>
   <td style="text-align:right;"> 528.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB06317 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 398.3253 </td>
   <td style="text-align:right;"> 396.30965 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_689 </td>
   <td style="text-align:left;"> C16:0 AC (L-Palmitoylcarnitine) </td>
   <td style="text-align:left;"> 399.333075 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 400.3409 </td>
   <td style="text-align:right;"> 398.32525 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_690 </td>
   <td style="text-align:left;"> C18:2 AC (Linoleyl carnitine) </td>
   <td style="text-align:left;"> 423.333075 </td>
   <td style="text-align:right;"> 546.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB06461 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 424.3409 </td>
   <td style="text-align:right;"> 422.32525 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_691 </td>
   <td style="text-align:left;"> C18:1 AC (Oleoylcarnitine) </td>
   <td style="text-align:left;"> 425.348875 </td>
   <td style="text-align:right;"> 570.00000 </td>
   <td style="text-align:left;"> 38677-66-6 </td>
   <td style="text-align:left;"> HMDB05065 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 426.3567 </td>
   <td style="text-align:right;"> 424.34105 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_692 </td>
   <td style="text-align:left;"> C18:0 AC (Stearoylcarnitine) </td>
   <td style="text-align:left;"> 427.364175 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> 1976-27-8 </td>
   <td style="text-align:left;"> HMDB00848 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 428.3720 </td>
   <td style="text-align:right;"> 426.35635 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid Metabolism(Acyl Carnitine) </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_693 </td>
   <td style="text-align:left;"> LysoPE(P-16:0) </td>
   <td style="text-align:left;"> 437.288975 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11152 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 438.2968 </td>
   <td style="text-align:right;"> 436.28115 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_694 </td>
   <td style="text-align:left;"> LysoPE(16:1) </td>
   <td style="text-align:left;"> 451.268175 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11474 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 452.2760 </td>
   <td style="text-align:right;"> 450.26035 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_695 </td>
   <td style="text-align:left;"> LysoPE(16:0) </td>
   <td style="text-align:left;"> 453.284175 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11473 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 454.2920 </td>
   <td style="text-align:right;"> 452.27635 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_696 </td>
   <td style="text-align:left;"> 6-Dehydrotestosterone glucuronide </td>
   <td style="text-align:left;"> 462.223675 </td>
   <td style="text-align:right;"> 522.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10337 </td>
   <td style="text-align:left;"> C03033 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 463.2315 </td>
   <td style="text-align:right;"> 461.21585 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_697 </td>
   <td style="text-align:left;"> LysoPC(14:0) </td>
   <td style="text-align:left;"> 467.299475 </td>
   <td style="text-align:right;"> 552.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10379 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 468.3073 </td>
   <td style="text-align:right;"> 466.29165 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_698 </td>
   <td style="text-align:left;"> LysoPE(18:3) </td>
   <td style="text-align:left;"> 475.267575 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11478 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 476.2754 </td>
   <td style="text-align:right;"> 474.25975 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_699 </td>
   <td style="text-align:left;"> LysoPE(18:2) </td>
   <td style="text-align:left;"> 477.283975 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11477 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 478.2918 </td>
   <td style="text-align:right;"> 476.27615 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_700 </td>
   <td style="text-align:left;"> LysoPE(18:1) </td>
   <td style="text-align:left;"> 479.299975 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11475 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 480.3078 </td>
   <td style="text-align:right;"> 478.29215 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_701 </td>
   <td style="text-align:left;"> LysoPC(P-16:0) </td>
   <td style="text-align:left;"> 479.335975 </td>
   <td style="text-align:right;"> 606.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10407 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 480.3438 </td>
   <td style="text-align:right;"> 478.32815 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_702 </td>
   <td style="text-align:left;"> LysoPE(18:0) </td>
   <td style="text-align:left;"> 481.315175 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11129 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 482.3230 </td>
   <td style="text-align:right;"> 480.30735 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_703 </td>
   <td style="text-align:left;"> LysoPC(15:0) </td>
   <td style="text-align:left;"> 481.315275 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10381 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 482.3231 </td>
   <td style="text-align:right;"> 480.30745 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_704 </td>
   <td style="text-align:left;"> LysoPC(16:1) </td>
   <td style="text-align:left;"> 493.315275 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10383 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 494.3231 </td>
   <td style="text-align:right;"> 492.30745 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_705 </td>
   <td style="text-align:left;"> LysoPC(16:0) </td>
   <td style="text-align:left;"> 495.330875 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10382 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 496.3387 </td>
   <td style="text-align:right;"> 494.32305 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_706 </td>
   <td style="text-align:left;"> LysoPE(20:5) </td>
   <td style="text-align:left;"> 499.268075 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11489 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 500.2759 </td>
   <td style="text-align:right;"> 498.26025 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_707 </td>
   <td style="text-align:left;"> LysoPE(20:4) </td>
   <td style="text-align:left;"> 501.284075 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11487 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 502.2919 </td>
   <td style="text-align:right;"> 500.27625 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_708 </td>
   <td style="text-align:left;"> LysoPE(20:3) </td>
   <td style="text-align:left;"> 503.299675 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11484 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 504.3075 </td>
   <td style="text-align:right;"> 502.29185 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_709 </td>
   <td style="text-align:left;"> LysoPC(P-18:0) </td>
   <td style="text-align:left;"> 507.367275 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13122 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 508.3751 </td>
   <td style="text-align:right;"> 506.35945 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_710 </td>
   <td style="text-align:left;"> LysoPC(17:0) </td>
   <td style="text-align:left;"> 509.346975 </td>
   <td style="text-align:right;"> 612.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB12108 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 510.3548 </td>
   <td style="text-align:right;"> 508.33915 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_711 </td>
   <td style="text-align:left;"> LysoPC(O-18:0) </td>
   <td style="text-align:left;"> 509.382975 </td>
   <td style="text-align:right;"> 648.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11149 </td>
   <td style="text-align:left;"> C04317 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 510.3908 </td>
   <td style="text-align:right;"> 508.37515 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_712 </td>
   <td style="text-align:left;"> LysoPC(18:3) </td>
   <td style="text-align:left;"> 517.315275 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10387 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 518.3231 </td>
   <td style="text-align:right;"> 516.30745 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_713 </td>
   <td style="text-align:left;"> LysoPC(18:2) </td>
   <td style="text-align:left;"> 519.331075 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10386 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 520.3389 </td>
   <td style="text-align:right;"> 518.32325 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_714 </td>
   <td style="text-align:left;"> LysoPC(18:1) </td>
   <td style="text-align:left;"> 521.346775 </td>
   <td style="text-align:right;"> 606.00000 </td>
   <td style="text-align:left;"> 3542-29-8 </td>
   <td style="text-align:left;"> HMDB02815 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 522.3546 </td>
   <td style="text-align:right;"> 520.33895 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_715 </td>
   <td style="text-align:left;"> LysoPC(18:0) </td>
   <td style="text-align:left;"> 523.362575 </td>
   <td style="text-align:right;"> 630.00000 </td>
   <td style="text-align:left;"> 5655-17-4 </td>
   <td style="text-align:left;"> HMDB10384 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 524.3704 </td>
   <td style="text-align:right;"> 522.35475 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_716 </td>
   <td style="text-align:left;"> LysoPE(22:6) </td>
   <td style="text-align:left;"> 525.283675 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11496 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 526.2915 </td>
   <td style="text-align:right;"> 524.27585 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_717 </td>
   <td style="text-align:left;"> LysoPE(22:0) </td>
   <td style="text-align:left;"> 537.377875 </td>
   <td style="text-align:right;"> 642.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11490 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 538.3857 </td>
   <td style="text-align:right;"> 536.37005 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_718 </td>
   <td style="text-align:left;"> LysoPC(20:5) </td>
   <td style="text-align:left;"> 541.315275 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10397 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 542.3231 </td>
   <td style="text-align:right;"> 540.30745 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_719 </td>
   <td style="text-align:left;"> LysoPC(20:4) </td>
   <td style="text-align:left;"> 543.331175 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10395 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 544.3390 </td>
   <td style="text-align:right;"> 542.32335 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_720 </td>
   <td style="text-align:left;"> LysoPC(20:3) </td>
   <td style="text-align:left;"> 545.346775 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10393 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 546.3546 </td>
   <td style="text-align:right;"> 544.33895 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_721 </td>
   <td style="text-align:left;"> LysoPC(20:2) </td>
   <td style="text-align:left;"> 547.362475 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10392 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 548.3703 </td>
   <td style="text-align:right;"> 546.35465 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_722 </td>
   <td style="text-align:left;"> LysoPC(20:1) </td>
   <td style="text-align:left;"> 549.377675 </td>
   <td style="text-align:right;"> 636.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10391 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 550.3855 </td>
   <td style="text-align:right;"> 548.36985 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_723 </td>
   <td style="text-align:left;"> LysoPC(20:0) </td>
   <td style="text-align:left;"> 551.393775 </td>
   <td style="text-align:right;"> 660.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10390 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 552.4016 </td>
   <td style="text-align:right;"> 550.38595 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_724 </td>
   <td style="text-align:left;"> LysoPC(22:6) </td>
   <td style="text-align:left;"> 567.330075 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10404 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 568.3379 </td>
   <td style="text-align:right;"> 566.32225 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_725 </td>
   <td style="text-align:left;"> LysoPC(22:5) </td>
   <td style="text-align:left;"> 569.345975 </td>
   <td style="text-align:right;"> 594.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10402 </td>
   <td style="text-align:left;"> C04230 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 570.3538 </td>
   <td style="text-align:right;"> 568.33815 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_726 </td>
   <td style="text-align:left;"> 7-Methylguanine </td>
   <td style="text-align:left;"> 165.064375 </td>
   <td style="text-align:right;"> 66.00000 </td>
   <td style="text-align:left;"> 578-76-7 </td>
   <td style="text-align:left;"> HMDB00897 </td>
   <td style="text-align:left;"> C02242 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 166.0722 </td>
   <td style="text-align:right;"> 164.05655 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Nucleotide </td>
   <td style="text-align:left;"> Purine Metabolism, Guanine containing </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_727 </td>
   <td style="text-align:left;"> gamma-glutamylphenylalanine </td>
   <td style="text-align:left;"> 294.119975 </td>
   <td style="text-align:right;"> 66.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00594 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 295.1278 </td>
   <td style="text-align:right;"> 293.11215 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Peptide </td>
   <td style="text-align:left;"> Gamma-glutamyl Amino Acid </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_728 </td>
   <td style="text-align:left;"> 2-Piperidinone </td>
   <td style="text-align:left;"> 99.067775 </td>
   <td style="text-align:right;"> 60.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11749 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 100.0756 </td>
   <td style="text-align:right;"> 98.05995 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Food Component/Plant </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_729 </td>
   <td style="text-align:left;"> Amino-Hydroxy-benzoic acid </td>
   <td style="text-align:left;"> 153.041875 </td>
   <td style="text-align:right;"> 90.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> HMDB01476 </td>
   <td style="text-align:left;"> C00632 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 154.0497 </td>
   <td style="text-align:right;"> 152.03405 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_730 </td>
   <td style="text-align:left;"> S-Allylcysteine </td>
   <td style="text-align:left;"> 161.050375 </td>
   <td style="text-align:right;"> 30.00000 </td>
   <td style="text-align:left;"> 21593-77-1 </td>
   <td style="text-align:left;"> HMDB34323 </td>
   <td style="text-align:left;"> C16759 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 162.0582 </td>
   <td style="text-align:right;"> 160.04255 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Food Component/Plant </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_731 </td>
   <td style="text-align:left;"> Theobromine </td>
   <td style="text-align:left;"> 180.063775 </td>
   <td style="text-align:right;"> 180.00000 </td>
   <td style="text-align:left;"> 83-67-0 </td>
   <td style="text-align:left;"> HMDB02825 </td>
   <td style="text-align:left;"> C07480 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 181.0716 </td>
   <td style="text-align:right;"> 179.05595 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Xanthine Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_732 </td>
   <td style="text-align:left;"> Theophylline </td>
   <td style="text-align:left;"> 180.063775 </td>
   <td style="text-align:right;"> 192.00000 </td>
   <td style="text-align:left;"> 611-59-6 </td>
   <td style="text-align:left;"> HMDB01889 </td>
   <td style="text-align:left;"> C07130 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 181.0716 </td>
   <td style="text-align:right;"> 179.05595 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Xanthine Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_733 </td>
   <td style="text-align:left;"> Caffeine </td>
   <td style="text-align:left;"> 194.079375 </td>
   <td style="text-align:right;"> 264.00000 </td>
   <td style="text-align:left;"> 58-08-2 </td>
   <td style="text-align:left;"> HMDB01847 </td>
   <td style="text-align:left;"> C07481 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 195.0872 </td>
   <td style="text-align:right;"> 193.07155 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Xanthine Metabolism </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_734 </td>
   <td style="text-align:left;"> Dihydroferulic acid 4-sulfate </td>
   <td style="text-align:left;"> 276.029575 </td>
   <td style="text-align:right;"> 294.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB41724 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 277.0374 </td>
   <td style="text-align:right;"> 275.02175 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Food Component/Plant </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_735 </td>
   <td style="text-align:left;"> Piperine(1) </td>
   <td style="text-align:left;"> 285.135175 </td>
   <td style="text-align:right;"> 492.00000 </td>
   <td style="text-align:left;"> 30511-76-3 </td>
   <td style="text-align:left;"> HMDB29377 </td>
   <td style="text-align:left;"> C03882 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 286.1430 </td>
   <td style="text-align:right;"> 284.12735 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Food Component/Plant </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_736 </td>
   <td style="text-align:left;"> Piperine(2) </td>
   <td style="text-align:left;"> 285.135175 </td>
   <td style="text-align:right;"> 504.00000 </td>
   <td style="text-align:left;"> 30511-76-3 </td>
   <td style="text-align:left;"> HMDB29377 </td>
   <td style="text-align:left;"> C03882 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 286.1430 </td>
   <td style="text-align:right;"> 284.12735 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Food Component/Plant </td>
   <td style="text-align:left;"> pRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_737 </td>
   <td style="text-align:left;"> L-a-Hydroxyisovaleric acid </td>
   <td style="text-align:left;"> 118.063625 </td>
   <td style="text-align:right;"> 42.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00407 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 119.0714 </td>
   <td style="text-align:right;"> 117.05580 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Leucine, Isoleucine and Valine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_738 </td>
   <td style="text-align:left;"> 4-methyl-2-oxopentanoate|3-Methyl-2-oxovaleric acid </td>
   <td style="text-align:left;"> 130.063625 </td>
   <td style="text-align:right;"> 48.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00695|HMDB03736 </td>
   <td style="text-align:left;"> C00233|C00671 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 131.0714 </td>
   <td style="text-align:right;"> 129.05580 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Leucine, Isoleucine and Valine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_739 </td>
   <td style="text-align:left;"> (S)-(-)-2-Hydroxyisocaproic acid </td>
   <td style="text-align:left;"> 132.079225 </td>
   <td style="text-align:right;"> 84.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB0000746 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 133.0871 </td>
   <td style="text-align:right;"> 131.07140 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Leucine, Isoleucine and Valine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_740 </td>
   <td style="text-align:left;"> Phenyllactate (PLA) </td>
   <td style="text-align:left;"> 166.063425 </td>
   <td style="text-align:right;"> 126.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00779 </td>
   <td style="text-align:left;"> C05607 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 167.0712 </td>
   <td style="text-align:right;"> 165.05560 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Phenylalanine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_741 </td>
   <td style="text-align:left;"> N-Acetylleucine|N-Acetylisoleucine </td>
   <td style="text-align:left;"> 173.105825 </td>
   <td style="text-align:right;"> 156.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11756|HMDB61684 </td>
   <td style="text-align:left;"> |C02710 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 174.1137 </td>
   <td style="text-align:right;"> 172.09800 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Leucine, Isoleucine and Valine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_742 </td>
   <td style="text-align:left;"> Phenol sulphate </td>
   <td style="text-align:left;"> 173.999025 </td>
   <td style="text-align:right;"> 48.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB60015 </td>
   <td style="text-align:left;"> C00850 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 175.0068 </td>
   <td style="text-align:right;"> 172.99120 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tyrosine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_743 </td>
   <td style="text-align:left;"> p-Cresol sulfate </td>
   <td style="text-align:left;"> 188.014625 </td>
   <td style="text-align:right;"> 114.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB0011635 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 189.0224 </td>
   <td style="text-align:right;"> 187.00680 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tyrosine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_744 </td>
   <td style="text-align:left;"> Kynurenic acid </td>
   <td style="text-align:left;"> 189.042925 </td>
   <td style="text-align:right;"> 168.00000 </td>
   <td style="text-align:left;"> 492-27-3 </td>
   <td style="text-align:left;"> HMDB00715 </td>
   <td style="text-align:left;"> C01717 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 190.0507 </td>
   <td style="text-align:right;"> 188.03510 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tryptophan Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_745 </td>
   <td style="text-align:left;"> N-Acetyl-L-phenylalanine </td>
   <td style="text-align:left;"> 207.089825 </td>
   <td style="text-align:right;"> 192.00000 </td>
   <td style="text-align:left;"> 2018-61-3 </td>
   <td style="text-align:left;"> HMDB00512 </td>
   <td style="text-align:left;"> C03519 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 208.0976 </td>
   <td style="text-align:right;"> 206.08200 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Phenylalanine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_746 </td>
   <td style="text-align:left;"> p-Cresol glucuronide </td>
   <td style="text-align:left;"> 284.089325 </td>
   <td style="text-align:right;"> 126.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11686 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 285.0971 </td>
   <td style="text-align:right;"> 283.08150 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Amino Acid </td>
   <td style="text-align:left;"> Tyrosine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_747 </td>
   <td style="text-align:left;"> Pyridoxic acid </td>
   <td style="text-align:left;"> 183.053625 </td>
   <td style="text-align:right;"> 54.00000 </td>
   <td style="text-align:left;"> 82-82-6 </td>
   <td style="text-align:left;"> HMDB00017 </td>
   <td style="text-align:left;"> C00847 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 184.0615 </td>
   <td style="text-align:right;"> 182.04580 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Vitamin B6 Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_748 </td>
   <td style="text-align:left;"> gamma-CEHC </td>
   <td style="text-align:left;"> 264.136125 </td>
   <td style="text-align:right;"> 396.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB01931 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 265.1440 </td>
   <td style="text-align:right;"> 263.12830 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Cofactors and Vitamins </td>
   <td style="text-align:left;"> Tocopherol Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_749 </td>
   <td style="text-align:left;"> C8:2,OH FA (Hydroxy-octadienoic acid) </td>
   <td style="text-align:left;"> 156.079225 </td>
   <td style="text-align:right;"> 198.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB31101 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 157.0871 </td>
   <td style="text-align:right;"> 155.07140 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_750 </td>
   <td style="text-align:left;"> C8:1,OH FA (Hydroxy-octenoic acid) </td>
   <td style="text-align:left;"> 158.094725 </td>
   <td style="text-align:right;"> 282.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 159.1026 </td>
   <td style="text-align:right;"> 157.08690 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_751 </td>
   <td style="text-align:left;"> C8:0,OH FA(1) (Hydroxyoctanoic acid) </td>
   <td style="text-align:left;"> 160.110425 </td>
   <td style="text-align:right;"> 294.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00486 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 161.1182 </td>
   <td style="text-align:right;"> 159.10260 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_752 </td>
   <td style="text-align:left;"> C8:0,OH FA(2) (Hydroxyoctanoic acid) </td>
   <td style="text-align:left;"> 160.110425 </td>
   <td style="text-align:right;"> 318.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00486 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 161.1182 </td>
   <td style="text-align:right;"> 159.10260 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_753 </td>
   <td style="text-align:left;"> C10:3 FA (Decatrienoic acid) </td>
   <td style="text-align:left;"> 166.099825 </td>
   <td style="text-align:right;"> 420.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 167.1077 </td>
   <td style="text-align:right;"> 165.09200 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_754 </td>
   <td style="text-align:left;"> C10:2 FA (Decadienoic acid) </td>
   <td style="text-align:left;"> 168.115525 </td>
   <td style="text-align:right;"> 420.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 169.1233 </td>
   <td style="text-align:right;"> 167.10770 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_755 </td>
   <td style="text-align:left;"> C10:1 FA (Decenoic acid) </td>
   <td style="text-align:left;"> 170.131225 </td>
   <td style="text-align:right;"> 468.00000 </td>
   <td style="text-align:left;"> 57602-94-5 </td>
   <td style="text-align:left;"> HMDB04980 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 171.1390 </td>
   <td style="text-align:right;"> 169.12340 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_756 </td>
   <td style="text-align:left;"> C9:1,OH FA (Hydroxy-nonenoic acid) </td>
   <td style="text-align:left;"> 172.110525 </td>
   <td style="text-align:right;"> 330.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 173.1183 </td>
   <td style="text-align:right;"> 171.10270 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_757 </td>
   <td style="text-align:left;"> C10:2,OH FA (Hydroxy-decadienoic acid) </td>
   <td style="text-align:left;"> 184.110325 </td>
   <td style="text-align:right;"> 342.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 185.1182 </td>
   <td style="text-align:right;"> 183.10250 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_758 </td>
   <td style="text-align:left;"> C11:1 FA (Undecenoic acid) </td>
   <td style="text-align:left;"> 184.146725 </td>
   <td style="text-align:right;"> 498.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB33724 </td>
   <td style="text-align:left;"> C13910 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 185.1546 </td>
   <td style="text-align:right;"> 183.13890 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_759 </td>
   <td style="text-align:left;"> C10:1,OH FA (Hydroxy-decenoic acid) </td>
   <td style="text-align:left;"> 186.126025 </td>
   <td style="text-align:right;"> 396.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB39533 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 187.1338 </td>
   <td style="text-align:right;"> 185.11820 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_760 </td>
   <td style="text-align:left;"> C9:0,DC FA (Azelaic acid) </td>
   <td style="text-align:left;"> 188.105325 </td>
   <td style="text-align:right;"> 312.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00784 </td>
   <td style="text-align:left;"> C08261 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 189.1131 </td>
   <td style="text-align:right;"> 187.09750 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_761 </td>
   <td style="text-align:left;"> C10:0,OH FA(1) (Hydroxycapric acid) </td>
   <td style="text-align:left;"> 188.141625 </td>
   <td style="text-align:right;"> 420.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02203 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 189.1495 </td>
   <td style="text-align:right;"> 187.13380 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_762 </td>
   <td style="text-align:left;"> C10:0,OH FA(2) (Hydroxycapric acid) </td>
   <td style="text-align:left;"> 188.141625 </td>
   <td style="text-align:right;"> 438.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02203 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 189.1495 </td>
   <td style="text-align:right;"> 187.13380 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_763 </td>
   <td style="text-align:left;"> C12:2 FA (Dodecadienoic acid) </td>
   <td style="text-align:left;"> 196.146625 </td>
   <td style="text-align:right;"> 510.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 197.1544 </td>
   <td style="text-align:right;"> 195.13880 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_764 </td>
   <td style="text-align:left;"> C12:1 FA(1) (Dodecenoic acid) </td>
   <td style="text-align:left;"> 198.162425 </td>
   <td style="text-align:right;"> 528.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00529 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 199.1703 </td>
   <td style="text-align:right;"> 197.15460 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_765 </td>
   <td style="text-align:left;"> C12:1 FA(2) (Dodecenoic acid) </td>
   <td style="text-align:left;"> 198.162425 </td>
   <td style="text-align:right;"> 540.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00529 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 199.1703 </td>
   <td style="text-align:right;"> 197.15460 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_766 </td>
   <td style="text-align:left;"> C10:1,DC FA (Decenedicarboxylic acid) </td>
   <td style="text-align:left;"> 200.105325 </td>
   <td style="text-align:right;"> 324.00000 </td>
   <td style="text-align:left;"> 72879-22-2 </td>
   <td style="text-align:left;"> HMDB00603 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 201.1131 </td>
   <td style="text-align:right;"> 199.09750 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_767 </td>
   <td style="text-align:left;"> C12:0 FA (Dodecanoic acid) </td>
   <td style="text-align:left;"> 200.178025 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> 143-07-7 </td>
   <td style="text-align:left;"> HMDB00638 </td>
   <td style="text-align:left;"> C02679 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 201.1858 </td>
   <td style="text-align:right;"> 199.17020 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Medium Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_768 </td>
   <td style="text-align:left;"> C10:0,DC FA (Sebacic acid) </td>
   <td style="text-align:left;"> 202.120925 </td>
   <td style="text-align:right;"> 372.00000 </td>
   <td style="text-align:left;"> 111-20-6 </td>
   <td style="text-align:left;"> HMDB00792 </td>
   <td style="text-align:left;"> C08277 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 203.1287 </td>
   <td style="text-align:right;"> 201.11310 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_769 </td>
   <td style="text-align:left;"> C12:3,OH FA(1) (Hydroxy-dodecatrienoic acid) </td>
   <td style="text-align:left;"> 210.126025 </td>
   <td style="text-align:right;"> 378.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 211.1338 </td>
   <td style="text-align:right;"> 209.11820 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_770 </td>
   <td style="text-align:left;"> C12:3,OH FA(2) (Hydroxy-dodecatrienoic acid) </td>
   <td style="text-align:left;"> 210.126025 </td>
   <td style="text-align:right;"> 480.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 211.1338 </td>
   <td style="text-align:right;"> 209.11820 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_771 </td>
   <td style="text-align:left;"> C12:2,OH FA (Hydro-dodecadienoic acid) </td>
   <td style="text-align:left;"> 212.141625 </td>
   <td style="text-align:right;"> 606.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 213.1495 </td>
   <td style="text-align:right;"> 211.13380 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_772 </td>
   <td style="text-align:left;"> C13:1 FA (Tridecenoic acid) </td>
   <td style="text-align:left;"> 212.178125 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 213.1859 </td>
   <td style="text-align:right;"> 211.17030 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_773 </td>
   <td style="text-align:left;"> C12:1, OH FA (Hydroxy-dodecenoic acid) </td>
   <td style="text-align:left;"> 214.157325 </td>
   <td style="text-align:right;"> 462.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 215.1652 </td>
   <td style="text-align:right;"> 213.14950 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_774 </td>
   <td style="text-align:left;"> C13:0 FA (Tridecanoic acid) </td>
   <td style="text-align:left;"> 214.193625 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> HMDB00910 </td>
   <td style="text-align:left;"> C17076 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 215.2014 </td>
   <td style="text-align:right;"> 213.18580 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_775 </td>
   <td style="text-align:left;"> C11:0,DC FA (Undecanedioic acid) </td>
   <td style="text-align:left;"> 216.136325 </td>
   <td style="text-align:right;"> 414.00000 </td>
   <td style="text-align:left;"> 1852-04-6 </td>
   <td style="text-align:left;"> HMDB00888 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 217.1441 </td>
   <td style="text-align:right;"> 215.12850 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_776 </td>
   <td style="text-align:left;"> C12:0,OH FA (Hydroxydodecanoic acid) </td>
   <td style="text-align:left;"> 216.172825 </td>
   <td style="text-align:right;"> 492.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00387 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 217.1807 </td>
   <td style="text-align:right;"> 215.16500 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_777 </td>
   <td style="text-align:left;"> C14:1 FA (Tetradecenoic acid) </td>
   <td style="text-align:left;"> 226.193525 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02000 </td>
   <td style="text-align:left;"> C08322 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 227.2013 </td>
   <td style="text-align:right;"> 225.18570 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_778 </td>
   <td style="text-align:left;"> C12:1,DC FA(2) (Traumatic acid) </td>
   <td style="text-align:left;"> 228.136425 </td>
   <td style="text-align:right;"> 426.00000 </td>
   <td style="text-align:left;"> 6402-36-4 </td>
   <td style="text-align:left;"> HMDB00933 </td>
   <td style="text-align:left;"> C16308 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 229.1442 </td>
   <td style="text-align:right;"> 227.12860 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_779 </td>
   <td style="text-align:left;"> C12:1,DC FA(1) (Traumatic acid) </td>
   <td style="text-align:left;"> 228.136525 </td>
   <td style="text-align:right;"> 408.00000 </td>
   <td style="text-align:left;"> 6402-36-4 </td>
   <td style="text-align:left;"> HMDB00933 </td>
   <td style="text-align:left;"> C16308 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 229.1444 </td>
   <td style="text-align:right;"> 227.12870 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_780 </td>
   <td style="text-align:left;"> C14:0 FA (Myristic acid) </td>
   <td style="text-align:left;"> 228.209225 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> 544-63-8 </td>
   <td style="text-align:left;"> HMDB00806 </td>
   <td style="text-align:left;"> C06424 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 229.2171 </td>
   <td style="text-align:right;"> 227.20140 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_781 </td>
   <td style="text-align:left;"> C12:0,DC FA(1) (Dodecanedicarboxylic acid) </td>
   <td style="text-align:left;"> 230.151925 </td>
   <td style="text-align:right;"> 438.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00623 </td>
   <td style="text-align:left;"> C02678 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 231.1598 </td>
   <td style="text-align:right;"> 229.14410 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_782 </td>
   <td style="text-align:left;"> C12:0,DC FA(2) (Dodecanedicarboxylic acid) </td>
   <td style="text-align:left;"> 230.151925 </td>
   <td style="text-align:right;"> 456.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00623 </td>
   <td style="text-align:left;"> C02678 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 231.1598 </td>
   <td style="text-align:right;"> 229.14410 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_783 </td>
   <td style="text-align:left;"> C15:3 FA (Pentadecatrienoic acid) </td>
   <td style="text-align:left;"> 236.177825 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 237.1857 </td>
   <td style="text-align:right;"> 235.17000 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_784 </td>
   <td style="text-align:left;"> C14:3,OH FA (Hydroxy-tetradecatrienoic acid) </td>
   <td style="text-align:left;"> 238.157125 </td>
   <td style="text-align:right;"> 528.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 239.1650 </td>
   <td style="text-align:right;"> 237.14930 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_785 </td>
   <td style="text-align:left;"> 3-carboxy-4-methyl-5-propyl-2-furanpropanoate (CMPF) </td>
   <td style="text-align:left;"> 240.099925 </td>
   <td style="text-align:right;"> 420.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB61112 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 241.1078 </td>
   <td style="text-align:right;"> 239.09210 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_786 </td>
   <td style="text-align:left;"> C14:2,OH FA (Hydroxy-tetradecadienoic acid) </td>
   <td style="text-align:left;"> 240.172725 </td>
   <td style="text-align:right;"> 498.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 241.1806 </td>
   <td style="text-align:right;"> 239.16490 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_787 </td>
   <td style="text-align:left;"> C15:1 FA (Pentadecenoic acid) </td>
   <td style="text-align:left;"> 240.209125 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB29765 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 241.2169 </td>
   <td style="text-align:right;"> 239.20130 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_788 </td>
   <td style="text-align:left;"> C14:1,OH FA (Hydroxy-tetradecenoic acid) </td>
   <td style="text-align:left;"> 242.188425 </td>
   <td style="text-align:right;"> 528.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 243.1962 </td>
   <td style="text-align:right;"> 241.18060 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_789 </td>
   <td style="text-align:left;"> C15:0 FA (Pentadecanoic acid) </td>
   <td style="text-align:left;"> 242.224825 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> 1002-84-2 </td>
   <td style="text-align:left;"> HMDB00826 </td>
   <td style="text-align:left;"> C16537 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 243.2327 </td>
   <td style="text-align:right;"> 241.21700 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_790 </td>
   <td style="text-align:left;"> C13:0,DC FA(1) (Tridecanedicarboxylic acid) </td>
   <td style="text-align:left;"> 244.167525 </td>
   <td style="text-align:right;"> 462.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02327 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 245.1754 </td>
   <td style="text-align:right;"> 243.15970 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_791 </td>
   <td style="text-align:left;"> C13:0,DC FA(2) (Tridecanedicarboxylic acid) </td>
   <td style="text-align:left;"> 244.167525 </td>
   <td style="text-align:right;"> 480.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02327 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 245.1754 </td>
   <td style="text-align:right;"> 243.15970 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_792 </td>
   <td style="text-align:left;"> C13:0,DC FA(3) (Tridecanedicarboxylic acid) </td>
   <td style="text-align:left;"> 244.167525 </td>
   <td style="text-align:right;"> 492.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02327 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 245.1754 </td>
   <td style="text-align:right;"> 243.15970 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_793 </td>
   <td style="text-align:left;"> C14:0,OH FA (Hydroxy-myristic acid) </td>
   <td style="text-align:left;"> 244.203925 </td>
   <td style="text-align:right;"> 552.00000 </td>
   <td style="text-align:left;"> 2507-55-3 </td>
   <td style="text-align:left;"> HMDB02261 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 245.2117 </td>
   <td style="text-align:right;"> 243.19610 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_794 </td>
   <td style="text-align:left;"> C16:4 FA (Hexadecatetraenoic acid) </td>
   <td style="text-align:left;"> 248.177725 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 249.1856 </td>
   <td style="text-align:right;"> 247.16990 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_795 </td>
   <td style="text-align:left;"> C16:3 FA (Hexadecatrienoic acid) </td>
   <td style="text-align:left;"> 250.193425 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 251.2012 </td>
   <td style="text-align:right;"> 249.18560 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_796 </td>
   <td style="text-align:left;"> C16:2 FA (Hexadecadienoic acid) </td>
   <td style="text-align:left;"> 252.209025 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00477 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 253.2168 </td>
   <td style="text-align:right;"> 251.20120 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_797 </td>
   <td style="text-align:left;"> C16:1 FA (Palmitoleic acid) </td>
   <td style="text-align:left;"> 254.224625 </td>
   <td style="text-align:right;"> 612.00000 </td>
   <td style="text-align:left;"> 373-49-9 </td>
   <td style="text-align:left;"> HMDB03229 </td>
   <td style="text-align:left;"> C08362 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 255.2325 </td>
   <td style="text-align:right;"> 253.21680 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_798 </td>
   <td style="text-align:left;"> C14:2,2OH FA (Dihydro-tetradecadienoic acid) </td>
   <td style="text-align:left;"> 256.167525 </td>
   <td style="text-align:right;"> 480.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 257.1753 </td>
   <td style="text-align:right;"> 255.15970 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dihydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_799 </td>
   <td style="text-align:left;"> C16:0 FA (Palmitic acid) </td>
   <td style="text-align:left;"> 256.240225 </td>
   <td style="text-align:right;"> 636.00000 </td>
   <td style="text-align:left;"> 57-10-3 </td>
   <td style="text-align:left;"> HMDB00220 </td>
   <td style="text-align:left;"> C00249 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 257.2480 </td>
   <td style="text-align:right;"> 255.23240 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_800 </td>
   <td style="text-align:left;"> C14:0,DC FA(1) (Tetradecanedicarboxylic acid) </td>
   <td style="text-align:left;"> 258.183225 </td>
   <td style="text-align:right;"> 498.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00872 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 259.1911 </td>
   <td style="text-align:right;"> 257.17540 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_801 </td>
   <td style="text-align:left;"> C14:0,DC FA(2) (Tetradecanedicarboxylic acid) </td>
   <td style="text-align:left;"> 258.183225 </td>
   <td style="text-align:right;"> 516.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00872 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 259.1911 </td>
   <td style="text-align:right;"> 257.17540 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_802 </td>
   <td style="text-align:left;"> C15:0,OH FA (Hydroxy-pentadecanoic acid) </td>
   <td style="text-align:left;"> 258.219625 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 259.2274 </td>
   <td style="text-align:right;"> 257.21180 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_803 </td>
   <td style="text-align:left;"> Lauryl sulfate </td>
   <td style="text-align:left;"> 266.155125 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 267.1630 </td>
   <td style="text-align:right;"> 265.14730 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_804 </td>
   <td style="text-align:left;"> C16:2,OH FA (Hydroxy-hexadecadienoic acid) </td>
   <td style="text-align:left;"> 268.203825 </td>
   <td style="text-align:right;"> 540.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 269.2117 </td>
   <td style="text-align:right;"> 267.19600 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_805 </td>
   <td style="text-align:left;"> C17:1 FA (Heptadecenoic acid) </td>
   <td style="text-align:left;"> 268.240225 </td>
   <td style="text-align:right;"> 630.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB60038 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 269.2480 </td>
   <td style="text-align:right;"> 267.23240 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_806 </td>
   <td style="text-align:left;"> C16:1,OH FA (Hydroxy-palmitoleic acid) </td>
   <td style="text-align:left;"> 270.219525 </td>
   <td style="text-align:right;"> 570.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 271.2274 </td>
   <td style="text-align:right;"> 269.21170 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_807 </td>
   <td style="text-align:left;"> C17:0 FA (Heptadecanoic acid) </td>
   <td style="text-align:left;"> 270.255925 </td>
   <td style="text-align:right;"> 654.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02259 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 271.2638 </td>
   <td style="text-align:right;"> 269.24810 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_808 </td>
   <td style="text-align:left;"> C16:0,OH FA(1) (Hydroxy-hexadecanoic acid) </td>
   <td style="text-align:left;"> 272.235125 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10734 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 273.2430 </td>
   <td style="text-align:right;"> 271.22730 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_809 </td>
   <td style="text-align:left;"> C16:0,OH FA(2) (Hydroxy-hexadecanoic acid) </td>
   <td style="text-align:left;"> 272.235225 </td>
   <td style="text-align:right;"> 606.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10734 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 273.2430 </td>
   <td style="text-align:right;"> 271.22740 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_810 </td>
   <td style="text-align:left;"> C18:4 FA (Octadecatetraenoic acid) </td>
   <td style="text-align:left;"> 276.208925 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB06547 </td>
   <td style="text-align:left;"> C16300 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 277.2167 </td>
   <td style="text-align:right;"> 275.20110 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_811 </td>
   <td style="text-align:left;"> C17:4,OH FA (Hydroxy-heptadecatetraenoic acid) </td>
   <td style="text-align:left;"> 278.188025 </td>
   <td style="text-align:right;"> 504.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 279.1959 </td>
   <td style="text-align:right;"> 277.18020 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_812 </td>
   <td style="text-align:left;"> C18:3 FA (Linolenic acid) </td>
   <td style="text-align:left;"> 278.224325 </td>
   <td style="text-align:right;"> 606.00000 </td>
   <td style="text-align:left;"> 463-40-1 </td>
   <td style="text-align:left;"> HMDB01388 </td>
   <td style="text-align:left;"> C06427 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 279.2321 </td>
   <td style="text-align:right;"> 277.21650 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_813 </td>
   <td style="text-align:left;"> C17:3,OH FA (Hydroxy-septadecatrienoic acid) </td>
   <td style="text-align:left;"> 280.194325 </td>
   <td style="text-align:right;"> 504.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 281.2022 </td>
   <td style="text-align:right;"> 279.18650 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_814 </td>
   <td style="text-align:left;"> C16:0,DC FA (Hexadecanedicarboxylic acid) </td>
   <td style="text-align:left;"> 286.214325 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00672 </td>
   <td style="text-align:left;"> C19615 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 287.2221 </td>
   <td style="text-align:right;"> 285.20650 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_815 </td>
   <td style="text-align:left;"> C18:4,OH FA (Hydroxy-octadecatetraenoic acid) </td>
   <td style="text-align:left;"> 292.203925 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 293.2117 </td>
   <td style="text-align:right;"> 291.19610 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_816 </td>
   <td style="text-align:left;"> C18:3,OH FA (Hydroxylinolenic acid) </td>
   <td style="text-align:left;"> 294.219525 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11108 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 295.2274 </td>
   <td style="text-align:right;"> 293.21170 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_817 </td>
   <td style="text-align:left;"> 9-HODE(1) </td>
   <td style="text-align:left;"> 296.235025 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB04702 </td>
   <td style="text-align:left;"> C14826 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 297.2428 </td>
   <td style="text-align:right;"> 295.22720 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_818 </td>
   <td style="text-align:left;"> 9-HODE(2) </td>
   <td style="text-align:left;"> 296.235025 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB04702 </td>
   <td style="text-align:left;"> C14826 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 297.2428 </td>
   <td style="text-align:right;"> 295.22720 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_819 </td>
   <td style="text-align:left;"> C19:1 FA (Nonadecaenoic acid) </td>
   <td style="text-align:left;"> 296.271325 </td>
   <td style="text-align:right;"> 660.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB13622 </td>
   <td style="text-align:left;"> C00174 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 297.2792 </td>
   <td style="text-align:right;"> 295.26350 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_820 </td>
   <td style="text-align:left;"> C18:1,OH FA(2) (Hydroxy-oleic acid) </td>
   <td style="text-align:left;"> 298.250625 </td>
   <td style="text-align:right;"> 606.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 299.2584 </td>
   <td style="text-align:right;"> 297.24280 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_821 </td>
   <td style="text-align:left;"> C18:1,OH FA(1) (Hydroxy-oleic acid) </td>
   <td style="text-align:left;"> 298.250625 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 299.2584 </td>
   <td style="text-align:right;"> 297.24280 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_822 </td>
   <td style="text-align:left;"> C19:0 FA(1) (Nonadecanoic acid) </td>
   <td style="text-align:left;"> 298.286925 </td>
   <td style="text-align:right;"> 660.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00772 </td>
   <td style="text-align:left;"> C16535 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 299.2948 </td>
   <td style="text-align:right;"> 297.27910 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_823 </td>
   <td style="text-align:left;"> C19:0 FA(2) (Nonadecanoic acid) </td>
   <td style="text-align:left;"> 298.287025 </td>
   <td style="text-align:right;"> 690.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00772 </td>
   <td style="text-align:left;"> C16535 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 299.2948 </td>
   <td style="text-align:right;"> 297.27920 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_824 </td>
   <td style="text-align:left;"> C20:6 FA (Retinoic acid) </td>
   <td style="text-align:left;"> 300.208825 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02369 </td>
   <td style="text-align:left;"> C15493 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 301.2167 </td>
   <td style="text-align:right;"> 299.20100 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_825 </td>
   <td style="text-align:left;"> C18:0,OH FA (Hydroxy-octadecanoic acid) </td>
   <td style="text-align:left;"> 300.266225 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10737 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 301.2740 </td>
   <td style="text-align:right;"> 299.25840 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_826 </td>
   <td style="text-align:left;"> C20:5 FA (Eicosapentaenoic acid) </td>
   <td style="text-align:left;"> 302.224325 </td>
   <td style="text-align:right;"> 606.00000 </td>
   <td style="text-align:left;"> 10417-94-4 </td>
   <td style="text-align:left;"> HMDB01999 </td>
   <td style="text-align:left;"> C06428 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 303.2321 </td>
   <td style="text-align:right;"> 301.21650 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_827 </td>
   <td style="text-align:left;"> C20:4 FA (Arachidonic acid) </td>
   <td style="text-align:left;"> 304.240025 </td>
   <td style="text-align:right;"> 624.00000 </td>
   <td style="text-align:left;"> 506-32-1 </td>
   <td style="text-align:left;"> HMDB01043 </td>
   <td style="text-align:left;"> C00219 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 305.2479 </td>
   <td style="text-align:right;"> 303.23220 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_828 </td>
   <td style="text-align:left;"> C20:3 FA (Eicosatrienoic acid) </td>
   <td style="text-align:left;"> 306.255625 </td>
   <td style="text-align:right;"> 636.00000 </td>
   <td style="text-align:left;"> 1783-84-2 </td>
   <td style="text-align:left;"> HMDB02925 </td>
   <td style="text-align:left;"> C03242 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 307.2634 </td>
   <td style="text-align:right;"> 305.24780 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_829 </td>
   <td style="text-align:left;"> C20:2 FA (Eicosadienoic acid) </td>
   <td style="text-align:left;"> 308.271525 </td>
   <td style="text-align:right;"> 654.00000 </td>
   <td style="text-align:left;"> 5598-38-9 </td>
   <td style="text-align:left;"> HMDB05060 </td>
   <td style="text-align:left;"> C16525 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 309.2794 </td>
   <td style="text-align:right;"> 307.26370 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_830 </td>
   <td style="text-align:left;"> C18:2,DC FA (Octadecadienedicarboxylic acid) </td>
   <td style="text-align:left;"> 310.214425 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 311.2222 </td>
   <td style="text-align:right;"> 309.20660 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_831 </td>
   <td style="text-align:left;"> C20:1 FA (Eicosenoic acid) </td>
   <td style="text-align:left;"> 310.287125 </td>
   <td style="text-align:right;"> 672.00000 </td>
   <td style="text-align:left;"> 5561-99-9 </td>
   <td style="text-align:left;"> HMDB02231 </td>
   <td style="text-align:left;"> C16526 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 311.2949 </td>
   <td style="text-align:right;"> 309.27930 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_832 </td>
   <td style="text-align:left;"> C18:1,DC FA (Octadecenedicarboxylic acid) </td>
   <td style="text-align:left;"> 312.230125 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 313.2380 </td>
   <td style="text-align:right;"> 311.22230 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_833 </td>
   <td style="text-align:left;"> C20:0 FA (Arachidic acid) </td>
   <td style="text-align:left;"> 312.302725 </td>
   <td style="text-align:right;"> 678.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02212 </td>
   <td style="text-align:left;"> C06425 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 313.3105 </td>
   <td style="text-align:right;"> 311.29490 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_834 </td>
   <td style="text-align:left;"> C18:0,DC FA (Octadecanedicarboxylic acid) </td>
   <td style="text-align:left;"> 314.245625 </td>
   <td style="text-align:right;"> 606.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00782 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 315.2534 </td>
   <td style="text-align:right;"> 313.23780 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_835 </td>
   <td style="text-align:left;"> C20:4,OH FA(2) (HETE) </td>
   <td style="text-align:left;"> 320.235025 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10222 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 321.2428 </td>
   <td style="text-align:right;"> 319.22720 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_836 </td>
   <td style="text-align:left;"> C20:4,OH FA(1) (HETE) </td>
   <td style="text-align:left;"> 320.235125 </td>
   <td style="text-align:right;"> 570.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10222 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 321.2430 </td>
   <td style="text-align:right;"> 319.22730 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_837 </td>
   <td style="text-align:left;"> C20:3,OH FA (Hydroxy-eicosatrienoic acid) </td>
   <td style="text-align:left;"> 322.250725 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> 13-16-1 </td>
   <td style="text-align:left;"> HMDB05045 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 323.2586 </td>
   <td style="text-align:right;"> 321.24290 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_838 </td>
   <td style="text-align:left;"> C20:2,OH FA (Hydroxy-eicosadienoic acid) </td>
   <td style="text-align:left;"> 324.266325 </td>
   <td style="text-align:right;"> 618.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 325.2742 </td>
   <td style="text-align:right;"> 323.25850 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_839 </td>
   <td style="text-align:left;"> C22:6 FA (Docosahexaenoic acid) </td>
   <td style="text-align:left;"> 328.240025 </td>
   <td style="text-align:right;"> 624.00000 </td>
   <td style="text-align:left;"> 6217-54-5 </td>
   <td style="text-align:left;"> HMDB02183 </td>
   <td style="text-align:left;"> C06429 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 329.2479 </td>
   <td style="text-align:right;"> 327.23220 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_840 </td>
   <td style="text-align:left;"> C18:1,3OH FA (Trihydroxy-octadecenoic acid) </td>
   <td style="text-align:left;"> 330.240525 </td>
   <td style="text-align:right;"> 462.00000 </td>
   <td style="text-align:left;"> 29907-57-1 </td>
   <td style="text-align:left;"> HMDB04710 </td>
   <td style="text-align:left;"> C14835 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 331.2484 </td>
   <td style="text-align:right;"> 329.23270 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Trihydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_841 </td>
   <td style="text-align:left;"> C22:5 FA (Docosapentaenoic acid) </td>
   <td style="text-align:left;"> 330.255725 </td>
   <td style="text-align:right;"> 636.00000 </td>
   <td style="text-align:left;"> 24880-45-3 </td>
   <td style="text-align:left;"> HMDB06528 </td>
   <td style="text-align:left;"> C16513 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 331.2636 </td>
   <td style="text-align:right;"> 329.24790 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_842 </td>
   <td style="text-align:left;"> Hydroxyprogesterone </td>
   <td style="text-align:left;"> 332.198625 </td>
   <td style="text-align:right;"> 414.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> HMDB04031 </td>
   <td style="text-align:left;"> C05498 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 333.2065 </td>
   <td style="text-align:right;"> 331.19080 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Progestin Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_843 </td>
   <td style="text-align:left;"> C22:4 FA (Adrenic acid) </td>
   <td style="text-align:left;"> 332.271425 </td>
   <td style="text-align:right;"> 648.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB02226 </td>
   <td style="text-align:left;"> C16527 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 333.2792 </td>
   <td style="text-align:right;"> 331.26360 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_844 </td>
   <td style="text-align:left;"> C20:4,DC FA </td>
   <td style="text-align:left;"> 334.214325 </td>
   <td style="text-align:right;"> 444.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 335.2221 </td>
   <td style="text-align:right;"> 333.20650 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dicarboxylate </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_845 </td>
   <td style="text-align:left;"> C22:3 FA (Docosatrienoic acid) </td>
   <td style="text-align:left;"> 334.286925 </td>
   <td style="text-align:right;"> 666.00000 </td>
   <td style="text-align:left;"> 28845-86-5 </td>
   <td style="text-align:left;"> HMDB02823 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 335.2948 </td>
   <td style="text-align:right;"> 333.27910 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_846 </td>
   <td style="text-align:left;"> C22:2 FA (Docosadienoic acid) </td>
   <td style="text-align:left;"> 336.302825 </td>
   <td style="text-align:right;"> 690.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB61714 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 337.3107 </td>
   <td style="text-align:right;"> 335.29500 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_847 </td>
   <td style="text-align:left;"> C22:1 FA (Catelaidic acid) </td>
   <td style="text-align:left;"> 338.318425 </td>
   <td style="text-align:right;"> 720.00000 </td>
   <td style="text-align:left;"> 1002-96-6 </td>
   <td style="text-align:left;"> HMDB02884 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 339.3263 </td>
   <td style="text-align:right;"> 337.31060 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_848 </td>
   <td style="text-align:left;"> C22:6,OH FA (Hydroxy-docosahexaenoic acid) </td>
   <td style="text-align:left;"> 344.235025 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> 90780-52-2 </td>
   <td style="text-align:left;"> HMDB10213 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 345.2428 </td>
   <td style="text-align:right;"> 343.22720 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_849 </td>
   <td style="text-align:left;"> C20:0,2OH FA (Dihydroxy-eicosanoic acid) </td>
   <td style="text-align:left;"> 344.292525 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> 120727-26-6 </td>
   <td style="text-align:left;"> HMDB31923 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 345.3003 </td>
   <td style="text-align:right;"> 343.28470 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dihydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_850 </td>
   <td style="text-align:left;"> Corticosterone </td>
   <td style="text-align:left;"> 346.214225 </td>
   <td style="text-align:right;"> 570.00000 </td>
   <td style="text-align:left;"> 50-22-6 </td>
   <td style="text-align:left;"> HMDB01547 </td>
   <td style="text-align:left;"> C02140 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 347.2221 </td>
   <td style="text-align:right;"> 345.20640 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Corticosteroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_851 </td>
   <td style="text-align:left;"> C22:5,OH FA (Hydroxy-docosapentaenoic acid) </td>
   <td style="text-align:left;"> 346.250625 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 347.2584 </td>
   <td style="text-align:right;"> 345.24280 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_852 </td>
   <td style="text-align:left;"> C24:6 FA (Tetracosahexaenoic acid) </td>
   <td style="text-align:left;"> 356.271625 </td>
   <td style="text-align:right;"> 648.00000 </td>
   <td style="text-align:left;"> 81247-23-6 </td>
   <td style="text-align:left;"> HMDB02007 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 357.2794 </td>
   <td style="text-align:right;"> 355.26380 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_853 </td>
   <td style="text-align:left;"> C24:5 FA (Tetracosapentaenoic acid) </td>
   <td style="text-align:left;"> 358.287025 </td>
   <td style="text-align:right;"> 660.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB06322 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 359.2948 </td>
   <td style="text-align:right;"> 357.27920 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_854 </td>
   <td style="text-align:left;"> C24:4 FA (Tetracosatetraenoic acid) </td>
   <td style="text-align:left;"> 360.302725 </td>
   <td style="text-align:right;"> 678.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB06246 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 361.3105 </td>
   <td style="text-align:right;"> 359.29490 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Polyunsaturated Fatty Acid (n3 and n6) </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_855 </td>
   <td style="text-align:left;"> C22:4,2OH FA  (Dihydro-docosatetraenoic acid) </td>
   <td style="text-align:left;"> 364.261225 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 365.2690 </td>
   <td style="text-align:right;"> 363.25340 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dihydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_856 </td>
   <td style="text-align:left;"> C24:1 FA (Nervonic acid) </td>
   <td style="text-align:left;"> 366.349425 </td>
   <td style="text-align:right;"> 792.00000 </td>
   <td style="text-align:left;"> 506-37-6 </td>
   <td style="text-align:left;"> HMDB02368 </td>
   <td style="text-align:left;"> C08323 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 367.3573 </td>
   <td style="text-align:right;"> 365.34160 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_857 </td>
   <td style="text-align:left;"> Dehydroisoandrosterone sulfate (DHEA-S)(2) </td>
   <td style="text-align:left;"> 368.165425 </td>
   <td style="text-align:right;"> 504.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB01032 </td>
   <td style="text-align:left;"> C04555 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 369.1732 </td>
   <td style="text-align:right;"> 367.15760 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_858 </td>
   <td style="text-align:left;"> Androsterone sulfate </td>
   <td style="text-align:left;"> 370.180925 </td>
   <td style="text-align:right;"> 540.00000 </td>
   <td style="text-align:left;"> 2479-86-9 </td>
   <td style="text-align:left;"> HMDB02759 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 371.1888 </td>
   <td style="text-align:right;"> 369.17310 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_859 </td>
   <td style="text-align:left;"> 5alpha-Androstan-3alpha,17alpha-diol monosulfate </td>
   <td style="text-align:left;"> 372.195825 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 373.2036 </td>
   <td style="text-align:right;"> 371.18800 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_860 </td>
   <td style="text-align:left;"> 16a-hydroxy DHEA 3-sulfate </td>
   <td style="text-align:left;"> 384.160425 </td>
   <td style="text-align:right;"> 438.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 385.1683 </td>
   <td style="text-align:right;"> 383.15260 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_861 </td>
   <td style="text-align:left;"> Chenodeoxycholic Acid(2) </td>
   <td style="text-align:left;"> 392.292525 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB0000518 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 393.3003 </td>
   <td style="text-align:right;"> 391.28470 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_862 </td>
   <td style="text-align:left;"> Chenodeoxycholic Acid(1) </td>
   <td style="text-align:left;"> 392.292625 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB0000518 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 393.3005 </td>
   <td style="text-align:right;"> 391.28480 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_863 </td>
   <td style="text-align:left;"> C24:3,2OH (Dihydroxy-Tetracosatrienoic acid) </td>
   <td style="text-align:left;"> 394.308125 </td>
   <td style="text-align:right;"> 630.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 395.3159 </td>
   <td style="text-align:right;"> 393.30030 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Dihydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_864 </td>
   <td style="text-align:left;"> Pregnenolone sulfate </td>
   <td style="text-align:left;"> 396.196725 </td>
   <td style="text-align:right;"> 570.00000 </td>
   <td style="text-align:left;"> 1247-64-9 </td>
   <td style="text-align:left;"> HMDB00774 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 397.2045 </td>
   <td style="text-align:right;"> 395.18890 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Progestin Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_865 </td>
   <td style="text-align:left;"> Pregnanolone sulfate </td>
   <td style="text-align:left;"> 398.212525 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 399.2203 </td>
   <td style="text-align:right;"> 397.20470 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Progestin Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_866 </td>
   <td style="text-align:left;"> C25:0,OH FA (Hydroxy-pentacosanoic acid) </td>
   <td style="text-align:left;"> 398.375625 </td>
   <td style="text-align:right;"> 678.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 399.3834 </td>
   <td style="text-align:right;"> 397.36780 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Fatty Acid, Monohydroxy </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_867 </td>
   <td style="text-align:left;"> 5alpha-pregnan-3beta,20beta-diol monosulfate (1) </td>
   <td style="text-align:left;"> 400.228125 </td>
   <td style="text-align:right;"> 576.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 401.2360 </td>
   <td style="text-align:right;"> 399.22030 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Progestin Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_868 </td>
   <td style="text-align:left;"> Cholic Acid </td>
   <td style="text-align:left;"> 408.287225 </td>
   <td style="text-align:right;"> 540.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB0000619 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 409.2951 </td>
   <td style="text-align:right;"> 407.27940 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_869 </td>
   <td style="text-align:left;"> 7-alpha-hydroxy-3-oxo-4-cholestenoate (7-Hoca) </td>
   <td style="text-align:left;"> 430.307725 </td>
   <td style="text-align:right;"> 612.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB12458 </td>
   <td style="text-align:left;"> C17337 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 431.3155 </td>
   <td style="text-align:right;"> 429.29990 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Sterol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_870 </td>
   <td style="text-align:left;"> LysoPE(15:0) </td>
   <td style="text-align:left;"> 439.269525 </td>
   <td style="text-align:right;"> 528.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11472 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 440.2774 </td>
   <td style="text-align:right;"> 438.26170 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_871 </td>
   <td style="text-align:left;"> Chenodeoxycholic acid glycine conjugate </td>
   <td style="text-align:left;"> 449.313825 </td>
   <td style="text-align:right;"> 552.00000 </td>
   <td style="text-align:left;"> 640-79-9 </td>
   <td style="text-align:left;"> HMDB00637 </td>
   <td style="text-align:left;"> C05466 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 450.3216 </td>
   <td style="text-align:right;"> 448.30600 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_872 </td>
   <td style="text-align:left;"> Sulfolithocholic acid </td>
   <td style="text-align:left;"> 456.253925 </td>
   <td style="text-align:right;"> 648.00000 </td>
   <td style="text-align:left;"> 34669-57-3 </td>
   <td style="text-align:left;"> HMDB00907 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 457.2618 </td>
   <td style="text-align:right;"> 455.24610 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_873 </td>
   <td style="text-align:left;"> Glycocholic acid </td>
   <td style="text-align:left;"> 465.308425 </td>
   <td style="text-align:right;"> 516.00000 </td>
   <td style="text-align:left;"> 475-31-0 </td>
   <td style="text-align:left;"> HMDB00138 </td>
   <td style="text-align:left;"> C01921 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 466.3163 </td>
   <td style="text-align:right;"> 464.30060 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_874 </td>
   <td style="text-align:left;"> Androsterone glucuronide(1) </td>
   <td style="text-align:left;"> 466.256025 </td>
   <td style="text-align:right;"> 480.00000 </td>
   <td style="text-align:left;"> 1852-43-3 </td>
   <td style="text-align:left;"> HMDB02829 </td>
   <td style="text-align:left;"> C11135 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 467.2638 </td>
   <td style="text-align:right;"> 465.24820 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_875 </td>
   <td style="text-align:left;"> Androsterone glucuronide(2) </td>
   <td style="text-align:left;"> 466.256125 </td>
   <td style="text-align:right;"> 498.00000 </td>
   <td style="text-align:left;"> 1852-43-3 </td>
   <td style="text-align:left;"> HMDB02829 </td>
   <td style="text-align:left;"> C11135 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 467.2640 </td>
   <td style="text-align:right;"> 465.24830 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_876 </td>
   <td style="text-align:left;"> 5alpha-Androstan-3alpha,17beta-diol 17-glucuronide(1) </td>
   <td style="text-align:left;"> 468.271525 </td>
   <td style="text-align:right;"> 486.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 469.2794 </td>
   <td style="text-align:right;"> 467.26370 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_877 </td>
   <td style="text-align:left;"> 5alpha-Androstan-3alpha,17beta-diol 17-glucuronide(2) </td>
   <td style="text-align:left;"> 468.271825 </td>
   <td style="text-align:right;"> 516.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 469.2797 </td>
   <td style="text-align:right;"> 467.26400 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_878 </td>
   <td style="text-align:left;"> Chenodeoxycholic acid 3-sulfate(2) </td>
   <td style="text-align:left;"> 472.249125 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> 59132-32-0 </td>
   <td style="text-align:left;"> HMDB02586 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 473.2570 </td>
   <td style="text-align:right;"> 471.24130 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_879 </td>
   <td style="text-align:left;"> Chenodeoxycholic acid 3-sulfate(1) </td>
   <td style="text-align:left;"> 472.249325 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> 59132-32-0 </td>
   <td style="text-align:left;"> HMDB02586 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 473.2572 </td>
   <td style="text-align:right;"> 471.24150 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_880 </td>
   <td style="text-align:left;"> 11-beta-Hydroxyandrosterone-3-glucuronide </td>
   <td style="text-align:left;"> 482.251125 </td>
   <td style="text-align:right;"> 408.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10351 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 483.2590 </td>
   <td style="text-align:right;"> 481.24330 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_881 </td>
   <td style="text-align:left;"> Pregnanediol-3-glucuronide </td>
   <td style="text-align:left;"> 496.303125 </td>
   <td style="text-align:right;"> 534.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10318 </td>
   <td style="text-align:left;"> C03033 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 497.3109 </td>
   <td style="text-align:right;"> 495.29530 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Progestin Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_882 </td>
   <td style="text-align:left;"> Tauroursodeoxycholic acid </td>
   <td style="text-align:left;"> 499.296225 </td>
   <td style="text-align:right;"> 600.00000 </td>
   <td style="text-align:left;"> 14605-22-2 </td>
   <td style="text-align:left;"> HMDB00874 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 500.3041 </td>
   <td style="text-align:right;"> 498.28840 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_883 </td>
   <td style="text-align:left;"> LysoPE(20:2) </td>
   <td style="text-align:left;"> 505.316625 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11483 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 506.3245 </td>
   <td style="text-align:right;"> 504.30880 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_884 </td>
   <td style="text-align:left;"> LysoPE(20:1) </td>
   <td style="text-align:left;"> 507.331925 </td>
   <td style="text-align:right;"> 606.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11482 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 508.3397 </td>
   <td style="text-align:right;"> 506.32410 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_885 </td>
   <td style="text-align:left;"> LysoPE(20:0) </td>
   <td style="text-align:left;"> 509.347425 </td>
   <td style="text-align:right;"> 630.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11481 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 510.3553 </td>
   <td style="text-align:right;"> 508.33960 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_886 </td>
   <td style="text-align:left;"> LysoPG(18:0) </td>
   <td style="text-align:left;"> 512.310625 </td>
   <td style="text-align:right;"> 612.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 513.3184 </td>
   <td style="text-align:right;"> 511.30280 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_887 </td>
   <td style="text-align:left;"> Taurocholic acid </td>
   <td style="text-align:left;"> 515.291225 </td>
   <td style="text-align:right;"> 558.00000 </td>
   <td style="text-align:left;"> 81-24-3 </td>
   <td style="text-align:left;"> HMDB00036 </td>
   <td style="text-align:left;"> C05122 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 516.2990 </td>
   <td style="text-align:right;"> 514.28340 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Primary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_888 </td>
   <td style="text-align:left;"> LysoPE(22:5) </td>
   <td style="text-align:left;"> 527.300925 </td>
   <td style="text-align:right;"> 588.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11494 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 528.3088 </td>
   <td style="text-align:right;"> 526.29310 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_889 </td>
   <td style="text-align:left;"> LysoPE(22:4) </td>
   <td style="text-align:left;"> 529.316025 </td>
   <td style="text-align:right;"> 582.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB11493 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 530.3238 </td>
   <td style="text-align:right;"> 528.30820 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_890 </td>
   <td style="text-align:left;"> Tetrahydroaldosterone-3-glucuronide </td>
   <td style="text-align:left;"> 540.256425 </td>
   <td style="text-align:right;"> 408.00000 </td>
   <td style="text-align:left;"> 20605-81-6 </td>
   <td style="text-align:left;"> HMDB10357 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 541.2642 </td>
   <td style="text-align:right;"> 539.24860 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Androgenic Steroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_891 </td>
   <td style="text-align:left;"> Tetrahydrocortisol glucuronide(1) </td>
   <td style="text-align:left;"> 542.272325 </td>
   <td style="text-align:right;"> 396.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 543.2802 </td>
   <td style="text-align:right;"> 541.26450 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Corticosteroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_892 </td>
   <td style="text-align:left;"> Tetrahydrocortisol glucuronide(2) </td>
   <td style="text-align:left;"> 542.272325 </td>
   <td style="text-align:right;"> 426.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 543.2802 </td>
   <td style="text-align:right;"> 541.26450 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Corticosteroids </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_893 </td>
   <td style="text-align:left;"> Cholesterol glucuronide </td>
   <td style="text-align:left;"> 562.386425 </td>
   <td style="text-align:right;"> 720.00000 </td>
   <td style="text-align:left;"> 17435-78-8 </td>
   <td style="text-align:left;"> HMDB10330 </td>
   <td style="text-align:left;"> C03033 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 563.3943 </td>
   <td style="text-align:right;"> 561.37860 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Sterol </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_894 </td>
   <td style="text-align:left;"> Deoxycholic acid 3-glucuronide(3) </td>
   <td style="text-align:left;"> 568.324325 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> 72504-58-6 </td>
   <td style="text-align:left;"> HMDB02596 </td>
   <td style="text-align:left;"> C03033 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 569.3321 </td>
   <td style="text-align:right;"> 567.31650 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_895 </td>
   <td style="text-align:left;"> Deoxycholic acid 3-glucuronide(1) </td>
   <td style="text-align:left;"> 568.324425 </td>
   <td style="text-align:right;"> 522.00000 </td>
   <td style="text-align:left;"> 72504-58-6 </td>
   <td style="text-align:left;"> HMDB02596 </td>
   <td style="text-align:left;"> C03033 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 569.3323 </td>
   <td style="text-align:right;"> 567.31660 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_896 </td>
   <td style="text-align:left;"> Deoxycholic acid 3-glucuronide(2) </td>
   <td style="text-align:left;"> 568.324425 </td>
   <td style="text-align:right;"> 540.00000 </td>
   <td style="text-align:left;"> 72504-58-6 </td>
   <td style="text-align:left;"> HMDB02596 </td>
   <td style="text-align:left;"> C03033 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 569.3323 </td>
   <td style="text-align:right;"> 567.31660 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_897 </td>
   <td style="text-align:left;"> LysoPI(18:1) </td>
   <td style="text-align:left;"> 598.311225 </td>
   <td style="text-align:right;"> 678.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB61693 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 599.3190 </td>
   <td style="text-align:right;"> 597.30340 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_898 </td>
   <td style="text-align:left;"> LysoPI(18:0) </td>
   <td style="text-align:left;"> 600.327025 </td>
   <td style="text-align:right;"> 720.00000 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> HMDB0240261 </td>
   <td style="text-align:left;"> 0 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 601.3348 </td>
   <td style="text-align:right;"> 599.31920 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_899 </td>
   <td style="text-align:left;"> LysoPI(20:4) </td>
   <td style="text-align:left;"> 620.295525 </td>
   <td style="text-align:right;"> 648.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB61690 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 621.3034 </td>
   <td style="text-align:right;"> 619.28770 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Phospholipid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_900 </td>
   <td style="text-align:left;"> C14:2 FA (Tetradecadienoic acid) </td>
   <td style="text-align:left;"> 224.177925 </td>
   <td style="text-align:right;"> 552.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00560 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 225.1858 </td>
   <td style="text-align:right;"> 223.17010 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Long Chain Fatty Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_901 </td>
   <td style="text-align:left;"> Ketodeoxycholic acid(1) </td>
   <td style="text-align:left;"> 390.276925 </td>
   <td style="text-align:right;"> 552.00000 </td>
   <td style="text-align:left;"> 5130-29-0 </td>
   <td style="text-align:left;"> HMDB00328 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 391.2847 </td>
   <td style="text-align:right;"> 389.26910 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_902 </td>
   <td style="text-align:left;"> Ketodeoxycholic acid(2) </td>
   <td style="text-align:left;"> 390.276925 </td>
   <td style="text-align:right;"> 564.00000 </td>
   <td style="text-align:left;"> 5130-29-0 </td>
   <td style="text-align:left;"> HMDB00328 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 391.2847 </td>
   <td style="text-align:right;"> 389.26910 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_903 </td>
   <td style="text-align:left;"> Ketodeoxycholic acid(3) </td>
   <td style="text-align:left;"> 390.277225 </td>
   <td style="text-align:right;"> 612.00000 </td>
   <td style="text-align:left;"> 5130-29-0 </td>
   <td style="text-align:left;"> HMDB00328 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 391.2851 </td>
   <td style="text-align:right;"> 389.26940 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Lipid </td>
   <td style="text-align:left;"> Secondary Bile Acid Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_904 </td>
   <td style="text-align:left;"> N6-Carbamoyl-L-threonyladenosine </td>
   <td style="text-align:left;"> 412.133825 </td>
   <td style="text-align:right;"> 204.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB41623 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 413.1417 </td>
   <td style="text-align:right;"> 411.12600 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Nucleotide </td>
   <td style="text-align:left;"> Purine Metabolism, Adenine containing </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_905 </td>
   <td style="text-align:left;"> gamma-glutamylhistidine </td>
   <td style="text-align:left;"> 284.115825 </td>
   <td style="text-align:right;"> 636.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB29151 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 285.1236 </td>
   <td style="text-align:right;"> 283.10800 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Peptide </td>
   <td style="text-align:left;"> Gamma-glutamyl Amino Acid </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_906 </td>
   <td style="text-align:left;"> 3-Phenylpropionate (hydrocinnamate) </td>
   <td style="text-align:left;"> 150.068625 </td>
   <td style="text-align:right;"> 264.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00764 </td>
   <td style="text-align:left;"> C05629 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 151.0764 </td>
   <td style="text-align:right;"> 149.06080 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_907 </td>
   <td style="text-align:left;"> Dihydroxybenzoic acid </td>
   <td style="text-align:left;"> 154.027125 </td>
   <td style="text-align:right;"> 108.00000 </td>
   <td style="text-align:left;"> 303-07-1 </td>
   <td style="text-align:left;"> HMDB13676 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 155.0350 </td>
   <td style="text-align:right;"> 153.01930 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_908 </td>
   <td style="text-align:left;"> Phenylbutyric acid </td>
   <td style="text-align:left;"> 164.084325 </td>
   <td style="text-align:right;"> 432.00000 </td>
   <td style="text-align:left;"> 90-27-7 </td>
   <td style="text-align:left;"> HMDB00329 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 165.0922 </td>
   <td style="text-align:right;"> 163.07650 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_909 </td>
   <td style="text-align:left;"> 1-Methylxanthine </td>
   <td style="text-align:left;"> 166.049525 </td>
   <td style="text-align:right;"> 102.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB10738 </td>
   <td style="text-align:left;"> C16358 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 167.0574 </td>
   <td style="text-align:right;"> 165.04170 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Xanthine Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_910 </td>
   <td style="text-align:left;"> Dihydro-3-coumaric acid </td>
   <td style="text-align:left;"> 166.063425 </td>
   <td style="text-align:right;"> 180.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB00375 </td>
   <td style="text-align:left;"> C11457 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 167.0712 </td>
   <td style="text-align:right;"> 165.05560 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_911 </td>
   <td style="text-align:left;"> Catechol sulfate </td>
   <td style="text-align:left;"> 189.993925 </td>
   <td style="text-align:right;"> 36.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> HMDB59724 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 191.0017 </td>
   <td style="text-align:right;"> 188.98610 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_912 </td>
   <td style="text-align:left;"> Hydroxyhippurate </td>
   <td style="text-align:left;"> 195.053425 </td>
   <td style="text-align:right;"> 168.00000 </td>
   <td style="text-align:left;"> 487-54-7 </td>
   <td style="text-align:left;"> HMDB00840 </td>
   <td style="text-align:left;"> C07588 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 196.0613 </td>
   <td style="text-align:right;"> 194.04560 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_913 </td>
   <td style="text-align:left;"> 4-methylcatechol sulfate </td>
   <td style="text-align:left;"> 204.009625 </td>
   <td style="text-align:right;"> 90.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 205.0174 </td>
   <td style="text-align:right;"> 203.00180 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_914 </td>
   <td style="text-align:left;"> Cinnamoylglycine </td>
   <td style="text-align:left;"> 205.074125 </td>
   <td style="text-align:right;"> 246.00000 </td>
   <td style="text-align:left;"> 16534-24-0 </td>
   <td style="text-align:left;"> HMDB11621 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 206.0820 </td>
   <td style="text-align:right;"> 204.06630 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Food Component/Plant </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_915 </td>
   <td style="text-align:left;"> Naproxen </td>
   <td style="text-align:left;"> 230.094325 </td>
   <td style="text-align:right;"> 420.00000 </td>
   <td style="text-align:left;"> 22204-53-1 </td>
   <td style="text-align:left;"> HMDB01923 </td>
   <td style="text-align:left;"> C01517 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 231.1021 </td>
   <td style="text-align:right;"> 229.08650 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Drug </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_916 </td>
   <td style="text-align:left;"> Methyl-4-hydroxybenzoate sulfate </td>
   <td style="text-align:left;"> 232.004325 </td>
   <td style="text-align:right;"> 228.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 233.0121 </td>
   <td style="text-align:right;"> 230.99650 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Benzoate Metabolism </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RPLC_917 </td>
   <td style="text-align:left;"> Eugenol sulfate </td>
   <td style="text-align:left;"> 244.040525 </td>
   <td style="text-align:right;"> 294.00000 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:right;"> 245.0483 </td>
   <td style="text-align:right;"> 243.03270 </td>
   <td style="text-align:left;"> iPOP_Exercise </td>
   <td style="text-align:left;"> Xenobiotics </td>
   <td style="text-align:left;"> Food Component/Plant </td>
   <td style="text-align:left;"> nRPLC </td>
  </tr>
</tbody>
</table></div>



2. database.info: The information of the database.


```r
snyder_database_rplc0.0.3@database.info
#> $Version
#> [1] "0.0.2"
#> 
#> $Source
#> [1] "MS"
#> 
#> $Link
#> [1] "http://snyderlab.stanford.edu/"
#> 
#> $Creater
#> [1] "Xiaotao Shen"
#> 
#> $Email
#> [1] "shenxt1990@163.com"
#> 
#> $RT
#> [1] TRUE
```

3. spectra.data: The spectra of the metabolites in database.


```r
names(snyder_database_rplc0.0.3@spectra.data)
#> [1] "Spectra.positive" "Spectra.negative"
```


```r
head(names(snyder_database_rplc0.0.3@spectra.data$Spectra.positive))
#> [1] "RPLC_1"  "RPLC_4"  "RPLC_5"  "RPLC_6"  "RPLC_8"  "RPLC_11"
```

One metabolite may contains multiple spectra.


```r
snyder_database_rplc0.0.3@spectra.data$Spectra.positive$RPLC_1$NCE25
#>           mz  intensity
#> 1   75.39029   2039.701
#> 2   94.02876 114757.586
#> 3   94.03993   3595.191
#> 4   95.02399  36360.066
#> 5   98.20596   1916.709
#> 6  112.03533   4580.538
#> 7  112.03936 145708.062
#> 8  112.05051 453812.188
#> 9  112.07562   4863.364
#> 10 113.03457  15553.875
#> 11 119.66673   1851.687
#> 12 121.27402   1928.461
#> 13 122.42378   1972.688
```

You can use [the function from masstools](https://masstools.tidymass.org/reference/ms2_plot) to visualize the ms2 spectra.


```r
if(!require(masstools)){
  remotes::install_gitlab("tidymass/masstools")
}
library(masstools)
```


```r
ms2_plot(
  snyder_database_rplc0.0.3@spectra.data$Spectra.positive$RPLC_1$NCE25
)
```

<img src="/docs/chapter7/1-metid_database_structure_files/figure-html/unnamed-chunk-9-1.png" width="100%" />

## Extract spectra from database


```r
ms2 <-
  get_ms2_spectrum(lab.id = "RPLC_1", 
                   database = snyder_database_rplc0.0.3,
                   polarity = "positive", 
                   ce = "NCE25"
                    )
ms2
#>           mz  intensity
#> 1   75.39029   2039.701
#> 2   94.02876 114757.586
#> 3   94.03993   3595.191
#> 4   95.02399  36360.066
#> 5   98.20596   1916.709
#> 6  112.03533   4580.538
#> 7  112.03936 145708.062
#> 8  112.05051 453812.188
#> 9  112.07562   4863.364
#> 10 113.03457  15553.875
#> 11 119.66673   1851.687
#> 12 121.27402   1928.461
#> 13 122.42378   1972.688
```


```r
ms2_plot(ms2)
```

<img src="/docs/chapter7/1-metid_database_structure_files/figure-html/unnamed-chunk-11-1.png" width="100%" />

## Convert `databaseClass` to other database format

[`MassBank`](https://massbank.eu/), [`MoNA`](https://mona.fiehnlab.ucdavis.edu/) and some other public databases provide `msp` format database of metabolites. So you can use the functions in `metid` to output `metid` format database to `msp` format which can be used for `GNPS`, `MassBank` and `MoNA`.

### MassBank

#### `msp` format

Just use the `write_msp_massbank()` function to output `metid` database to `msp` format for MassBank.


```r
library(metid)
write_msp_massbank(databasae = databasae, path = ".")
```

The arguments of `write_msp_massbank()` can be found using `?write_msp_massbank()`.

#### `mgf` format

Just use the `write_mgf_massbank()` function to output `metid` database to `mgf` format for MassBank.


```r
library(metid)
write_mgf_massbank(databasae = databasae, path = ".")
```

The arguments of `write_msp_massbank()` can be found using `?write_msp_massbank()`.

### MoNA

#### `msp` format

Just use the `write_msp_mona()` function to output `metid` database to `msp` format for mona.


```r
library(metid)
write_msp_mona(databasae = databasae, path = ".")
```

The arguments of `write_msp_mona()` can be found using `?write_msp_mona()`.

#### `mgf` format

Just use the `write_mgf_mona()` function to output `metid` database to `mgf` format for mona.


```r
library(metid)
write_mgf_mona(databasae = databasae, path = ".")
```

The arguments of `write_msp_mona()` can be found using `?write_msp_mona()`.

### GNPS

#### `msp` format

Just use the `write_msp_gnps()` function to output `metid` database to `msp` format for gnps.


```r
library(metid)
write_msp_gnps(databasae = databasae, path = ".")
```

The arguments of `write_msp_gnps()` can be found using `?write_msp_gnps()`.

#### `mgf` format

Just use the `write_mgf_gnps()` function to output `metid` database to `mgf` format for gnps.


```r
library(metid)
write_mgf_gnps(databasae = databasae, path = ".")
```

The arguments of `write_msp_gnps()` can be found using `?write_msp_gnps()`.

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
#>  [1] kableExtra_1.3.4    MSnbase_2.26.0      ProtGenerics_1.32.0
#>  [4] S4Vectors_0.38.1    mzR_2.34.0          Rcpp_1.0.10        
#>  [7] Biobase_2.60.0      BiocGenerics_0.46.0 ggplot2_3.4.2      
#> [10] massdataset_1.0.25  dplyr_1.1.2         magrittr_2.0.3     
#> [13] masstools_1.0.10    metid_1.2.30       
#> 
#> loaded via a namespace (and not attached):
#>   [1] RColorBrewer_1.1-3          rstudioapi_0.14            
#>   [3] jsonlite_1.8.5              shape_1.4.6                
#>   [5] farver_2.1.1                MALDIquant_1.22.1          
#>   [7] rmarkdown_2.22              GlobalOptions_0.1.2        
#>   [9] zlibbioc_1.46.0             vctrs_0.6.2                
#>  [11] RCurl_1.98-1.12             webshot_0.5.5              
#>  [13] blogdown_1.18.1             htmltools_0.5.5            
#>  [15] S4Arrays_1.0.4              progress_1.2.2             
#>  [17] cellranger_1.1.0            mzID_1.38.0                
#>  [19] sass_0.4.6                  parallelly_1.36.0          
#>  [21] bslib_0.5.0                 htmlwidgets_1.6.2          
#>  [23] plyr_1.8.8                  impute_1.74.1              
#>  [25] plotly_4.10.2               cachem_1.0.8               
#>  [27] lifecycle_1.0.3             iterators_1.0.14           
#>  [29] pkgconfig_2.0.3             Matrix_1.5-4               
#>  [31] R6_2.5.1                    fastmap_1.1.1              
#>  [33] GenomeInfoDbData_1.2.10     MatrixGenerics_1.12.2      
#>  [35] future_1.32.0               clue_0.3-64                
#>  [37] digest_0.6.31               pcaMethods_1.92.0          
#>  [39] colorspace_2.1-0            furrr_0.3.1                
#>  [41] rprojroot_2.0.3             GenomicRanges_1.52.0       
#>  [43] labeling_0.4.2              fansi_1.0.4                
#>  [45] httr_1.4.6                  compiler_4.3.0             
#>  [47] here_1.0.1                  remotes_2.4.2              
#>  [49] withr_2.5.0                 doParallel_1.0.17          
#>  [51] BiocParallel_1.34.2         highr_0.10                 
#>  [53] MASS_7.3-58.4               DelayedArray_0.26.3        
#>  [55] rjson_0.2.21                tools_4.3.0                
#>  [57] zip_2.3.0                   glue_1.6.2                 
#>  [59] grid_4.3.0                  cluster_2.1.4              
#>  [61] generics_0.1.3              gtable_0.3.3               
#>  [63] tzdb_0.4.0                  preprocessCore_1.62.1      
#>  [65] tidyr_1.3.0                 data.table_1.14.8          
#>  [67] hms_1.1.3                   xml2_1.3.4                 
#>  [69] utf8_1.2.3                  XVector_0.40.0             
#>  [71] foreach_1.5.2               pillar_1.9.0               
#>  [73] stringr_1.5.0               limma_3.56.2               
#>  [75] circlize_0.4.15             lattice_0.21-8             
#>  [77] tidyselect_1.2.0            ComplexHeatmap_2.16.0      
#>  [79] pbapply_1.7-0               knitr_1.43                 
#>  [81] bookdown_0.34               IRanges_2.34.0             
#>  [83] SummarizedExperiment_1.30.2 svglite_2.1.1              
#>  [85] Rdisop_1.60.0               xfun_0.39                  
#>  [87] matrixStats_1.0.0           stringi_1.7.12             
#>  [89] lazyeval_0.2.2              yaml_2.3.7                 
#>  [91] evaluate_0.21               codetools_0.2-19           
#>  [93] MsCoreUtils_1.12.0          tibble_3.2.1               
#>  [95] BiocManager_1.30.21         cli_3.6.1                  
#>  [97] affyio_1.70.0               systemfonts_1.0.4          
#>  [99] munsell_0.5.0               jquerylib_0.1.4            
#> [101] GenomeInfoDb_1.36.0         readxl_1.4.2               
#> [103] globals_0.16.2              png_0.1-8                  
#> [105] XML_3.99-0.14               parallel_4.3.0             
#> [107] readr_2.1.4                 prettyunits_1.1.1          
#> [109] bitops_1.0-7                listenv_0.9.0              
#> [111] viridisLite_0.4.2           scales_1.2.1               
#> [113] affy_1.78.0                 openxlsx_4.2.5.2           
#> [115] ncdf4_1.21                  purrr_1.0.1                
#> [117] crayon_1.5.2                GetoptLong_1.0.5           
#> [119] rlang_1.1.1                 vsn_3.68.0                 
#> [121] rvest_1.0.3
```
