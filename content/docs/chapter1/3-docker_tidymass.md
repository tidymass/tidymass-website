---
date: "2019-05-05T00:00:00+01:00"
title: "Docker version of tidymass"
linktitle: "3 Docker version of tidymass"
author: admin
type: book
weight: 3
commentable: true
---



[Docker](https://www.docker.com/) is a set of platform as a service (PaaS) products that use OS-level virtualization to deliver software in packages called containers. So it is useful for people who want to share the code, data, and even analysis environment with other people to repeat their analysis and results.

We provide a docker version of `tidymass`, all the packages in `tidymass` and the dependent packages have been installed.


## Install docker

Please refer to the [offical website](https://www.docker.com/get-started) to download and install docker. And then run docker.

## Pull the `tidymass` image

Open you terminal and then type code below:

```
docker pull jaspershen/tidymass:latest
```

## Run `tidymass` docker image

In you terminal, run the code below:

```
docker run -e PASSWORD=tidymass -p 8787:8787 jaspershen/tidymass:latest
```

The below command will link the RStudio home folder with the desktop of the local machine running the container. Anything saved or edited in the home folder when using the container will be stored on the local desktop.

```
docker run -e PASSWORD=tidymass -v ~/Desktop:/home/rstudio/ -p 8787:8787 jaspershen/tidymass:latest
```

## Open the RStudio server

Then open the browser and visit http://localhost:8787 to power on RStudio server. The user name is `rstudio` and the password is `tidymass`.

![](/docs/chapter1/figures/Untitled.gif) 

## Demo data and example analysis code

In this `tidymass` docker image, a folder named "demo_data" is included to help users to learn how to use `tidymass`.

Open the `tidymass_demo.Rmd` file in `demo_data` folder, and then run it code chunk by chunk or just render it by clicking `Knit` on RStudio, you will get a reporting result (HTML format) of all the whole workflow.

![](/docs/chapter1/figures/Untitled-2.gif) 

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
#> [13] jquerylib_0.1.4 compiler_4.3.0  rstudioapi_0.14 tools_4.3.0    
#> [17] evaluate_0.21   bslib_0.5.0     yaml_2.3.7      jsonlite_1.8.5 
#> [21] rlang_1.1.1
```


