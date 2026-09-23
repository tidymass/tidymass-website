---
title: "安装与版本管理"
linktitle: "安装与版本管理"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 1
toc: true
commentable: false
editable: false
translationKey: "r-package-installation"
---

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/r-package-installation-zh.svg" caption="验证 R 环境。步骤编号表示阅读顺序；此图为流程示意。" >}}

在 R 控制台逐段执行安装代码；出现依赖错误时先解决第一条错误。之后加载 tidymass 并记录 sessionInfo()。下载完成不等于包已能正常加载。

## 准备环境

本教程核对了 tidymass 2.0.10 及各包的当前源码。虽然部分包声明最低 R 4.1，当前 masstools 要求 R ≥ 4.5；新环境应采用满足整套依赖的 R 4.5 或更高兼容版本。安装 R 和适合自己的 IDE，使用可写用户包库。

Windows 源码编译需要匹配 R 版本的工具链；macOS 可能需要命令行开发工具及特定系统库。先看安装日志的第一个实际错误，再补齐相关依赖。Docker/ProteoWizard 属于原始格式转换的额外需求，不是打开峰表的前提。

## 安装

以下从官方 GitHub 源安装；依赖元数据中也可能引用 GitLab 和 Bioconductor，因此需能访问相应来源。安装会访问网络并可能编译包。

```r
if (!requireNamespace("remotes", quietly = TRUE)) install.packages("remotes")
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
remotes::install_github("tidymass/tidymass")
# Additional packages when your analysis needs them:
remotes::install_github("tidymass/massdatabase")
remotes::install_github("tidymass/massconverter")
# Standalone legacy normalization interface:
# remotes::install_github("jaspershen/MetNormalizer")
library(tidymass)
sessionInfo()
```

## 记录版本与排错

重启 R 后加载 tidymass，检查 `packageVersion()`、`.libPaths()` 和 `sessionInfo()`。主包的版本不代表每一个子包版本相同。遇到同名函数用 `包名::函数名()`，不要因为加载顺序变化而运行了另一个包的接口。

使用 `tidymass::check_tidymass_version(packages = "all")` 检查更新；明确需要升级时再运行 `update_tidymass()`。远程镜像可能不同步，网络失败也可能使更新信息不完整。对于已经发表或正在比较的项目，先保存环境锁定记录和分析代码，再升级并验证。

## 从哪里开始

从 [massdataset](../massdataset/) 学习数据结构；已有原始数据按 [完整工作流](../workflow/) 处理。每个包的章节列出功能范围、使用示例和导出函数。数据依赖示例只有在准备了相应输入时才运行，示例参数不是经过验证的通用分析方法。
