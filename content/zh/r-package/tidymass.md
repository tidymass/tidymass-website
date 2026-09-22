---
title: "tidymass — 安装与管理包体系"
linktitle: "tidymass"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 2
toc: true
commentable: false
editable: false
translationKey: "r-package-tidymass"
---

**文档核对版本: 2.0.10** · 2026-09-23

`tidymass` 用于安装和加载共享数据结构的一组包，实际分析由各功能包完成。先查看包列表、函数名冲突和版本；massdatabase、massconverter 等扩展包按需单独加载。

安装或更新使用新的 R 会话。升级前保存原项目环境，完成后重启 R 并检查代表性数据。更新检查成功不代表每个远程源都已正常访问。

## 功能范围

包发现、函数冲突提示、版本检查与整套更新。

## 使用示例

```r
library(tidymass)
tidymass::tidymass_packages()
tidymass::tidymass_conflicts()
packageVersion("tidymass")
sessionInfo()
# Run deliberately when checking/updating the environment:
# tidymass::check_tidymass_version(packages = "all")
# tidymass::update_tidymass(packages = "all", from = "github")
```

## 函数查询

下面列出已核对源码中导出的 API，包括兼容接口与辅助函数。具体参数以安装版本的 R 帮助为准；例如运行 `help("函数名", package = "tidymass")`。

<details>
<summary>展开导出函数列表</summary>

`check_tidymass_version`, `tidymass_conflicts`, `tidymass_logo`, `tidymass_packages`, `update_tidymass`

</details>

[包源码与参考文档](https://github.com/tidymass/tidymass) · [完整工作流](../workflow/)
