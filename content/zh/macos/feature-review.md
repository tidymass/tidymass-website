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
translationKey: "macos-feature-review"
---

[返回教程目录](/zh/macos/) · 适用版本：0.1.65

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/macos-feature-review-zh.svg" caption="逐个复核特征。步骤编号表示阅读顺序；此图为流程示意。" >}}

若表格意外变空，先 Clear filters。选中特征并加载证据，比较代表性样本中的峰形，保存包含理由的复核备注。Exclude 只是复核标签；若要从后续分析中移除数据，应使用实际清洗或过滤操作。

## 联动工作台

在 **Data exploration** 中选择 m/z–RT distribution。宽窗口中散点图与 feature table 并排显示，中间控件调整宽度；窄窗口会改为上下布局。

点击散点或表格中的 feature 后，选择会同步，表格定位到对应页，下方显示 feature 详情。也可用 **Find feature by ID** 精确查找。

**Previous feature / Next feature** 按当前过滤与排序后的列表移动。聚焦 feature 详情区域后可用左右方向键切换；编辑文字时不会把方向键当作 feature 切换。

## 表格视图

| Column view | 内容 |
| --- | --- |
| Basic | Feature ID、m/z、RT、平均强度、缺失比例 |
| Quality | QC RSD、Sample / Blank、缺失比例、MS2、人工审查状态 |
| Annotation | MS2、候选状态和数据中已有的相关注释字段 |

点击列标题排序。Feature ID 列固定在左侧。可按需要增加少量样品强度列，最多八列，以免大队列表格过宽。

Annotation 视图不会自动生成缺失的注释。没有可用指标时显示 NA，不应当作零或质量合格。

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

## 看图操作：筛选、选择并记录特征复核

{{< tutorial-figure src="/tutorial-images/desktop/feature-browser.png" caption="筛选、选择并记录特征复核。来自 0.1.65 源码工作区的真实组件测试截图；1,200 个特征及质量数值均为合成测试数据。" >}}

1. 通过 Feature filters 缩小显示范围；Clear filters 恢复可用特征。显示筛选不会改写分析矩阵。
2. 点击表格中的特征 ID，图与详情面板同步选中它；图中为 feature_5。Column view 仅改变显示列，不改变数值。
3. 点击 Load intensities, MS2 & candidates，再查看证据标签。Show peak shape 前展开 Samples and extraction settings，核对样本及提取窗口。
4. 在 Review note 记录理由，选择 Review status，再点击 Save review。Export reviews CSV 可保存复核轨迹。测试图中的合成 QC 数值不能用于判断真实实验性能。
