---
title: "Analysis tools：独立分析工具"
linktitle: "Analysis tools：独立分析工具"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 6
toc: true
commentable: false
editable: false
translationKey: "macos-analysis-tools"
---

[返回教程目录](/zh/macos/) · 适用版本：0.1.65

点击 **Analysis tools**，再点击对应卡片的 **Open tool**。部分工具创建独立项目，部分工具在自己的页面保存结果。

| 工具 | 主要用途 |
| --- | --- |
| Sample & file checker | 检查样品清单与原始文件是否匹配 |
| Injection sequence designer | 随机化、分批和安排 QC/Blank 进样 |
| Raw chromatograms | TIC、BPC、EIC 和原始扫描谱 |
| Raw data processing | 独立执行峰检测与对齐 |
| Dataset builder & converter | 从表格构建或转换数据集 |
| Data exploration | 探索已有数据集 |
| Data cleaning | 清洗、填补、归一化和批次处理 |
| Metabolite annotation | 对 feature 或查询进行注释 |
| Pathway analysis | 对符合条件的化合物做通路分析 |
| QC report | 输出样品与 feature 质量报告 |
| Targeted peak extractor | 提取预定义 m/z–RT 目标的峰面积与峰形 |

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/macos-analysis-tools-zh.svg" caption="选择对应的独立工具。步骤编号表示阅读顺序；此图为流程示意。" >}}

打开前阅读工具卡片：原始色谱工具需要原始文件，质控报告需要兼容数据对象。独立工具不会自动重跑完整流程；应单独核对它的输入、参数和输出目录。

## Sample & file checker

提供样品 CSV 和原始文件目录，选择匹配列。普通样品清单通常用 `sample_id`；进样计划有重复 QC 时通常用唯一的 `file_name`。

工具检查 mzML、mzXML 和 Thermo RAW 的文件名，不代表能够读取或转换 Thermo RAW 的谱图。匹配去掉扩展名后进行，并区分大小写。检查缺失、重复和未预期文件后，再进行大规模分析。

## Injection sequence designer

最少输入：

```csv
sample_id
S001
S002
S003
```

也可包含 `group`、`position` 或 `vial_position`。

1. 点击 **Import sample CSV**。
2. 设定 batch 数、随机化和随机种子。
3. 设置 Conditioning QC、Pooled QC、Blank、RTQC、MS2 QC 的启用与插入规则。
4. 检查每批的样品数和总进样次数。
5. 导出 running list、metadata 或保存计划 JSON。

随机化是全体研究样品打乱后分批，不是生物学组别的分层平衡设计。加入 QC 后，总进样次数会超过研究样品数。

重复进样必须有唯一文件名。导出的 metadata 使用进样文件名作为 `sample_id`，并保留原样品标识，有助于随后与实际原始文件匹配。

**当前导出是通用进样计划，不保证可直接导入某一版本的 Xcalibur。** 仪器软件要求的列名、方法路径、瓶位和进样量，需要依据该仪器的实际模板确认。

## Raw chromatograms

1. 选择一个或多个 mzML/mzXML，设定 MS level。
2. 点击 **Read TIC / BPC**。
3. 在结果中选择 TIC 或 BPC，默认 TIC。
4. hover 查看 RT；点击色谱位置检查该处的扫描谱，并选择对应样品。
5. 读取后再输入目标离子 m/z、容差和单位，提取 EIC。

输入的是离子 m/z，不是中性分子质量。MS2 模式下的 EIC 表示相应 MS2 扫描中碎片离子的强度随时间变化，不能自动解释为某个特定前体的靶向碎片曲线。

## QC report

输入 `mass_dataset` 的 RDS/RData，设置 QC RSD、缺失率和 Sample / Blank 阈值。报告只评估和标记，不自动删除 feature。

Intensity across injection order 是输入强度矩阵的总强度趋势，不是从原始扫描提取的 TIC。已经归一化或填补的矩阵会影响指标含义。

## Targeted peak extractor

输入目标 CSV：

```csv
target_id,mz,rt
Target_A,195.0877,180
Target_B,300.1234,240
```

RT 单位为秒。选择原始文件、m/z 容差和 RT 积分窗口后运行。

当前方法累加容差内的 MS1 信号，并在固定 RT 窗口用梯形法积分。它不是化合物鉴定，也不会自动拆分共洗脱峰。检查峰形后再解释面积结果。预览可限制样品数，导出范围以工具说明为准。

## 看图操作：选择独立工具

{{< tutorial-figure src="/tutorial-images/desktop/analysis-tools.png" caption="选择独立工具。真实 macOS 0.1.56 预览版截图；后续构建的卡片布局可能变化。" >}}

1. 点击左侧 Analysis tools，先阅读工具标题和输入说明。
2. 正式处理前可用 Sample & file checker 调查文件不匹配；Raw chromatograms 可在完整特征流程之前检查采集信号。
3. 点击目标卡片的 Open tool，创建项目，提供相应文件或对象，核对设置后运行。
4. 使用 Targeted peak extractor 时检查 m/z、RT 窗口和提取的 EIC。固定窗口积分不自动等同于经过验证的定量方法。
