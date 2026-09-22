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
translationKey: "windows-getting-started"
---

[返回教程目录](/zh/windows/) · 适用版本：0.1.63

## 安装 Windows 版本

本教程对应 **0.1.63 Windows x64 预览版**。向维护者获取预览 ZIP，完整解压后运行 `TidyMass-0.1.63-windows-x64-setup.exe`，按安装向导完成安装。当前尚未核实可供公众直接访问的下载链接；已有 CI 构建产物需要 GitHub 仓库访问权限。

启动后等待 **R environment** 检查结束。安装包内置 R 4.5.2 和核心依赖，主工作流无需单独安装系统 R。选择本机可写项目目录，保留原始文件供后续查看峰形。如果 Windows 提示未知发布者，先向维护者核实安装包来源和校验值，再按系统提示允许该应用。

0.1.63 已记录安装及安装后应用的自动化测试，仍需在用户实际 Windows 环境中确认。本页不声明 Windows ARM 兼容性。

## 创建第一个项目

1. 点击左侧 **Workflows**。
2. 打开非靶向代谢组学工作流，输入项目名。
3. 点击 **Choose location & create**，选择存放项目的父目录。
4. 在 **Data import** 中选择 mzML/mzXML 和可选的 sample information。
5. 导入完成后进入 **Raw data processing**。

软件会创建新的项目目录；不要选择一个同名已有目录来覆盖旧项目。后续通过 **Projects** 或 **Open project** 打开项目目录。

正式处理大批样品前，建议在独立测试项目用少量有代表性的样品检查参数。

## 认识界面

| 入口 | 用途 |
| --- | --- |
| Workflows | 按步骤完成完整分析 |
| Analysis tools | 执行单个分析或准备任务 |
| Shiny tools | 安装、启动第三方 Shiny 应用 |
| R environment | 查看 R 环境与管理额外 R 包 |
| Code | 查看相关代码和执行记录 |
| Run history | 查看已保存运行及其参数 |
| Show settings / Hide settings | 展开或收起参数面板 |

左下角内存分别显示 **TidyMass used**、**Computer used**、**Computer total**。软件占用和系统总占用不是同一个指标；系统总占用较高不一定由 TidyMass 单独造成。

## 第一次运行后的检查

确认导入样品数、分组和文件匹配正确，再查看结果中的 feature 数、缺失值、峰形及警告。仅显示 completed 表示程序执行完成，不代表分析参数或生物学结论已经验证。
