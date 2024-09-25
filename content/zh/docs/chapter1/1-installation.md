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



如果您尚未在您的PC或Mac上安装R或RStudio，请在继续之前先安装它们。否则，您可以跳过这些步骤。

{{< cta cta_text="👉 Update R" cta_link="#update-r" >}}

## Install R

下载[R](https://www.r-project.org/)并安装。

[👉 Refer this blog](https://www.dataquest.io/blog/installing-r-on-your-computer/)

## Install RStudio

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

如果您的 R 版本低于 4.1，请下载并安装[最新版本的 R](https://cran.r-project.org/mirrors.html)，然后重新启动 R。

## 从 `tidymass.org` 安装 `tidymass`

在控制台中复制并粘贴以下代码。


``` r
source("https://www.tidymass.org/tidymass-packages/install_tidymass.txt")
install_tidymass(from = "tidymass.org")
```

您还可以使用此方法安装单个特定的软件包。例如，如果您只想安装[metID](https://metid.tidymass.org/)。


``` r
install_tidymass(from = "tidymass.org", which_package = "metid")
```

演示视频如下：

![](/docs/chapter1/figures/pull_case_study.gif) 

如果上面的代码不起作用，请尝试更改`method`参数。

1. "auto"

2. "internal"

3. "libcurl"

4. "wget"

5. "curl"

## 从 `GitHub` 安装 `tidymass`

在控制台中复制并粘贴以下代码。


``` r
if(!require(remotes)){
  install.packages("remotes")
}
remotes::install_github("tidymass/tidymass", dependencies = TRUE)
```

## 一些问题

1. 在安装过程中，会多次询问是否要更新某些软件包，请直接按下 `Enter` 或 `Return` 键跳过。

2. 如果出现以下错误：

> Error: Failed to install 'tidymass' from GitHub: HTTP error 403. API rate limit exceeded for 171.66.10.237. (But here's the good news: Authenticated requests get a higher rate limit. Check out the documentation for more details.)

尝试通过以下方式解决：

* 在您的 R 控制台中，输入以下代码：


``` r
if(!require(usethis)){
  install.packages("usethis")
}
usethis::create_github_token()
```

它将在浏览器中打开一个页面，并创建一个“新的个人访问令牌”，然后将其复制。

![](/docs/chapter1/figures/fig3.png) 

* 然后输入以下代码：


``` r
usethis::edit_r_environ()
```

然后添加一行如下的代码：


``` r
GITHUB_PAT=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
```

> GITHUB_PAT 应该是您在步骤 1 中创建的个人访问令牌。

然后重新启动 R 会话，再次尝试。

## 从 `GitLab` 安装 `tidymass`

在控制台中复制并粘贴以下代码。


``` r
if(!require(remotes)){
  install.packages("remotes")
}
remotes::install_gitlab("tidymass/tidymass", dependencies = TRUE)
```


## 从 `Gitee` 安装 `tidymass`

如果您在中国，请尝试从 Gitee 安装 `tidymass`。将以下代码复制并粘贴到您的控制台中。


``` r
if(!require(remotes)){
  install.packages("remotes")
}
remotes::install_git(url = "https://gitee.com/tidymass/tidymass", dependencies = TRUE)
```


如果您无法成功安装 `tidymass`，请通过以下方式与我们联系：

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
