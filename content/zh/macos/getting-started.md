---
title: "安装与快速开始"
linktitle: "安装与快速开始"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 1
toc: true
commentable: false
editable: false
translationKey: "macos-getting-started"
---

[返回教程目录](/zh/macos/) · 适用版本：0.1.65

当前对应 **0.1.65 Apple Silicon 预览版**。公开下载链接尚未核实；请使用维护者提供的 DMG，并核对应用显示的版本号。本教程不声明 Intel Mac 安装包支持。

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/macos-getting-started-zh.svg" caption="第一个项目。步骤编号表示阅读顺序；此图为流程示意。" >}}

等待 R 环境就绪。选择非靶向流程，填写易辨认的项目名称并选择可写的上级目录。导入后先把界面样本数与样本表核对，再进入峰检测。

## 安装 macOS 版本

1. 打开所获得的 TidyMass DMG 安装包。
2. 将 TidyMass 拖到 Applications。
3. 从 Applications 打开 TidyMass。
4. 等待 R environment 检查结束，再开始运行分析。

如果拿到的是开发预览 `.app`，也可以直接打开它；版本号显示在窗口顶部。Preview 安装包可能尚未签名或公证，若系统拦截，请先核实来源，再根据 macOS 的提示在“系统设置 → 隐私与安全性”中允许打开。不要关闭整个系统的安全检查。

软件包含 R 和核心依赖。第三方 Shiny 的可选依赖可能仍需另外安装，见 [R environment](/zh/macos/shiny-and-packages/)。

## 创建第一个项目

1. 点击左侧 **Workflows**。
2. 打开非靶向代谢组学工作流，输入项目名。
3. 点击 **Choose location & create**，选择存放项目的父目录。
4. 在 **Data import** 中选择 mzML/mzXML 和可选的 sample information。
5. 导入完成后进入 **Raw data processing**。

软件会创建新的项目目录；不要选择一个同名已有目录来覆盖旧项目。后续通过 **Projects** 或 **Open project** 打开项目目录。

正式处理大批样品前，建议先做 [Parameter trial](/zh/macos/trials-tasks-templates/)。

## 认识界面

| 入口 | 用途 |
| --- | --- |
| Workflows | 按步骤完成完整分析 |
| Analysis tools | 执行单个分析或准备任务 |
| Shiny tools | 安装、启动第三方 Shiny 应用 |
| R environment | 查看 R 环境与管理额外 R 包 |
| Code | 查看相关代码和执行记录 |
| Task center | 查看当前 R 任务、日志、内存及项目任务历史 |
| Show settings / Hide settings | 展开或收起参数面板 |

左下角内存分别显示 **TidyMass used**、**Computer used**、**Computer total**。软件占用和系统总占用不是同一个指标；系统总占用较高不一定由 TidyMass 单独造成。

## 第一次运行后的检查

确认导入样品数、分组和文件匹配正确，再查看结果中的 feature 数、缺失值、峰形及警告。仅显示 completed 表示程序执行完成，不代表分析参数或生物学结论已经验证。

## 看图操作：阅读已保存的流程结果

{{< tutorial-figure src="/tutorial-images/desktop/workflow-saved.png" caption="阅读已保存的流程结果。真实 macOS 0.1.59 预览版回归测试截图；计数来自测试数据。" >}}

1. 先看左侧阶段列表：当前选中 Data exploration；Data cleaning 标记为 Stale，表示上游输入已改变。Blocked 阶段尚无可用的前置输入。
2. 在 Displayed dataset 核对运行标识、Samples、Features 和 Missing values。图中 24 个矩阵单元中有 7 个缺失，即 29.17%；这不是整份缺失样本的比例。
3. 选择已保存运行，展开 Settings used for this result。比较两份结果前确认它们的输入和参数能够回答同一问题。
4. 复核后按顺序重跑过期的下游阶段；若失败，先检查第一条错误再调整参数或重试。
