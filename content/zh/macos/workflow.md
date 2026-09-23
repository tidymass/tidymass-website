---
title: "完整非靶向代谢组学工作流"
linktitle: "完整非靶向代谢组学工作流"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 3
toc: true
commentable: false
editable: false
translationKey: "macos-workflow"
---

[返回教程目录](/zh/macos/) · 适用版本：0.1.65

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/macos-workflow-zh.svg" caption="八阶段分析路线。步骤编号表示阅读顺序；此图为流程示意。" >}}

每一阶段先展开设置并核对输入，再运行、等待完成、查看警告和数据摘要。确认样本/特征数量与图形合理后继续。保存参数草稿不会重新计算当前显示的结果。

## 1. Data import

选择 mzML/mzXML 文件和样品信息，检查分组，点击 **Import raw files**。这一步登记原始文件，不执行色谱峰检测。

使用目录导入时，子目录可以参与分组；使用单独文件选择时应通过样品信息确认真实分组。检查导入表，不要将文件存放方式误当作生物学设计。

## 2. Raw data processing

软件使用 massprocesser/XCMS 相关处理功能，进行峰检测、保留时间校正和跨样品特征分组；是否补峰由设置决定。

重点检查：

| 参数类别 | 检查目的 |
| --- | --- |
| m/z tolerance | 与仪器质量精度相符 |
| Peak width range | 与实际色谱峰宽相符 |
| Signal / noise、noise、prefilter | 控制噪声和低质量信号进入峰表 |
| Grouping bandwidth、minimum fraction | 控制跨样品分组条件 |
| Fill peaks | 决定是否执行补峰，不等同于后面的矩阵缺失值填补 |
| Worker processes | 控制并行规模，同时考虑内存和数据量 |

先运行 **Parameter trial** 检查几个样品，确认后点击 **Process raw data** 处理完整数据。试跑不能代替正式步骤。

结果包括 `mass_dataset`、峰表和处理输出。需要查看生成文件时点击 **Project folder**，结合该次运行 ID 定位文件。

## 3. Data exploration

检查 m/z–RT 分布、样品及 feature 缺失值、分组和批次信息。在联动工作台选择 feature，查看峰形、MS1/MS2、样品强度及可用的注释证据。

**Feature filters** 改变当前显示范围，不删除下游数据；人工 **Exclude** 标记也不是自动从分析矩阵移除。详见 [结果审查](/zh/macos/feature-review/)。

## 4. Data cleaning

按研究设计选择：

1. 缺失值过滤，包括 QC 或生物学组内条件。
2. 异常样品检查及明确的移除选择。
3. 缺失值填补。
4. 归一化。
5. 可选的批次整合。

没有定量 QC 时，不要启用依赖 QC 的过滤或校正。异常点需要结合实验记录判断，不能仅凭 PCA 位置决定删除。

检查每一步的设置与前后结果。前后 PCA 可能是分别拟合的模型，坐标轴不能被理解为同一个固定坐标系。

## 5. Metabolite annotation

选择 metid 支持的参考数据库，配置离子模式、色谱类型、加合物、MS1/MS2 容差和匹配阈值。只有数据库 RT 与实验条件相容时才使用 RT 匹配。

在注释表中选择候选项，检查实验与参考 MS2 镜像谱，以及质量误差、RT 和其他证据。没有 MS2 的候选不能被解释为 MS2 已验证鉴定。

若暂不做注释，可在界面允许时选择 **Skip annotation for statistics**。跳过后仍可继续统计，但基于注释的 pathway analysis 需要先补做注释并更新其后步骤。

## 6. Statistical analysis

检查 PCA 和所需的差异分析设置。明确选择 Control 与 Treatment 等实际比较组。

配对分析需要正确的个体列，并保证两组中每个参与比较的个体各有一个样品且标识匹配。不能靠样品顺序自动推断配对。

## 7. Pathway analysis

确认注释 ID、候选歧义处理、输入筛选和背景集。根据研究目的选择合适的方法和多重检验设置。

没有符合要求的化合物时，空结果可能是合理结果；先检查输入筛选、注释与数据库覆盖，不要为了得到通路而随意放宽条件。

## 8. Results & export

选择运行范围和导出内容，保存完整表格、R 对象、代码和日志。详见 [导出与恢复](/zh/macos/export-and-recovery/)。

## 中断、继续与重跑

完成步骤保存在项目中。重开项目后可以从第一个尚未完成且前置条件满足的步骤继续，不必重跑已完成步骤。

重跑上游步骤成功后，依赖旧结果的下游步骤会变为过期，需要重新运行。旧结果仍在 **Run history** 中。失败或取消的重试不会把之前成功的结果当作新结果覆盖掉。

这里的恢复是从已保存的步骤继续，不代表可以从某一次峰检测内部的任意扫描点恢复。

## 看图操作：阅读已保存的流程结果

{{< tutorial-figure src="/tutorial-images/desktop/workflow-saved.png" caption="阅读已保存的流程结果。真实 macOS 0.1.59 预览版回归测试截图；计数来自测试数据。" >}}

1. 先看左侧阶段列表：当前选中 Data exploration；Data cleaning 标记为 Stale，表示上游输入已改变。Blocked 阶段尚无可用的前置输入。
2. 在 Displayed dataset 核对运行标识、Samples、Features 和 Missing values。图中 24 个矩阵单元中有 7 个缺失，即 29.17%；这不是整份缺失样本的比例。
3. 选择已保存运行，展开 Settings used for this result。比较两份结果前确认它们的输入和参数能够回答同一问题。
4. 复核后按顺序重跑过期的下游阶段；若失败，先检查第一条错误再调整参数或重试。
