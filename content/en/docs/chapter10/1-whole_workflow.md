---
date: "2019-05-05T00:00:00+01:00"
title: "Whole workflow using tidymass"
linktitle: Whole workflow using tidymass
author: admin
type: book
weight: 1
commentable: true
---



## Introduction to Metabolomics Data

The Danish Project Project studies metabolic changes during human pregnancy and if these altered metabolites could be used to predict preterm. 

### Referenced research

1. [Liang L, Rasmussen MH, Piening B, Shen X, Chen S, Röst H, Snyder JK, Tibshirani R, Skotte L, Lee NC, Contrepois K, Feenstra B, Zackriah H, Snyder M, Melbye M. Metabolic Dynamics and Prediction of Gestational Age and Time to Delivery in Pregnant Women. Cell. 2020 Jun 25;181(7):1680-1692.e15. doi: 10.1016/j.cell.2020.05.002.](https://pubmed.ncbi.nlm.nih.gov/32589958/)

## Introduction to `tidyMass` project

TidyMass is an ecosystem of R packages that share an underlying design philosophy, grammar, and data structure, which provides a comprehensive, reproducible, and object-oriented computational framework. The modular architecture makes tidyMass a highly flexible and extensible tool, which other users can improve and integrate with other tools to customize their own pipeline. 

More information about tidyMass could be found here: [tidymass.org](https://www.tidymass.org/).

1. [Shen X, Yan H, Wang C, Gao P, Johnson CH, Snyder MP. TidyMass an object-oriented reproducible analysis framework for LC-MS data. Nat Commun. 2022 Jul 28;13(1):4365. doi: 10.1038/s41467-022-32155-w.](https://pubmed.ncbi.nlm.nih.gov/35902589/)

Hopefully, at the end of this module, you will have a better sense of the metabolomics data analysis procedure and how to use R for reproducible data processing and analysis

## Data preparation

Download the demo data and uncompress it.

1. [Google drive link](https://drive.google.com/file/d/1ZVijIzq5kmUjouBS2P4UgNfTgoDYgGyy/view?usp=sharing)

2. If you can use Google drive, [download here](https://pan.baidu.com/s/1MPJyC-WqA1-xXWV5Ilm27w?pwd=2022). (code 2022)

The demo data contains RPLC positive mode, with 7 participants, and two samples for each participant (Trimester 1 (< 10 weeks) and trimester 3 (> 30 weeks)). So there are 14 samples in total.

![](/docs/chapter10/figures/Screen-Shot.png)

1. `MS1`: MS1 is the folder contains the mzXML for 14 samples.

2. `MS2`: MS2 is the folder contains the mgf for QC samples (MS2 spectra).

3. `sample_info.xlsx`: it is the metadata for samples.

![](/docs/chapter10/figures/Screen-Shot 1.png)

---

## Raw data processing


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

`massprocesser` package in `tidymass` is used to do the raw data processing. Please refer this [website](https://massprocesser.tidymass.org/).

The code used to do raw data processing (peak picking, peak grouping).


```r
massprocesser::process_data(
  path = "cell_liang_2020/MS1/",
  polarity = "positive",
  ppm = 10,
  peakwidth = c(5, 30),
  threads = 4,
  output_tic = TRUE,
  output_bpc = TRUE,
  output_rt_correction_plot = FALSE,
  min_fraction = 0.5
)
```
All the results will be placed in the folder named `MS1/Result`. More information about that can be found [here](https://tidymass.github.io/massprocesser/articles/raw_data_processing.html).

![](/docs/chapter10/figures/Screen-Shot 2.png)

1. BPC.pdf: BPC plot.

2. TIC.pdf: TIC plot.

3. RT correction plot.pdf: Retention time correction plot.

4. Peak_table.csv: Peak table.

5. Peak_table_for_cleaning.csv: Peak table which can be used for data cleaning.

6. object: `mass_dataset` class object which can be used for subsequent analysis using tidymass.

7. intermediate_data: intermediate data.

You can just load the `object`, which is a `mass_dataset` class object.


```r
load("cell_liang_2020/MS1/Result/object")
object
#> -------------------- 
#> massdataset version: 1.0.12 
#> -------------------- 
#> 1.expression_data:[ 9164 x 14 data.frame]
#> 2.sample_info:[ 14 x 4 data.frame]
#> 14 samples:184 214 289 ... 528 739
#> 3.variable_info:[ 9164 x 3 data.frame]
#> 9164 variables:M71T823_POS M72T34_POS M72T822_POS ... M994T593_POS M995T593_POS
#> 4.sample_info_note:[ 4 x 2 data.frame]
#> 5.variable_info_note:[ 3 x 2 data.frame]
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 2 processings in total
#> create_mass_dataset ---------- 
#>       Package         Function.used                Time
#> 1 massdataset create_mass_dataset() 2022-08-07 16:44:32
#> process_data ---------- 
#>         Package Function.used                Time
#> 1 massprocesser  process_data 2022-08-07 16:44:28
dim(object)
#> variables   samples 
#>      9164        14
```

We can get basic information from the object.

We have 9164 variables, 14 samples.

You can use the `plot_adjusted_rt()` function to get the interactive plot.


```r
load("cell_liang_2020/MS1/Result/intermediate_data/xdata2")
####set the group_for_figure if you want to show specific groups. 
####And set it as "all" if you want to show all samples.
plot <-
  plot_adjusted_rt(object = xdata2,
                   group_for_figure = "Subject",
                   interactive = TRUE)
plot
```

## Explore data

After the [`raw data processing`](https://tidymass.github.io/tidymass/articles/raw_data_processing.html), peak tables will be generated. 


```r
load("cell_liang_2020/MS1/Result/object")
dim(object)
#> variables   samples 
#>      9164        14
```

We neet to update the sample_info in object.

Read sample information.


```r
sample_info <- 
  readxl::read_xlsx("cell_liang_2020/sample_info.xlsx")
sample_info$sample_id <-
  as.character(sample_info$sample_id)
```

Add `sample_info` to `object`


```r
object %>% 
  extract_sample_info() %>% 
  head()
#>   sample_id   group   class injection.order
#> 1       184 Subject Subject               1
#> 2       214 Subject Subject               2
#> 3       289 Subject Subject               3
#> 4       317 Subject Subject               4
#> 5       320 Subject Subject               5
#> 6       327 Subject Subject               6
```


```r
object <-
  object %>%
  activate_mass_dataset(what = "sample_info") %>%
  left_join(sample_info,
            by = "sample_id")

object %>% 
  extract_sample_info()
#>    sample_id   group   class injection.order subject_id trimester
#> 1        184 Subject Subject               1        aaf       >35
#> 2        214 Subject Subject               2        aaf       <10
#> 3        289 Subject Subject               3        ace       >35
#> 4        317 Subject Subject               4        acb       <10
#> 5        320 Subject Subject               5        abb       <10
#> 6        327 Subject Subject               6        aci       <10
#> 7        348 Subject Subject               7        abi       >35
#> 8        353 Subject Subject               8        abg       >35
#> 9        373 Subject Subject               9        aci       >35
#> 10       387 Subject Subject              10        abg       <10
#> 11       408 Subject Subject              11        abi       <10
#> 12       461 Subject Subject              12        acb       >35
#> 13       528 Subject Subject              13        abb       >35
#> 14       739 Subject Subject              14        ace       <10
```


```r
object %>% 
  activate_mass_dataset(what = "sample_info") %>% 
  dplyr::count(class)
#>     class  n
#> 1 Subject 14

object %>% 
  activate_mass_dataset(what = "sample_info") %>% 
  dplyr::count(group)
#>     group  n
#> 1 Subject 14

object %>% 
  activate_mass_dataset(what = "sample_info") %>% 
  dplyr::count(trimester)
#>   trimester n
#> 1       <10 7
#> 2       >35 7
```
So for the data, we have 7 subjects and 14 samples. One subject has two samples.

Next, we can get the peak distributation plot.


```r
object %>%
  `+`(1) %>% 
  log(10) %>%
  show_mz_rt_plot() +
  scale_size_continuous(range = c(0.01, 2))
```

<img src="/docs/chapter10/1-whole_workflow_files/figure-html/unnamed-chunk-10-1.png" width="100%" />

We can explore the missing values in the data.


```r
get_mv_number(object = object)
#> [1] 26696
sum(is.na(object))
#> [1] 26696
```

26,696 mvs in total.

Missing value number in each sample.


```r
get_mv_number(object = object, by = "variable") %>% 
  head()
#> M71T823_POS  M72T34_POS M72T822_POS  M73T36_POS M74T584_POS  M75T47_POS 
#>           0           6           0           0           5           7
```

Missing value number in each variable.

We can use the figure to show the missing value information.


```r
show_missing_values(object = object, 
                    show_column_names = FALSE, percentage = TRUE)
```

<img src="/docs/chapter10/1-whole_workflow_files/figure-html/unnamed-chunk-13-1.png" width="100%" />

Show the mvs in samples


```r
show_sample_missing_values(object = object, percentage = TRUE)
```

<img src="/docs/chapter10/1-whole_workflow_files/figure-html/unnamed-chunk-14-1.png" width="100%" />

Show the mvs in variables


```r
show_variable_missing_values(object = object, 
                             percentage = TRUE, 
                             show_x_text = FALSE, 
                             show_x_ticks = FALSE) +
  scale_size_continuous(range = c(0.01, 1))
```

<img src="/docs/chapter10/1-whole_workflow_files/figure-html/unnamed-chunk-15-1.png" width="100%" />

## Data cleaning

### Data quality assessment before data cleaning

Here, we can use the `massqc` package to [assess the data quality](https://massqc.tidymass.org/).

We can just use the `massqc_report()` function to get a html format quality assessment report.


```r
massqc::massqc_report(object = object, 
                      path = "cell_liang_2020/data_cleaning/data_quality_before_data_cleaning")
```

A html format report and pdf figures will be placed in the folder `cell_liang_2020/data_cleaning/data_quality_before_data_cleaning/Report`.

![](/docs/chapter10/figures/Screen-Shot 5.png)

The html report is below:

![](/docs/chapter10/figures/Screen-Shot 6.png)

### Remove noisy metabolic features

Remove variables which have MVs in more than 20% samples.



```r
show_variable_missing_values(object = object, 
                             percentage = TRUE) +
  scale_size_continuous(range = c(0.01, 2))
```

<img src="/docs/chapter10/1-whole_workflow_files/figure-html/unnamed-chunk-17-1.png" width="100%" />


```r
object =
  object %>%
  mutate_variable_na_freq()

head(extract_variable_info(object))
#>   variable_id       mz        rt   na_freq
#> 1 M71T823_POS 70.98037 823.24475 0.0000000
#> 2  M72T34_POS 71.90757  33.84428 0.4285714
#> 3 M72T822_POS 71.98733 822.28662 0.0000000
#> 4  M73T36_POS 73.02834  36.06493 0.0000000
#> 5 M74T584_POS 73.70056 584.35419 0.3571429
#> 6  M75T47_POS 74.81906  46.72005 0.5000000
```

Remove variables.


```r
object <- 
  object %>% 
  activate_mass_dataset(what = "variable_info") %>%
  filter(na_freq < 0.2)
dim(object)
#> variables   samples 
#>      4537        14
```

Only 4,537 variables left.

### Filter outlier samples

We can use the `detect_outlier()` to find the outlier samples.

More information about how to detect outlier samples can be found [here](https://privefl.github.io/blog/detecting-outlier-samples-in-pca/).



```r
massdataset::show_sample_missing_values(object = object,
                                        order_by = "injection.order",
                                        percentage = TRUE) +
  theme(axis.text.x = element_text(size = 2)) +
  scale_size_continuous(range = c(0.1, 2)) +
  ggsci::scale_color_aaas()
```

<img src="/docs/chapter10/1-whole_workflow_files/figure-html/unnamed-chunk-20-1.png" width="100%" />

Detect outlier samples.


```r
outlier_samples <-
  object %>%
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
#> 3 according_to_pc_mad : 1 outlier samples.
#> 184 .
#> 4 accordint_to_distance : 2 outlier samples.
#> 184,214 .
#> extract all outlier table using extract_outlier_table()
```


```r
outlier_table <-
extract_outlier_table(outlier_samples)

outlier_table %>% 
  head()
#>     according_to_na pc_sd pc_mad accordint_to_distance
#> 184           FALSE FALSE   TRUE                  TRUE
#> 214           FALSE FALSE  FALSE                  TRUE
#> 289           FALSE FALSE  FALSE                 FALSE
#> 317           FALSE FALSE  FALSE                 FALSE
#> 320           FALSE FALSE  FALSE                 FALSE
#> 327           FALSE FALSE  FALSE                 FALSE
```

No outlier samples according to NA.


### Missing value imputation


```r
get_mv_number(object)
#> [1] 3224
sum(is.na(object))
#> [1] 3224

object <- 
  impute_mv(object = object, method = "knn")
#> Cluster size 4537 broken into 86 4451 
#> Done cluster 86 
#> Cluster size 4451 broken into 4168 283 
#> Cluster size 4168 broken into 541 3627 
#> Done cluster 541 
#> Cluster size 3627 broken into 719 2908 
#> Done cluster 719 
#> Cluster size 2908 broken into 22 2886 
#> Done cluster 22 
#> Cluster size 2886 broken into 2097 789 
#> Cluster size 2097 broken into 1365 732 
#> Done cluster 1365 
#> Done cluster 732 
#> Done cluster 2097 
#> Done cluster 789 
#> Done cluster 2886 
#> Done cluster 2908 
#> Done cluster 3627 
#> Done cluster 4168 
#> Done cluster 283 
#> Done cluster 4451

get_mv_number(object)
#> [1] 0
```

### Data normalization and integration


```r
object <- 
  normalize_data(object, method = "median")
```


```r
object %>% 
  `+`(1) %>% 
  log(2) %>% 
  massqc::massqc_pca(line = FALSE)
```

<img src="/docs/chapter10/1-whole_workflow_files/figure-html/unnamed-chunk-25-1.png" width="100%" />

### Data quality assessment after data cleaning

Here, we can use the `massqc` package to [assess the data quality](https://massqc.tidymass.org/).

We can just use the `massqc_report()` function to get a html format quality assessment report.


```r
massqc::massqc_report(object = object, 
                      path = "cell_liang_2020/data_cleaning/data_quality_after_data_cleaning")
```

---

## Metabolite annotation

### Add MS2 spectra to object


```r
object <-
  mutate_ms2(
    object = object,
    column = "rp",
    polarity = "positive",
    ms1.ms2.match.mz.tol = 15,
    ms1.ms2.match.rt.tol = 30,
    path = "cell_liang_2020/MS2/"
  )
```

### Metabolite annotation using `metid`

Metabolite annotation is based on the [`metid` package](https://tidymass.github.io/metid/).

#### Download database

We need to download MS2 database from `metid` [website](https://tidymass.github.io/metid/articles/public_databases.html).

Here we download the `Michael Snyder RPLC databases`, `Orbitrap database` and `MoNA database`. And place them in a new folder named as `metabolite_annotation`.

![](/docs/chapter10/figures/fig8.png)

#### Annotate features using `snyder_database_rplc0.0.3`.


```r
load("cell_liang_2020/metabolite_annotation/snyder_database_rplc0.0.3.rda")
```


```r
object <- 
  annotate_metabolites_mass_dataset(object = object, 
                                    ms1.match.ppm = 15, 
                                    rt.match.tol = 30, 
                                    polarity = "positive",
                                    database = snyder_database_rplc0.0.3)
```

#### Annotate features using `orbitrap_database0.0.3`.


```r
load("cell_liang_2020/metabolite_annotation/orbitrap_database0.0.3.rda")
```


```r
object <- 
  annotate_metabolites_mass_dataset(object = object, 
                                    ms1.match.ppm = 15, 
                                    polarity = "positive",
                                    database = orbitrap_database0.0.3)
```

#### Annotate features using `mona_database0.0.3`.


```r
load("cell_liang_2020/metabolite_annotation/mona_database0.0.3.rda")
```


```r
object <-
  annotate_metabolites_mass_dataset(object = object, 
                                    ms1.match.ppm = 15, 
                                    polarity = "positive",
                                    database = mona_database0.0.3)
```

### Annotation result


```r
head(extract_annotation_table(object = object))
#> data frame with 0 columns and 0 rows
```



```r
variable_info <-
  extract_variable_info(object = object)
head(variable_info)
#>   variable_id       mz        rt    na_freq
#> 1 M71T823_POS 70.98037 823.24475 0.00000000
#> 2 M72T822_POS 71.98733 822.28662 0.00000000
#> 3  M73T36_POS 73.02834  36.06493 0.00000000
#> 4 M76T812_POS 76.10571 812.14087 0.14285714
#> 5  M77T33_POS 77.03845  32.64994 0.00000000
#> 6  M78T47_POS 77.96823  47.00970 0.07142857
table(variable_info$Level)
#> < table of extent 0 >
table(variable_info$Database)
#> < table of extent 0 >
```


```r
ms2_plot_mass_dataset(object = object,
                      variable_id = "M123T56_POS",
                      database = snyder_database_rplc0.0.3)
```

---

## Statistical analysis

### Remove the features without annotations


```r
object <- 
  object %>% 
  activate_mass_dataset(what = "annotation_table") %>% 
  filter(!is.na(Level)) %>% 
  filter(Level == 1 | Level == 2)
```


```r
object
#> -------------------- 
#> massdataset version: 1.0.12 
#> -------------------- 
#> 1.expression_data:[ 4537 x 14 data.frame]
#> 2.sample_info:[ 14 x 6 data.frame]
#> 14 samples:184 214 289 ... 528 739
#> 3.variable_info:[ 4537 x 4 data.frame]
#> 4537 variables:M71T823_POS M72T822_POS M73T36_POS ... M993T593_POS M994T593_POS
#> 4.sample_info_note:[ 6 x 2 data.frame]
#> 5.variable_info_note:[ 4 x 2 data.frame]
#> 6.ms2_data:[ 0 variables x 0 MS2 spectra]
#> -------------------- 
#> Processing information
#> 6 processings in total
#> Latest 3 processings show
#> filter ---------- 
#>       Package Function.used                Time
#> 1 massdataset      filter() 2023-08-31 00:20:28
#> impute_mv ---------- 
#>       Package Function.used                Time
#> 1 masscleaner   impute_mv() 2023-08-31 00:20:29
#> normalize_data ---------- 
#>       Package    Function.used                Time
#> 1 masscleaner normalize_data() 2023-08-31 00:20:29
```
### Trace processing information of object

Then we can use the `report_parameters()` function to trace processing information of object.

All the analysis results will be placed in a folder named as `statistical_analysis`.


```r
dir.create(path = "cell_liang_2020/statistical_analysis", showWarnings = FALSE)
```


```r
report_parameters(object = object, path = "cell_liang_2020/statistical_analysis/")
```

A html format file named as `parameter_report.html` will be generated.

![](/docs/chapter10/figures/fig9.png)

### Remove redundant metabolites

Remove the redundant annotated metabolites bases on `Level` and score.


```r
object <-
  object %>% 
  activate_mass_dataset(what = "annotation_table") %>% 
  group_by(Compound.name) %>% 
  filter(Level == min(Level)) %>% 
  filter(SS == max(SS)) %>% 
  slice_head(n = 1)
```

### Differential expression metabolites

#### Calculate the fold changes.


```r
object <-
  object %>%
  activate_mass_dataset(what = "sample_info") %>%
  dplyr::arrange(subject_id, trimester)

control_sample_id <-
  object %>%
  activate_mass_dataset(what = "sample_info") %>%
  filter(trimester == "<10") %>%
  pull(sample_id)

case_sample_id <-
  object %>%
  activate_mass_dataset(what = "sample_info") %>%
  filter(trimester == ">35") %>%
  pull(sample_id)
```


```r
object <-
  mutate_fc(object = object, 
            control_sample_id = control_sample_id, 
            case_sample_id = case_sample_id, 
            mean_median = "mean")
```


#### Calculate p values.


```r
object <-
  mutate_p_value(
    object = object,
    control_sample_id = control_sample_id,
    case_sample_id = case_sample_id,
    method = "wilcox.test",
    p_adjust_methods = "BH",
    paired = TRUE
  )
```

#### Volcano plot.


```r
volcano_plot(object = object,
             add_text = TRUE,
             text_from = "Compound.name", 
             point_size_scale = "p_value") +
  scale_size_continuous(range = c(0.5, 5))
```

### Output result

Output the differential expression metabolites.


```r
differential_metabolites <- 
  extract_variable_info(object = object) %>% 
  filter(fc > 2 | fc < 0.5) %>% 
  filter(p_value_adjust < 0.05)

readr::write_csv(differential_metabolites, 
                 file = "cell_liang_2020/statistical_analysis/differential_metabolites.csv")
```


## Pathway enrichment analysis

All the results will be placed in a folder named as `pathway_enrichment`.


```r
dir.create(path = "cell_liang_2020/pathway_enrichment", showWarnings = FALSE)
```


```r
diff_metabolites <-
  object %>% 
  activate_mass_dataset(what = "variable_info") %>% 
  filter(p_value_adjust < 0.05) %>% 
  extract_variable_info()
```


```r
head(diff_metabolites)
```

### Load `KEGG` human pathway database


```r
data("kegg_hsa_pathway", package = "metpath")
kegg_hsa_pathway
```

```r
get_pathway_class(kegg_hsa_pathway)
```

### Remove the disease pathways:


```r
#get the class of pathways
pathway_class <- 
  metpath::pathway_class(kegg_hsa_pathway)
head(pathway_class)
```



```r
remain_idx <-
  pathway_class %>%
  unlist() %>%
  stringr::str_detect("Disease") %>%
  `!`() %>%
  which()

remain_idx
```



```r
pathway_database <-
  kegg_hsa_pathway[remain_idx]
pathway_database
```


### Pathway enrichment


```r
kegg_id <-
  diff_metabolites$KEGG.ID 
kegg_id <-
  kegg_id[!is.na(kegg_id)]
kegg_id
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
```

### Check the result:


```r
result
```


### Plot to show pathway enrichment result


```r
enrich_bar_plot(object = result,
                x_axis = "p_value",
                cutoff = 0.05)
```


```r
enrich_scatter_plot(object = result, y_axis = "p_value", y_axis_cutoff = 0.05)
```


```r
enrich_network(
  object = result,
  point_size = "p_value",
  p_cutoff = 0.05,
  only_significant_pathway = TRUE
)
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
#> [137] affy_1.78.0                 plyr_1.8.8                 
#> [139] stringi_1.7.12              viridisLite_0.4.2          
#> [141] Biostrings_2.68.1           munsell_0.5.0              
#> [143] lazyeval_0.2.2              fit.models_0.64            
#> [145] Matrix_1.5-4                hms_1.1.3                  
#> [147] patchwork_1.1.2             future_1.32.0              
#> [149] KEGGREST_1.40.0             SummarizedExperiment_1.30.2
#> [151] igraph_1.4.3                affyio_1.70.0              
#> [153] bslib_0.5.0                 DEoptimR_1.0-14            
#> [155] readxl_1.4.2
```
