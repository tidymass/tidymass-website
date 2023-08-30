---
date: "2019-05-05T00:00:00+01:00"
title: "GitHub"
linktitle: GitHub
author: admin
type: book
weight: 2
commentable: true
---



## Update R version

`tidymicrobiome` require R version > 4.1.

You can check your R version in your console:


```r
version
##                _                           
## platform       x86_64-apple-darwin20       
## arch           x86_64                      
## os             darwin20                    
## system         x86_64, darwin20            
## status                                     
## major          4                           
## minor          3.0                         
## year           2023                        
## month          04                          
## day            21                          
## svn rev        84292                       
## language       R                           
## version.string R version 4.3.0 (2023-04-21)
## nickname       Already Tomorrow
```

If your R version is < 4.1, please download and install the [latest version of R](https://cran.r-project.org/mirrors.html), and then restart your R.

## Install `tidymicrobiome`

Copy and paste the below code in your console.


```r
if(!require(remotes)){
  install.packages("remotes")
}
remotes::install_github("tidymicrobiome/tidymicrobiome", dependencies = TRUE)
```

## Some issues

1. During the installation, it will ask if you want to update some packages for few times, just enter `Enter` or `Reurn` key to skip it.

2. If there is a error like below:

Error: Failed to install 'tidymass' from GitHub: HTTP error 403. API rate limit exceeded for 171.66.10.237. (But here's the good news: Authenticated requests get a higher rate limit. Check out the documentation for more details.)

Try to resolve it by:

* In you R console, type this code:


```r
if(!require(usethis)){
  install.packages("usethis")
}
usethis::create_github_token()
```

It will open a page in browser, and create a "New personal access token" and copy it.

![](figures/fig3.png) 

* Then type this code:


```r
usethis::edit_r_environ()
```

and then add one line like below:


```r
GITHUB_PAT=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
```

> The GITHUB_PAT should be yours that is created in step 1.

And then restart R session and try again.


