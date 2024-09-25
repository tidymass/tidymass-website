---
date: "2019-05-05T00:00:00+01:00"
title: "Docker 版本的 tidymass"
linktitle: "3 Docker 版本的 tidymass"
author: admin
type: book
weight: 3
commentable: true
---



[Docker](https://www.docker.com/) 是一套平台即服务（PaaS）产品，使用操作系统级别的虚拟化将软件打包在称为容器的包中交付。因此，它对于想与他人共享代码、数据，甚至分析环境以重复他们的分析和结果的人非常有用。

我们提供了 `tidymass` 的 Docker 版本，其中 `tidymass` 及其依赖包已全部安装。

## 安装 Docker

请参考 [官网](https://www.docker.com/get-started) 下载并安装 Docker。然后运行 Docker。

## 拉取 `tidymass` 镜像

打开终端并输入以下代码：

```
docker pull jaspershen/tidymass:latest
```

## 运行 `tidymass` Docker 镜像

在终端中运行以下代码：

```
docker run -e PASSWORD=tidymass -p 8787:8787 jaspershen/tidymass:latest
```

以下命令会将 RStudio 的主文件夹与运行容器的本地机器桌面连接。使用容器时，保存在主文件夹中的任何内容都会存储在本地桌面上。

```
docker run -e PASSWORD=tidymass -v ~/Desktop:/home/rstudio/ -p 8787:8787 jaspershen/tidymass:latest
```

## 打开 RStudio 服务器

然后打开浏览器并访问 http://localhost:8787 来启动 RStudio 服务器。用户名为 `rstudio`，密码为 `tidymass`。

![](/docs/chapter1/figures/Untitled.gif)

## 示例数据和示例分析代码

在此 `tidymass` Docker 镜像中，包含一个名为 "demo_data" 的文件夹，帮助用户学习如何使用 `tidymass`。

打开 `demo_data` 文件夹中的 `tidymass_demo.Rmd` 文件，逐段运行代码，或直接在 RStudio 中点击 `Knit` 来生成报告结果（HTML 格式），展示整个工作流程。

![](/docs/chapter1/figures/Untitled-2.gif)

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
