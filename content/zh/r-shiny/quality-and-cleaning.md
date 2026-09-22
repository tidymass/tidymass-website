---
title: "质量评估与数据清洗"
linktitle: "质量评估与数据清洗"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 3
toc: true
commentable: false
editable: false
translationKey: "r-shiny-quality-and-cleaning"
---

依据现有公开教程和 tidymassshiny 1.0.0 公开源码整理，核对日期：2026-09-23。

## 生成概览

进入 **Overview**，点击 **START**。检查 m/z–RT 分布、按样品/feature 的缺失值、QC RSD、强度分布、PCA 和样品相关性，按分组、批次或进样顺序着色，并保存图与设置。

QC RSD 描述合适定量 QC 中的技术重复性；矩阵总强度不自动等于原始 TIC。发现可疑样品后，结合采集记录调查再决定是否删除。

## 过滤噪声 feature

设置 QC 和生物学组的缺失阈值，运行后检查保留的 feature 数和缺失分布。旧教程中的 QC 20%、组内 50% 是可调整示例，不是通用阈值。没有定量 QC 时不要启用相应过滤条件，并确认当前模块如何组合各组条件。

## 审查异常样品

先生成缺失值与 PCA 图。**By tidymass** 提供缺失率、PC SD、PC MAD、距离等策略；**By myself** 可明确选择。核对样品 ID 和实验原因后执行删除，保存原对象和排除记录。

## 缺失值填补

选择方法并查看参数。kNN 使用邻居数和行列缺失控制；随机森林使用迭代与树数；PPCA 使用主成分数和收敛设置。kNN 的 `maxp` 对应底层算法的最大分块大小，并非比例。界面提供随机种子时应记录。

点击 **START** 并等待结束，检查处理范围是否正确。完全没有有效观测的 feature 不应通过填补伪装成可靠定量结果。

## 归一化与整合

按实验选择方法。SVR、LOESS 依赖合适 QC 与采集信息；PQN、median、mean、total 为样品级方法。检查 keep_scale、optimization、参考值和线程等选项，点击 **Start analysis**，随后 **Show plot** 比较前后表现。

批次处理与归一化分别记录。任何归一化都不能挽救生物学组与批次完全混杂的设计。分别拟合的 PCA 也不能当成同一个固定坐标系比较。

保存清洗对象和诊断图，再进入注释或统计。

[原教程及操作截图](https://www.tidymass.org/tidymassshiny-tutorial/upstream-data-processing.html#data-cleaning)
