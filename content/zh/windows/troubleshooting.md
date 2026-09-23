---
title: "常见问题"
linktitle: "常见问题"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 9
toc: true
commentable: false
editable: false
translationKey: "windows-troubleshooting"
---

[返回教程目录](/zh/windows/) · 适用版本：0.1.63

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/windows-troubleshooting-zh.svg" caption="定位第一个失败环节。步骤编号表示阅读顺序；此图为流程示意。" >}}

记录版本、项目阶段和第一条错误。先检查文件是否存在及权限，再检查 R 就绪状态与包是否可用。上游结果改变后，重跑依赖它的过期阶段，不要在未改变原因时反复提交同一失败任务。

## 处理步骤或结果

| 现象 | 检查与处理 |
| --- | --- |
| 重跑上游后下游显示 stale | 下游仍依赖旧输入，需要从受影响步骤重新运行；历史结果保留 |
| 取消或重开后不能从内部进度继续 | 当前恢复以保存步骤为单位，不支持峰检测内部续算 |
| 页面显示的 feature 数与导出不同 | 检查当前筛选、分页和预览限制 |
| Exclude 后下游仍有该 feature | 人工 Exclude 是审查标记；实际清洗需另行运行 |
| MS2 / 注释字段为 No 或 NA | 可能未关联谱图或未做注释，不应直接判断“该物质不存在” |
| 修改参数后图没有改变 | 参数影响下一次运行；当前图属于保存的结果 |

## 输入与统计

| 报错或现象 | 检查与处理 |
| --- | --- |
| Sample IDs do not match | 检查文件名去扩展名后的 ID、大小写、前导零、重复与漏行 |
| Group column not found | 将 Group column 设置为样品信息中的真实列名 |
| QC filtering enabled but no QC samples | 核对定量 QC 的 class；没有合适 QC 时关闭依赖 QC 的设置 |
| 统计前仍存在缺失值 | 检查 cleaning 设置、填补方法和当前输入版本 |
| 配对分析报错 | 检查 subject ID，两组应一一对应，不能按行号推断 |
| Pathway analysis 没有结果 | 核对注释 ID、背景和输入筛选；空结果可能合理 |
| 峰形提取找不到文件 | 检查原始文件是否移动、改名或被替换 |

## 运行期间



## Shiny 与 R 包

- **Missing package**：在 R environment 安装正确来源的包，之后重启工具。
- **Invalid R package name**：检查是否把仓库名或 URL 当作包名；包名应以实际包元数据为准。
- **not an exported object**：检查 Manage tool 中的启动模式和函数名。
- 页面文字可读但图片丢失、样式异常：可能是静态资源路径问题，不一定是字符编码错误；保存日志和截图。
- 安装日志出现 warning：区分警告与导致失败的 error，查看最后状态及首个关键失败原因。

## 提交问题时提供什么

请提供软件版本、macOS/Windows 版本、具体工具或 workflow 步骤、运行 ID、复现操作和相关日志。数据问题可附脱敏的样品信息表头与几行示例。

保留出现问题的项目和运行记录，先不要删除缓存或历史结果。日志可能包含本地路径和样品标识，分享前检查其中的敏感信息。

## 看图操作：阅读已保存的流程结果

{{< tutorial-figure src="/tutorial-images/desktop/workflow-saved.png" caption="阅读已保存的流程结果。真实 macOS 0.1.59 预览版回归测试截图；计数来自测试数据。 截图来自 macOS，仅说明共用控件，并非 Windows 安装界面。" >}}

1. 先看左侧阶段列表：当前选中 Data exploration；Data cleaning 标记为 Stale，表示上游输入已改变。Blocked 阶段尚无可用的前置输入。
2. 在 Displayed dataset 核对运行标识、Samples、Features 和 Missing values。图中 24 个矩阵单元中有 7 个缺失，即 29.17%；这不是整份缺失样本的比例。
3. 选择已保存运行，展开 Settings used for this result。比较两份结果前确认它们的输入和参数能够回答同一问题。
4. 复核后按顺序重跑过期的下游阶段；若失败，先检查第一条错误再调整参数或重试。
