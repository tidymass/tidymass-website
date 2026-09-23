---
title: "macOS user guide"
linktitle: "macOS user guide"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 0
toc: true
commentable: false
editable: false
translationKey: "macos-_index"
---

Process and analyze LC-MS data locally with TidyMass Desktop. Start with installation, inputs and the complete workflow, then consult the individual tool guides.

**macOS Apple Silicon 0.1.65** — Preview; updated September 23, 2026. Platform versions are documented separately: newer features on another platform do not imply availability here.

1. [Installation and quick start](getting-started/)
2. [Input data and sample information](input-data/)
3. [Complete untargeted workflow](workflow/)
4. [Parameter trials, tasks and templates](trials-tasks-templates/)
5. [Feature review and interactive plots](feature-review/)
6. [Individual analysis tools](analysis-tools/)
7. [Shiny tools and the R environment](shiny-and-packages/)
8. [Export, save and recover](export-and-recovery/)
9. [Troubleshooting](troubleshooting/)

## Visual guide: the route through this chapter

{{< tutorial-figure src="/tutorial-images/macos-_index-en.svg" caption="Desktop analysis at a glance. Numbers show the reading order; this is a schematic." >}}

Use Workflows for a complete analysis and Analysis tools for one independent task. A project stores runs and their outputs. Start with a small representative dataset to learn the interface, then use a separate project for the full study.

## Walkthrough: Read a saved workflow result

{{< tutorial-figure src="/tutorial-images/desktop/workflow-saved.png" caption="Read a saved workflow result. Actual macOS preview 0.1.59 regression-test screenshot; example counts are test data." >}}

1. Read the left-hand stage list first. The selected stage is Data exploration; Data cleaning is marked Stale because its upstream input changed. Blocked stages still lack an eligible input.
2. In Displayed dataset, check the run identifier, Samples, Features and Missing values. Here 7 of 24 cells are missing, giving 29.17%; this is a matrix-cell percentage, not the percentage of completely missing samples.
3. Select a saved run and expand Settings used for this result. Compare saved results only after checking that their input and parameters answer the same question.
4. After checking the result, rerun stale dependent stages in order. If a stage fails, inspect its first error before changing parameters or repeating the task.
