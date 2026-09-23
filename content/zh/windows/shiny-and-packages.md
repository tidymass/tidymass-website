---
title: "Shiny tools 与 R environment"
linktitle: "Shiny tools 与 R environment"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 7
toc: true
commentable: false
editable: false
translationKey: "windows-shiny-and-packages"
---

[返回教程目录](/zh/windows/) · 适用版本：0.1.63

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/windows-shiny-and-packages-zh.svg" caption="管理可选 R 应用。步骤编号表示阅读顺序；此图为流程示意。" >}}

在 R environment 检查安装的包，在 Shiny tools 管理应用启动入口。核对包名称和启动函数；启动失败时先查看工具日志，区分缺包、系统库缺失和启动错误再重试。

## 两个入口的区别

- **Shiny tools** 安装和启动一个完整的 Shiny 应用。
- **R environment** 查看当前 R 环境，并安装额外 R 包，例如工具缺失的依赖。

给 Shiny 安装一个依赖包，不需要把它再注册为一个 Shiny 工具。

## 安装 Shiny 应用

1. 打开 Shiny tools → **Install a Shiny tool**。
2. 选择 GitHub、CRAN 或 Bioconductor。
3. 输入仓库地址或包名。
4. 如已知，可填写 R package name 和 Startup function；否则先留空尝试自动识别。
5. 确认来源可信后勾选界面的信任选项，点击 **Install tool**。
6. 用 **View log** 检查安装过程。

GitHub 仓库名不一定等于 R 包名。例如仓库名可能含下划线，而实际包名不同。不要把整个 GitHub URL 填到 R package name 中。

工具执行的是本机 R 代码，不只是一个静态网页。第三方应用的功能和依赖由其开发者决定。

## 启动与管理

在 Installed tools 点击 **Open tool**。应用占据左侧导航栏之外的主要空间，顶部保留返回、停止和日志按钮。

**Back to installed tools** 返回列表，不等同于停止进程；需要释放该工具资源时点击 **Stop tool**。

**Manage tool** 中可配置启动模式：

| 模式 | 使用场景 |
| --- | --- |
| Auto-detect | 优先尝试自动识别 |
| Exported function | 包导出了明确的启动函数 |
| Package app_ui / app_server | 包提供相应 UI 和 server 接口 |
| Shiny application folder | 选择含 Shiny 应用文件的目录，以 `shiny::runApp()` 启动 |

启动函数只填函数名，例如 `run_featuremap`，不要填 `featuremapshiny::run_featuremap()`。

`runApp` 是 shiny 包中的函数，并不是每个第三方包都导出了自己的 `runApp`。若报 “not an exported object”，检查启动模式和实际函数名。

## 安装缺失的 R 包

1. 打开左下角 **R environment**。
2. 查看已安装包，确认报错中缺少的准确包名。
3. 在包安装区域选择正确来源并输入包名或仓库地址。
4. 检查安装日志。
5. 安装成功后停止并重新启动相关 Shiny 工具。

例如 `org.Mm.eg.db` 属于 Bioconductor，应按其来源安装，而不是将它当作 CRAN 包。

额外包库与应用内置库分开管理。Shiny 工具还可能具有自己的私有依赖库；核心分析与第三方工具的库搜索优先级可能不同。因此“某处安装成功”不代表每个进程已经加载同一版本，重启工具后仍报错时应查看日志和实际包版本。

从源码安装的包可能需要编译器或系统依赖。遇到此类失败，安装更多 R 包不一定能解决问题，应先找到日志中的首个实际错误。

## 看图操作：启动已安装 Shiny 工具

{{< tutorial-figure src="/tutorial-images/desktop/shiny-tools.png" caption="启动已安装 Shiny 工具。真实 macOS 0.1.39 截图，使用 MAPA 示例。 截图来自 macOS，仅说明共用控件，并非 Windows 安装界面。" >}}

1. 在 Installed tools 核对包名称、版本和启动函数。stopped 表示应用进程未运行。
2. 点击一次 Launch 并等待；若启动失败，打开 View log，从第一条错误定位依赖或函数问题。
3. 安装其他工具时正确选择包来源及仓库/包名称；安装成功的 R 包还需要有效的 Shiny 启动函数才能作为应用打开。
4. 停止前在应用内部保存结果。第三方应用拥有自己的输入格式与导出控件。
