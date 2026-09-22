---
title: "Feature review and interactive plots"
linktitle: "Feature review and interactive plots"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 5
toc: true
commentable: false
editable: false
translationKey: "macos-feature-review"
---

[Tutorial contents](/macos/) · Applies to: 0.1.65

## Browse features

In **Data exploration**, open **m/z–RT distribution**. On macOS 0.1.65, the plot and feature table share a resizable workspace; narrow windows stack them. Selecting a point or row synchronizes the selection and reveals feature details. Use **Find feature by ID** for an exact lookup.

**Previous feature / Next feature** follow the filtered, sorted feature list. Left/right arrow keys work when the detail area is focused, without intercepting normal text editing.

## Table columns

The macOS 0.1.65 **Column view** selector provides **Basic** (m/z, RT, mean intensity, missingness), **Quality** (QC RSD, Sample / Blank, MS2, review state) and **Annotation** (available candidate fields). Sort with column headers; add up to eight sample-intensity columns. These views display existing data and do not create annotations. Missing metrics are NA, not zero or a pass.

## Filter and review

**Feature filters** subset the plot and table using MS2, annotations, m/z, RT, intensity, missingness and available QC/Blank metrics. QC RSD requires at least three valid QC observations. Filters do not change the saved matrix.

Assign **Keep**, **Exclude**, **Needs confirmation**, **Favorite** and notes as appropriate. Click **Save review** and use **Export reviews CSV** to save your decisions. **Exclude** is a label: use **Data cleaning** for an actual downstream exclusion and create a new result.

## Inspect evidence

Depending on the saved input, inspect **Peak evidence**, **Sample intensities**, **Injection drift**, **RT alignment**, **MS2 spectra**, **Annotation candidates** and **MS1 spectrum**. An MS1 scan includes other ions recorded in that scan; it is not a purified spectrum of the selected compound. A high MS2 score does not by itself resolve all structural ambiguity.

Click **Show peak shape**, then expand **Samples and extraction settings** to change samples, m/z tolerance and RT window. The plot is an MS1 EIC in raw RT. Available dashed boundaries come from saved integration evidence. Initial extraction can read raw files and build a local scan cache; subsequent requests can reuse it. Missing or replaced raw files can prevent extraction.

## Plot and table downloads

Drag to zoom; use **Reset view** or double-click to reset. **Download plot** offers the supported formats, dimensions and PNG DPI. **Download CSV**, where present, exports plot data. Read the adjacent information icon: some downloads regenerate the full plot instead of preserving the current zoom.

Use **Download complete CSV** or **Results & export** for complete tables. Pagination and limited previews do not define the full export scope.
