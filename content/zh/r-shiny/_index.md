---
title: "R shiny 使用说明"
linktitle: "R shiny 使用说明"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 0
toc: true
commentable: false
editable: false
translationKey: "r-shiny-_index"
---

通过浏览器界面完成 LC-MS 数据处理与分析。本教程针对独立的 tidymassshiny 应用；桌面软件中的 Shiny tools 安装器请看 macOS/Windows 教程。

公开源码当前标记为 **tidymassshiny 1.0.0**。在线服务和 Docker 镜像可能使用不同构建，运行时请记录实际版本。

1. [安装与访问 R Shiny](installation/)
2. [创建项目与导入数据](inputs-and-processing/)
3. [质量评估与数据清洗](quality-and-cleaning/)
4. [注释、统计与富集](annotation-and-statistics/)
5. [fMSEA、FPA 与数据库工具](toolkits/)
6. [保存结果与常见问题](export-and-troubleshooting/)

[应用源码](https://github.com/tidymass/tidymass_shiny) · [原版完整教程](https://www.tidymass.org/tidymassshiny-tutorial/)

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/r-shiny-_index-zh.svg" caption="Shiny 分析路线。步骤编号表示阅读顺序；此图为流程示意。" >}}

按顶部导航从项目初始化进入下游分析，尽早保存项目位置或在线 JOB ID。正负离子模式具有独立视图；阅读表格或图形前先确认当前极性。

## 看图操作：初始化 Shiny 项目

{{< tutorial-figure src="/tutorial-images/shiny/project_initiate.png" caption="初始化 Shiny 项目。图片来自已发布的 TidyMassShiny 教程；不同部署的界面细节可能有差异。" >}}

1. 打开 Initialize project，选择 R 进程可访问的工作目录，并在导入前命名研究。
2. 确认初始化完成，再从 Data import 选择输入路线；不同分析使用不同项目。
