---
date: "2019-05-05T00:00:00+01:00"
title: "Build your own docker image based on tidymass"
linktitle: "4 Build your own docker"
author: admin
type: book
weight: 4
commentable: true
---



You can build your own docker image, which contains all your `code`, `data` and `analysis environment`, which is more efficient for reproducible analysis.

## Create `dockerfile`

Create a `dockerfile` without extension. And then open and modify it.

```
FROM jaspershen/tidymass:latest
MAINTAINER "Xiaotao Shen" shenxt1990@outlook.com

RUN apt-get update && apt-get install -y curl

COPY demo_data/ /home/rstudio/demo_data/

RUN chmod 777 /home/rstudio/demo_data/

RUN R -e 'install.packages("remotes")'

RUN R -e "remotes::install_gitlab('jaspershen/tidymass')"
```

If you want to install packages (for example ggraph) which are necessary for you analysis, please add a new line:

```
RUN R -e 'install.packages("ggraph")'
```

And you also need to copy your data to the image use the `COPY`.

## Build image

In the `terminal`, use below code to build the image.

```
docker build -t image-name -f Dockerfile .
```

Change the `image-name`.

## Use the `docker tag` command to give the `tidymass` image a new name

We need to create a account on the docker hub (https://hub.docker.com/) and then use the next code to link the local image to our account.

```
docker tag image-name your-account/image-name:latest
```

## Push image to docker hub

```
docker push your-account/image-name:latest
```

Then other people can download your image which contains your code, data and analysis environment, which make it is pretty easy to repeat your analysis and results.

How to pull docker image and run it can [refer this document](https://tidymass.github.io/tidymass/articles/docker.html).

## Session information



``` r
sessionInfo()
#> R version 4.4.1 (2024-06-14)
#> Platform: aarch64-apple-darwin20
#> Running under: macOS 15.0
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
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> loaded via a namespace (and not attached):
#>  [1] digest_0.6.37     R6_2.5.1          bookdown_0.40     fastmap_1.2.0    
#>  [5] xfun_0.47         blogdown_1.19     cachem_1.1.0      knitr_1.48       
#>  [9] htmltools_0.5.8.1 rmarkdown_2.28    lifecycle_1.0.4   cli_3.6.3        
#> [13] sass_0.4.9        jquerylib_0.1.4   compiler_4.4.1    rstudioapi_0.16.0
#> [17] tools_4.4.1       evaluate_0.24.0   bslib_0.8.0       yaml_2.3.10      
#> [21] jsonlite_1.8.8    rlang_1.1.4
```


