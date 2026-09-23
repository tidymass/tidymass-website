---
title: "massdataset — 构建、查看与交换数据集"
linktitle: "massdataset"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 3
toc: true
commentable: false
editable: false
translationKey: "r-package-massdataset"
---

**文档核对版本: 0.99.3** · 2026-09-23

核心 `mass_dataset` 同时保存强度矩阵、样品信息、feature 信息、可选 MS2、注释表和处理历史。矩阵的行是 feature，列是样品；ID 和顺序必须与元数据对应。

处理自己的数据时，分别读取三张表，保留文本 ID，构造数值强度矩阵，并按 sample/feature ID 对齐行列，再调用 `create_mass_dataset()`。下例使用包内数据展示结构。使用 tidy 操作前通过 `activate_mass_dataset()` 明确操作的是样品还是 feature 信息。

通过 `mutate_ms2()` 加入 MS2，先检查离子模式、RT 单位和前体/RT 匹配容差。extract 系列函数用于取出普通表格；`export_mass_dataset()` 用于交换文件；RDS 保留完整对象。MS-DIAL/MZmine、mzTab 和 SummarizedExperiment 转换器各有输入约定，不能把任意 CSV 当作同一种格式。

## 图解：本章操作路线

{{< tutorial-figure src="/tutorial-images/r-package-massdataset-zh.svg" caption="三张表与一个对象。步骤编号表示阅读顺序；此图为流程示意。" >}}

强度矩阵的行是特征、列是样本。行名与 variable_info$variable_id、列名与 sample_info$sample_id 必须一一对应且顺序相同。构建后先检查维度和元数据，再添加 MS2 或注释结果。

## 功能范围

数据构建与校验，样品/feature 编辑筛选、连接合并，MS2 读写，注释和历史提取，缺失值/RSD 汇总及格式转换。

## 使用示例

```r
data("expression_data", package = "massdataset")
data("sample_info", package = "massdataset")
data("variable_info", package = "massdataset")
object <- massdataset::create_mass_dataset(
  expression_data = expression_data,
  sample_info = sample_info,
  variable_info = variable_info
)
head(massdataset::extract_sample_info(object))
head(massdataset::extract_variable_info(object))
saveRDS(object, "dataset.rds")
```

## 函数查询

下面列出已核对源码中导出的 API，包括兼容接口与辅助函数。具体参数以安装版本的 R 帮助为准；例如运行 `help("函数名", package = "massdataset")`。

<details>
<summary>展开导出函数列表</summary>

`activate_mass_dataset`, `adjust_confounder`, `aes`, `arrange`, `case_when`, `cbind_mass_dataset`, `check_annotation_table`, `check_column_name`, `check_mass_dataset`, `check_mass_dataset_class`, `check_object_class`, `convert_mass_dataset2mztab`, `convert_mass_dataset2summarizedexperiment`, `convert_msdial2mass_dataset`, `convert_mztab2mass_dataset`, `convet_mzmine2mass_dataset`, `count`, `create_mass_dataset`, `desc`, `drop_na`, `export_mass_dataset`, `export_mass_dataset4metdna`, `export_ms2_data`, `extract_annotation_table`, `extract_expression_data`, `extract_ms2_data`, `extract_process_info`, `extract_sample_info`, `extract_sample_info_note`, `extract_variable_info`, `extract_variable_info_note`, `fill`, `filter`, `filter_samples`, `filter_variables`, `get_massdataset_version`, `get_mv_number`, `get_sample_id`, `get_sample_number`, `get_variable_id`, `get_variable_number`, `ggplot`, `ggplot_mass_dataset`, `glimpse`, `group_by`, `hello_world`, `intensity_plot`, `left_join`, `left_join_mass_dataset`, `massdataset_conflicts`, `massdataset_logo`, `massdataset_packages`, `match_mz_rt`, `merge_mass_dataset`, `ms2_plot`, `mutate`, `mutate_all`, `mutate_annotation_table`, `mutate_at`, `mutate_mean_intensity`, `mutate_median_intensity`, `mutate_ms2`, `mutate_rsd`, `mutate_sample_na_freq`, `mutate_sample_na_number`, `mutate_sample_zero_freq`, `mutate_sample_zero_number`, `mutate_variable_na_freq`, `mutate_variable_na_number`, `mutate_variable_zero_freq`, `mutate_variable_zero_number`, `n`, `parse_tidymass_parameter`, `pivot_longer`, `plot_ms2`, `pull`, `rbind_mass_dataset`, `read_mgf`, `read_mztab`, `read_mzxml`, `relocate`, `rename`, `rename_with`, `report_parameters`, `select`, `show_missing_values`, `show_mz_rt_plot`, `show_sample_missing_values`, `show_variable_missing_values`, `slice`, `slice_head`, `slice_max`, `slice_min`, `slice_sample`, `slice_tail`, `split_mass_dataset`, `summarise`, `summarise_samples`, `summarize`, `summarize_samples`, `translate_tidymass_parameter`, `transmute`, `update_mass_dataset`, `update_sample_info`, `update_variable_info`, `write_ms2_data`

</details>

[包源码与参考文档](https://github.com/tidymass/massdataset) · [完整工作流](../workflow/)

## 看图操作：阅读包内示例的缺失情况

{{< tutorial-figure src="/tutorial-images/r/missingness.png" caption="阅读包内示例的缺失情况。使用 massdataset 的 expression_data 实际生成：1,000 个特征 × 8 个样本；这些是教学数据。" >}}

1. 左图以 1,000 个特征为分母显示每个样本的缺失比例，应先比较各样本再判断是否异常。
2. 右图汇总每个特征在八个样本中的缺失比例；全部样本都缺失的特征不提供定量证据。
3. 结合诊断选择并记录过滤条件；此图不规定通用阈值。
