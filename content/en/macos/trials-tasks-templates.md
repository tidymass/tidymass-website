---
title: "Parameter trials, tasks and templates"
linktitle: "Parameter trials, tasks and templates"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 4
toc: true
commentable: false
editable: false
translationKey: "macos-trials-tasks-templates"
---

[Tutorial contents](/macos/) · Applies to: 0.1.65

## Try parameters on a small subset

Open **Workflows → Raw data processing → Analysis settings → Parameter trial** after importing files.

1. Select 1–5 samples. The initial selection is up to the first three files, not an automatically representative subset; include relevant QCs, groups and batches yourself.
2. Set peak-detection and other processing parameters in **Analysis settings**.
3. Click **Run parameter trial**.
4. Inspect sample/feature counts, missingness, warnings and saved settings.
5. Select a feature under **Inspect trial peak** and click **Show peak shape**.

The selector uses a saved preview of up to 150 features. Complete tables remain in the run directory. The EIC supports zoom, reset and download.

Change parameters and run again to create a separate record. **Compare saved results** compares two runs and their settings. Keep the sample subset consistent when assessing parameter effects.

To apply a successful trial, open its settings snapshot, click **Restore this run’s settings**, review the parameters and run **Process raw data**. Formal processing uses the full imported manifest. A trial does not complete the formal step, unlock downstream analysis or replace existing formal results. Retrying a canceled trial starts its computation again.

## Monitor work

Open **Task center** at the top of the window for the current R operation, elapsed time, logs, memory, cancellation and project task history. Stage-specific progress is not necessarily an overall workflow percentage.

You can close the panel and browse saved summaries, history, annotation tables and already-cached exploration results in the same project. New EIC/MS2 extraction or uncached computations must wait for the current R task. Parameter editing and project switching remain locked. Closing the panel does not cancel the task; use **Cancel task** and wait for its status to update. This interface does not imply multiple simultaneous R analyses.

## Save a workflow template

Above the analysis panels, expand **Workflow templates**, enter **New workflow template name**, then click **Save workflow template**. A template collects parameters for seven analysis stages. It uses current drafts, saved settings or defaults, and records which stages had current successful results. Defaults saved in a template are not a validated method.

In another project, select the **Workflow template**, inspect **Preview settings** and its source version, and click **Apply workflow template**. Configure this project's files, databases, sample choices and comparison groups before running each step.

Templates retain reusable parameters, software version and source-stage records. They omit raw/database paths, sample choices, trial subsets and comparison-group IDs. Export choices are separate. Applying a template changes parameter drafts; it does not execute the workflow, change historical results or bypass prerequisites. Templates are local to this computer's TidyMass user-data directory.
