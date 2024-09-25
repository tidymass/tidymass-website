---
date: "2019-05-05T00:00:00+01:00"
title: "Install tidymass"
linktitle: "1 Install tidymass"
author: admin
type: book
toc: true
weight: 1
commentable: true
---



If you haven't installed R or RStudio on your PC or Mac, please install them before proceeding. Otherwise, you can skip these steps.

如果您尚未在您的PC或Mac上安装R或RStudio，请在继续之前先安装它们。否则，您可以跳过这些步骤。

{{< cta cta_text="👉 Update R" cta_link="#update-r" >}}

## Install R

Download the [R](https://www.r-project.org/) and install it.

下载[R](https://www.r-project.org/)并安装。

[👉 Refer this blog](https://www.dataquest.io/blog/installing-r-on-your-computer/)

## Install RStudio

Then install RStudio. Download the [RStudio](https://www.rstudio.com/products/rstudio/download/#download) and then install it.

然后安装RStudio。下载[RStudio](https://www.rstudio.com/products/rstudio/download/#download)，然后进行安装。

Select the free version of RStudio Desktop.

![](/docs/chapter1/figures/Screen-Shot.png) 

[👉 Refer this blog](https://www.stat.colostate.edu/~jah/talks_public_html/isec2020/installRStudio.html)

## Open the RStudio

Then open the RStudio

![](/docs/chapter1/figures/Screen-Shot-1.png) 

## Update R

`tidymass` require R version > 4.1. Please update your R if the version < 4.1.

You can check your R version in your console:


``` r
version
##                _                           
## platform       aarch64-apple-darwin20      
## arch           aarch64                     
## os             darwin20                    
## system         aarch64, darwin20           
## status                                     
## major          4                           
## minor          4.1                         
## year           2024                        
## month          06                          
## day            14                          
## svn rev        86737                       
## language       R                           
## version.string R version 4.4.1 (2024-06-14)
## nickname       Race for Your Life
```

If your R version is < 4.1, please download and install the [latest version of R](https://cran.r-project.org/mirrors.html), and then restart your R.

## Install `tidymass` from `tidymass.org`

Copy and paste the below code in your console.


``` r
source("https://www.tidymass.org/tidymass-packages/install_tidymass.txt")
install_tidymass(from = "tidymass.org")
```

You can also use this method to install one specific package. For example, if you only want to install [metID](https://metid.tidymass.org/). 


``` r
install_tidymass(from = "tidymass.org", which_package = "metid")
```

Demo video is bellow:

![](/docs/chapter1/figures/pull_case_study.gif) 

If above code doesn't work, try to change the `method` argument.

1. "auto"

2. "internal"

3. "libcurl"

4. "wget"

5. "curl"

## Install `tidymass` from `GitHub`

Copy and paste the below code in your console.


``` r
if(!require(remotes)){
  install.packages("remotes")
}
remotes::install_github("tidymass/tidymass", dependencies = TRUE)
```

## Some issues

1. During the installation, it will ask if you want to update some packages for few times, just enter `Enter` or `Return` key to skip it.

2. If there is a error like below:

> Error: Failed to install 'tidymass' from GitHub: HTTP error 403. API rate limit exceeded for 171.66.10.237. (But here's the good news: Authenticated requests get a higher rate limit. Check out the documentation for more details.)

Try to resolve it by:

* In you R console, type this code:


``` r
if(!require(usethis)){
  install.packages("usethis")
}
usethis::create_github_token()
```

It will open a page in browser, and create a "New personal access token" and copy it.

![](/docs/chapter1/figures/fig3.png) 

* Then type this code:


``` r
usethis::edit_r_environ()
```

and then add one line like below:


``` r
GITHUB_PAT=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
```

> The GITHUB_PAT should be yours that is created in step 1.

And then restart R session and try again.

## Install `tidymass` from `GitLab`

Copy and paste the below code in your console.


``` r
if(!require(remotes)){
  install.packages("remotes")
}
remotes::install_gitlab("tidymass/tidymass", dependencies = TRUE)
```


## Install `tidymass` from `Gitee`

If you are in China, you can try to install `tidymass` from Gitee. Copy and paste the below code in your console.


``` r
if(!require(remotes)){
  install.packages("remotes")
}
remotes::install_git(url = "https://gitee.com/tidymass/tidymass", dependencies = TRUE)
```


If you can't install `tidymass` successfully, please contact us by

{{< cta cta_text="📥 Contact us" cta_link="https://www.tidymass.org/#contact" >}}

or leave me a comment below.

## Session information


``` r
sessionInfo()
## R version 4.4.1 (2024-06-14)
## Platform: aarch64-apple-darwin20
## Running under: macOS 15.0
## 
## Matrix products: default
## BLAS:   /Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/lib/libRblas.0.dylib 
## LAPACK: /Library/Frameworks/R.framework/Versions/4.4-arm64/Resources/lib/libRlapack.dylib;  LAPACK version 3.12.0
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## time zone: Asia/Singapore
## tzcode source: internal
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## loaded via a namespace (and not attached):
##  [1] digest_0.6.37     R6_2.5.1          bookdown_0.40     fastmap_1.2.0    
##  [5] xfun_0.47         blogdown_1.19     cachem_1.1.0      knitr_1.48       
##  [9] htmltools_0.5.8.1 rmarkdown_2.28    lifecycle_1.0.4   cli_3.6.3        
## [13] sass_0.4.9        jquerylib_0.1.4   compiler_4.4.1    rstudioapi_0.16.0
## [17] tools_4.4.1       evaluate_0.24.0   bslib_0.8.0       yaml_2.3.10      
## [21] jsonlite_1.8.8    rlang_1.1.4
```
