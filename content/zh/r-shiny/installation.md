---
title: "安装与访问 R Shiny"
linktitle: "安装与访问 R Shiny"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 1
toc: true
commentable: false
editable: false
translationKey: "r-shiny-installation"
---

依据现有公开教程和 tidymassshiny 1.0.0 公开源码整理，核对日期：2026-09-23。

## 选择运行位置

[在线应用](https://tidymassshiny.jaspershenlab.com)在服务器上运行。现有公开教程说明上传限制为 512 MB、结果在 24 小时后删除；这些属于可变的服务配置，应以实际服务提示为准。记下 **JOB ID**，离开前使用 **Download All Data** 下载结果。

本地 R 版本使用本机计算和文件；Docker 版本只能访问挂载到容器中的目录。不适合上传到公共服务的数据，应在本地或经过管理的服务器环境分析。

## 安装 R 包

使用满足整套依赖的 R。虽然应用声明 R ≥ 4.1，当前依赖包可能要求 R ≥ 4.5。以下命令在可写 R 包库中执行，依赖安装还可能需要访问 GitLab、CRAN 和 Bioconductor。

```r
if (!requireNamespace("remotes", quietly = TRUE)) install.packages("remotes")
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
install.packages(c("tidyverse", "writexl", "hexbin", "ComplexUpset",
                   "shinyalert", "colourpicker"))
remotes::install_github("tidymass/tidymass")
remotes::install_github("tidymass/massdatabase")
remotes::install_github("tidymass/massdbbuildin")
remotes::install_github("tidymass/tidymass_shiny")
library(tidyverse)
library(tidymass)
library(tidymassshiny)
run_tidymass_shiny()
```

等待控制台出现监听地址后，在浏览器打开应用；分析期间保持 R 进程运行。使用 `packageVersion("tidymassshiny")` 核对版本，排错时保存 `sessionInfo()`。部分可选工具有额外依赖，按实际报错从正确来源安装。

macOS 遇到 Cairo/X11 错误时，可能需要 [XQuartz](https://www.xquartz.org/) 和相应 Cairo 配置。依据具体错误处理；系统库编译失败不能靠反复安装无关 R 包解决。

## Docker

安装并启动 Docker。将下面的主机目录替换为自己已有的数据目录：

```sh
docker pull tidymass/tidymassshiny:latest
docker run --rm -p 127.0.0.1:3838:3838   -v "/absolute/path/to/data:/home" tidymass/tidymassshiny:latest
```

启动完成后打开 `http://localhost:3838`，应用内选择挂载后的 `/home`。Windows 使用自己的盘符路径和 Docker 支持的卷挂载语法，并确认 Docker 有访问权限。记录实际镜像 digest，因为 `latest` 标签会更新。

## 共享服务器

管理员应准备受支持的 R/Shiny Server 环境、服务账号、持久工作目录和所需 R/系统依赖，并配置用户文件访问、资源限制和外部入口。`shinyFiles` 选择器看到的是 R 所在服务器的文件系统，不会直接读取远程浏览器所在电脑的任意文件夹；浏览器本地文件应通过上传入口传输。

旧教程包含 Ubuntu 部署示例，使用前先核对系统适用性，不要直接复制已过时的仓库密钥命令或固定版本安装器。

[原教程及操作截图](https://www.tidymass.org/tidymassshiny-tutorial/)
