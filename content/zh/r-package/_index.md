---
title: "R package 使用说明"
linktitle: "R package 使用说明"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 0
toc: true
commentable: false
editable: false
translationKey: "r-package-_index"
---

从原始 LC-MS 文件到可复现的统计与通路结果。先了解数据结构，再按功能包逐步学习，最后运行完整 workflow。这里覆盖官网包目录中的 R 包；R Shiny 应用有独立教程。

1. [安装与版本管理](installation/)
2. [tidymass — 安装与管理包体系](tidymass/)
3. [massdataset — 构建、查看与交换数据集](massdataset/)
4. [massconverter — 转换厂商原始文件](massconverter/)
5. [massprocesser — 峰检测与样品对齐](massprocesser/)
6. [masscleaner — 过滤、填补与归一化](masscleaner/)
7. [massqc — 质量评估与报告](massqc/)
8. [massdatabase — 获取与构建参考数据库](massdatabase/)
9. [metid — Feature 注释与谱图审查](metid/)
10. [massstat — 探索变异与组间比较](massstat/)
11. [metpath — 通路与 feature 模块分析](metpath/)
12. [masstools — 分子式、谱图与 ID 工具](masstools/)
13. [MetNormalizer — 使用独立归一化流程](metnormalizer/)
14. [完整 LC-MS 分析工作流](workflow/)

## 版本依据

版本按 2026-09-23 核对的官方源码记录，不将桌面软件内置版本等同于 R 包最新版本。开发分支、镜像和已安装环境可能不同，分析时请保存自己的 sessionInfo。

| Package | Version | Source |
| --- | --- | --- |
| tidymass | 2.0.10 | [源码](https://github.com/tidymass/tidymass) |
| massdataset | 0.99.3 | [源码](https://github.com/tidymass/massdataset) |
| massconverter | 1.0.3 | [源码](https://github.com/tidymass/massconverter) |
| massprocesser | 1.0.11 | [源码](https://github.com/tidymass/massprocesser) |
| masscleaner | 1.0.12 | [源码](https://github.com/tidymass/masscleaner) |
| massqc | 1.0.8 | [源码](https://github.com/tidymass/massqc) |
| massdatabase | 1.0.14 | [源码](https://github.com/tidymass/massdatabase) |
| metid | 1.3.2 | [源码](https://github.com/tidymass/metid) |
| massstat | 1.0.6 | [源码](https://github.com/tidymass/massstat) |
| metpath | 1.0.10 | [源码](https://github.com/tidymass/metpath) |
| masstools | 0.99.1 | [源码](https://github.com/tidymass/masstools) |
| MetNormalizer | 1.3.02 | [源码](https://github.com/jaspershen/MetNormalizer) |

[历史 R 教程](/zh/docs/)保留原地址供旧项目参考。
