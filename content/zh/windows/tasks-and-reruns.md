---
title: "任务、重跑与版本差异"
linktitle: "任务、重跑与版本差异"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 4
toc: true
commentable: false
editable: false
translationKey: "windows-tasks-and-reruns"
---

[返回教程目录](/zh/windows/) · 适用版本：0.1.63

## 监控与取消

运行时查看当前任务的状态和日志。需要中止时使用界面的取消按钮，并等待状态更新。不要通过删除项目文件来中止计算。减少 worker 数可以降低并行计算的内存需求。

## 小规模检查与正式处理

在独立测试项目中选择少量有代表性的 QC 和研究样品，检查峰宽、质量容差与峰形。参数合适后，在正式项目导入完整样品并运行。保留两次分析的参数和输出；测试项目结果不是完整数据的正式结果。

## 从保存步骤继续

重新打开项目后，从第一个未完成且前置条件满足的步骤继续。成功重跑上游会使相关下游结果过期；重新执行相关步骤即可。Run history 保留旧记录。取消后的峰检测需重新执行，不支持扫描级续算。

## 与 macOS 0.1.65 的差异

Windows 0.1.63 不包含 macOS 0.1.65 新增的 Parameter trial、Task center、Workflow templates，也不包含新的可调宽度图表工作台及 Basic / Quality / Annotation 列视图。不要在本版本中查找这些新入口。核心分析步骤请按 Windows 本教程操作；升级后以实际版本及对应文档为准。
