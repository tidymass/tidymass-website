---
title: "Windows 使用说明"
linktitle: "Windows 使用说明"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 0
toc: true
commentable: false
editable: false
translationKey: "windows-_index"
---

使用本机运行的 TidyMass Desktop 完成 LC-MS 数据处理与分析。教程保留英文按钮名，便于对照软件界面。按安装 → 输入 → 完整工作流阅读，之后按需查阅各工具。

**Windows x64 0.1.63** — 预览版，更新日期：2026-09-23。平台版本分别维护，不能以另一平台的新功能推断本版本支持。

1. [安装与快速开始](getting-started/)
2. [输入数据与样品信息](input-data/)
3. [完整非靶向代谢组学工作流](workflow/)
4. [任务、重跑与版本差异](tasks-and-reruns/)
5. [Feature 审查与交互图](feature-review/)
6. [Analysis tools：独立分析工具](analysis-tools/)
7. [Shiny tools 与 R environment](shiny-and-packages/)
8. [导出、项目保存与恢复](export-and-recovery/)
9. [常见问题](troubleshooting/)

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/windows-_index-zh.svg" caption="桌面分析总览。步骤编号表示阅读顺序；此图为流程示意。" >}}

完整分析使用 Workflows，单项任务使用 Analysis tools。项目保存运行记录与输出。先用小型代表性数据熟悉界面，再为完整研究创建独立项目。

## 看图操作：阅读已保存的流程结果

{{< tutorial-figure src="/tutorial-images/desktop/workflow-saved.png" caption="阅读已保存的流程结果。真实 macOS 0.1.59 预览版回归测试截图；计数来自测试数据。 截图来自 macOS，仅说明共用控件，并非 Windows 安装界面。" >}}

1. 先看左侧阶段列表：当前选中 Data exploration；Data cleaning 标记为 Stale，表示上游输入已改变。Blocked 阶段尚无可用的前置输入。
2. 在 Displayed dataset 核对运行标识、Samples、Features 和 Missing values。图中 24 个矩阵单元中有 7 个缺失，即 29.17%；这不是整份缺失样本的比例。
3. 选择已保存运行，展开 Settings used for this result。比较两份结果前确认它们的输入和参数能够回答同一问题。
4. 复核后按顺序重跑过期的下游阶段；若失败，先检查第一条错误再调整参数或重试。
