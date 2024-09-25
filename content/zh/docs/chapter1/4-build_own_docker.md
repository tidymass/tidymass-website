---
date: "2019-05-05T00:00:00+01:00"
title: "基于 tidymass 构建你自己的 docker 镜像"
linktitle: "4 构建你自己的 docker"
author: admin
type: book
weight: 4
commentable: true
---



你可以构建你自己的 docker 镜像，其中包含所有的 `代码`、`数据` 和 `分析环境`，这样在进行可重复性分析时效率更高。

## 创建 `dockerfile`

创建一个没有扩展名的 `dockerfile`。然后打开并进行修改。

```
FROM jaspershen/tidymass:latest
MAINTAINER "Xiaotao Shen" shenxt1990@outlook.com

RUN apt-get update && apt-get install -y curl

COPY demo_data/ /home/rstudio/demo_data/

RUN chmod 777 /home/rstudio/demo_data/

RUN R -e 'install.packages("remotes")'

RUN R -e "remotes::install_gitlab('jaspershen/tidymass')"
```

如果你想安装一些对分析有用的包（例如 ggraph），可以添加一行新代码：

```
RUN R -e 'install.packages("ggraph")'
```

你还需要使用 `COPY` 命令将数据复制到镜像中。

## 构建镜像

在 `终端` 中，使用以下代码构建镜像。

```
docker build -t image-name -f Dockerfile .
```

将 `image-name` 替换为你的镜像名称。

## 使用 `docker tag` 命令为 `tidymass` 镜像指定新名称

我们需要在 docker hub (https://hub.docker.com/) 上创建一个账号，然后使用以下代码将本地镜像与我们的账号链接。

```
docker tag image-name your-account/image-name:latest
```

## 将镜像推送到 docker hub

```
docker push your-account/image-name:latest
```

然后其他人就可以下载你的镜像，其中包含代码、数据和分析环境，这使得重复你的分析和结果变得非常容易。

如何拉取 docker 镜像并运行它，可以[参考此文档](https://tidymass.github.io/tidymass/articles/docker.html)。

## 会话信息


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
