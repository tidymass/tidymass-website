---
title: "参数试跑、任务中心与 workflow 模板"
linktitle: "参数试跑、任务中心与 workflow 模板"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 4
toc: true
commentable: false
editable: false
translationKey: "macos-trials-tasks-templates"
---

[返回教程目录](/zh/macos/) · 适用版本：0.1.65

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/macos-trials-tasks-templates-zh.svg" caption="完整运行前试验参数。步骤编号表示阅读顺序；此图为流程示意。" >}}

在 macOS 0.1.65 选择代表性试验样本并检查试验结果。Trial 标签将它与正式流程结果区分。完整运行前恢复所需参数；模板只传递参数草稿，因此新项目仍需重新选择输入路径、数据库和比较分组。

## 参数试跑：先检查小规模数据

入口：**Workflows → Raw data processing → Analysis settings → Parameter trial**。

1. 先在 Data import 完成文件登记。
2. 展开 Parameter trial，通过搜索或复选框选择 1–5 个样品。
3. 默认选择列表前几个样品，最多三个；这不是自动挑选“有代表性”的样品。请根据 QC、分组和批次主动调整。
4. 在同一个 Analysis settings 面板设置峰检测等参数。
5. 点击 **Run parameter trial**。
6. 完成后检查样品数、feature 数、缺失情况和警告。
7. 在 **Inspect trial peak** 中选择 feature，再点击 **Show peak shape**。

峰形选择器使用保存的预览，最多 150 个 feature；完整峰表在该次运行目录中。峰形图展示 EIC，支持框选缩放、复位和下载。

### 比较参数

调整参数后再次试跑会生成独立记录。使用 **Compare saved results** 选择两次运行，比较结果和 **Settings used for this result**。尽量使用相同的试跑样品，避免把样品差异当作参数差异。

### 将参数用于完整数据

1. 选择满意的试跑记录。
2. 展开其设置快照，点击 **Restore this run’s settings**。
3. 检查当前参数。
4. 点击正式的 **Process raw data**。

正式处理使用完整导入清单，不沿用试跑的样品子集。

试跑不会完成正式 Raw data processing 步骤，也不会使后续步骤解锁；它不会替换已有正式结果。取消后再试跑会重新开始该次小规模计算，不支持从峰检测中途续算。

## 任务中心：查看正在运行的任务

入口：窗口顶部 **Task center**。

显示当前 R 操作、实际耗时、日志、内存和 **Cancel task**，下方列出项目任务历史。日志中可能显示处理文件、算法阶段或当前阶段进度；这些不能一概解释为整个 workflow 的完成百分比。

正式工作流运行或试跑期间，可以关闭任务中心面板，浏览同一项目的已保存步骤。参数和项目切换保持锁定。

| 运行期间的操作 | 当前行为 |
| --- | --- |
| 查看已有结果摘要和运行历史 | 可以 |
| 查看已缓存的探索图和默认 feature table | 可以；需要已有缓存 |
| 查看已保存注释表 | 可以 |
| 新提取 EIC、MS2 或生成尚未缓存的 R 结果 | 需要等待当前任务完成 |
| 修改正在运行的参数或切换项目 | 锁定 |
| 取消任务 | 使用 Cancel task，等待状态更新 |

其他短计算仍可能使用运行弹窗；任务中心并不意味着多个 R 分析可同时执行。关闭面板不会取消任务。

## 完整 workflow 模板

入口：非靶向项目分析页面上方 **Workflow templates**。

### 保存

1. 配置各步骤参数，或打开一个已有成功结果的项目。
2. 展开 Workflow templates。
3. 输入 **New workflow template name**。
4. 点击 **Save workflow template**。

模板收集七个分析阶段的参数；当前步骤使用当前草稿，其他步骤使用已有草稿、保存设置或默认值。预览会记录哪些阶段已有有效成功结果。保存了模板不代表其中的默认参数已经验证。

### 在另一个项目应用

1. 创建或打开新的非靶向项目。
2. 在 **Workflow template** 下拉框中选择模板。
3. 展开 **Preview settings** 检查内容和来源版本。
4. 点击 **Apply workflow template**。
5. 配置本项目的原始文件、样品信息、数据库和比较组，再逐步运行。

模板应用到各步骤的参数草稿，并保存到项目；不会自动执行完整流程，也不会修改旧结果或跳过前置步骤。

### 模板包含什么

保留可复用的分析参数、TidyMass 版本和来源步骤记录。排除原始文件路径、数据库路径、样品选择、试跑子集和比较组 ID。Results & export 的导出选择仍需单独设置。

模板保存在当前电脑的 TidyMass 用户数据目录，可供其他项目使用；它不是已经发布到云端的方法库。

## 看图操作：检查参数试验与模板

{{< tutorial-figure src="/tutorial-images/desktop/parameter-trial.png" caption="检查参数试验与模板。真实 macOS 0.1.65 截图，使用合成原始数据测试样本，不代表生物学结果。" >}}

1. 在 Workflow templates 先预览模板再 Apply workflow template；顶部提示要求重新核对输入文件、数据库与比较分组。
2. 结果标签以 Trial 开头。图中单样本、两个特征属于试验运行，不是正式全量分析，也不会解锁所有下游阶段。
3. 展开 Settings used for this result。Draft differs 表示当前参数草稿与生成这份结果的参数不同。
4. 在 Inspect trial peak 选择峰，点击 Show peak shape，检查峰顶、基线与提取边界。确认后恢复合适参数，再处理全部导入样本。
