---
title: "Feature 审查与交互图"
linktitle: "Feature 审查与交互图"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 5
toc: true
commentable: false
editable: false
translationKey: "windows-feature-review"
---

[返回教程目录](/zh/windows/) · 适用版本：0.1.63

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/windows-feature-review-zh.svg" caption="逐个复核特征。步骤编号表示阅读顺序；此图为流程示意。" >}}

若表格意外变空，先 Clear filters。选中特征并加载证据，比较代表性样本中的峰形，保存包含理由的复核备注。Exclude 只是复核标签；若要从后续分析中移除数据，应使用实际清洗或过滤操作。

## 查找与查看 feature

在 Data exploration 打开 m/z–RT distribution，点击散点或表格中的 feature 查看详情。使用 Find feature by ID 精确查找；Previous feature / Next feature 按当前过滤和排序后的列表切换。表格可以按列排序，并添加少量样品强度列。

Windows 0.1.63 使用原有图表布局，不包含 macOS 0.1.65 新增的可调宽度工作台和列视图切换。

## 筛选与人工审查

Feature filters 可按 MS2、注释状态、m/z、RT、强度、缺失率、QC RSD、Sample / Blank 等条件筛选。质量指标需要数据中有相应 QC/Blank 和有效观测；QC RSD 至少需要三个有效 QC 观测。

筛选同时影响图和表，但不改变保存的矩阵。需要实际删除或过滤数据时，应使用 Data cleaning 并生成新的结果。

人工审查可设置 Keep、Exclude、Needs confirmation、Favorite 和备注。点击 **Save review** 保存，使用 **Export reviews CSV** 导出。Exclude 是审查标记，不自动删除下游数据。

## 检查证据

选中 feature 后可按需加载：

- **Peak evidence**：可用的检测、补峰及积分边界记录。
- **Sample intensities**：各样品中的强度。
- **Injection drift**：按进样顺序检查变化。
- **RT alignment**：可用的保留时间对齐信息。
- **MS2 spectra**：已关联的 MS2。
- **Annotation candidates**：保存结果中的候选项。
- **MS1 spectrum**：所选样品中接近该 feature RT 的扫描谱。

MS1 扫描谱包含该扫描的其他离子，不是分离后的“该化合物纯谱”。有 MS2 和高匹配分数也不能单独证明唯一结构。

## 峰形

点击 **Show peak shape**，默认只展示少量样品。展开 **Samples and extraction settings** 可修改样品、m/z 容差和 RT 窗口。

峰形是原始 RT 下的 MS1 EIC；图中可用的虚线边界来自保存的峰积分证据。首次提取可能需要读取原始数据并建立本地扫描缓存，后续复用缓存。更换或丢失原始文件仍可能导致提取失败。

## 图表操作与下载

图表工具栏位于各图附近：

- 鼠标拖动框选区域进行放大。
- **Reset view** 或双击恢复初始视图。
- **Download plot** 选择可用格式、宽高及 PNG DPI。
- 提供 **Download CSV** 时可导出该图对应的数据。
- 点击 information icon 查看该图的说明。

保存图可能使用完整范围，而不是当前缩放区域；以图旁的说明为准。表格分页和图形预览不代表完整导出被截断，应使用 **Download complete CSV** 或 Results & export 获取完整数据。

## 看图操作：复核前定位特征数据对象

{{< tutorial-figure src="/tutorial-images/desktop/workflow-saved.png" caption="复核前定位特征数据对象。macOS 0.1.59 共用流程截图，并非 Windows 实机截图。" >}}

1. 选择 Data exploration，核对当前运行与特征数。
2. 在 Data table 或特征探索图选择 ID，再检查可用的强度、MS2 和色谱证据。
3. 保存复核时同时记录运行 ID 和特征 ID；复核标签不代表已从下游计算中移除该特征。
