---
title: "保存结果与常见问题"
linktitle: "保存结果与常见问题"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 6
toc: true
commentable: false
editable: false
translationKey: "r-shiny-export-and-troubleshooting"
---

依据现有公开教程和 tidymassshiny 1.0.0 公开源码整理，核对日期：2026-09-23。

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/r-shiny-export-and-troubleshooting-zh.svg" caption="结束会话前下载。步骤编号表示阅读顺序；此图为流程示意。" >}}

Success 提示只说明某项操作完成，不代表文件已保存到你的电脑。下载对象与完整结果，检查压缩包，并保留 JOB ID 和设置；预期文件缺失时回到对应模块检查第一条错误。

## 保存完整分析

保留初始化样品表、原始文件引用、中间 `mass_dataset`、清洗和注释对象、完整统计/富集表、图片及参数。本地版查看界面报告的输出目录；在线版记下 JOB ID，在服务保留时间内 **Download All Data**，并确认压缩包能打开且包含需要的结果。

重新载入相容对象或 fMSEA 结果时，确认它对应哪个分析步骤。修改参数不会自动重建已经保存的结果，软件/包版本与数据库来源也应一起保存。

## 常见问题

| 问题 | 处理方法 |
| --- | --- |
| 目录选择器看不到本机 | 远程 R 看到的是服务器目录，改用上传或本地运行 |
| Docker 找不到文件 | 检查主机目录权限和挂载，应用中选择容器路径 |
| 峰表样品不匹配 | 精确比较初始化样品 ID，去掉非强度列 |
| 离子模式或 RT 不正确 | 映射 ion 列，明确分钟/秒 |
| 缺少 R 包 | 从正确来源安装，检查首个实际错误，重启应用 |
| 峰检测很慢 | 检查进度日志，内存不足时减少线程，不反复点 Start |
| 没有 MS2 候选 | 检查模式、前体/RT 关联、数据库及匹配容差 |
| 没有富集结果 | 核对 ID、物种、筛选和背景，空结果可能合理 |
| LLM 评估失败 | 检查可选服务配置，独立保存已经得到的统计结果 |
| 重开后图不一样 | 确认对象版本、样品范围和作图设置 |

反馈问题时提供应用/包版本、本地/Docker/在线运行方式、模块、复现步骤、日志与脱敏输入示例，不分享 API key 或私人样品标识。

[原教程及操作截图](https://www.tidymass.org/tidymassshiny-tutorial/)

## 看图操作：成功运行后保存结果

{{< tutorial-figure src="/tutorial-images/shiny/online_success.png" caption="成功运行后保存结果。图片来自已发布的 TidyMassShiny 教程；不同部署的界面细节可能有差异。" >}}

1. 关闭 Success 提示并核对完成的是哪项操作。历史图中提示指负离子模式参数优化，而非整个研究完成。
2. 使用 Download mass_dataset 下载对象，使用提供的 Download All Data 保存更完整的结果集合。
3. 打开下载内容确认预期文件存在，退出在线会话前记录 JOB ID 和当前服务的保留期限提示。
