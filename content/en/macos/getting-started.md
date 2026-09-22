---
title: "Installation and quick start"
linktitle: "Installation and quick start"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 1
toc: true
commentable: false
editable: false
translationKey: "macos-getting-started"
---

[Tutorial contents](/macos/) · Applies to: 0.1.65

## Install on macOS

Open the TidyMass DMG, drag **TidyMass** to **Applications**, and open it there. Wait for the **R environment** check to finish. This guide targets the **0.1.65 Apple Silicon preview**. A public installer link has not yet been verified; use the preview installer supplied by the project maintainers and check the version shown in the app. An Intel Mac build is not documented here.

The app includes R and its core packages. You do not need to install R separately for the core workflow. Optional third-party Shiny tools can require additional packages or system libraries.

The preview may be unsigned or unnotarized. If macOS blocks it, verify its source and use the system's **Privacy & Security** prompt to allow that app. Do not disable system-wide security checks.

## Create a project

1. Open **Workflows** and choose the untargeted metabolomics workflow.
2. Enter a project name. Click **Choose location & create** and choose a parent folder.
3. In **Data import**, select mzML/mzXML files and, preferably, sample information.
4. Check sample IDs and groups, then import the files.
5. Continue to **Raw data processing**.

Use a new project folder. Reopen an existing project with **Projects** or **Open project**, selecting the folder containing `project.json`.

## Find your way around

| Entry | Purpose |
| --- | --- |
| Workflows | Run a complete analysis in order |
| Analysis tools | Run an individual analysis or preparation tool |
| Shiny tools | Install and open third-party Shiny apps |
| R environment | Inspect R and manage additional packages |
| Code | Read execution code and records |
| Task center | Inspect the current R task, logs, memory and task history |
| Show settings / Hide settings | Expand or collapse parameters |

A **project** holds analysis records; a **run** is one execution; a **feature** is a detected signal, not automatically an identified compound. Changing parameters affects a new run. Use **Settings used for this result** to inspect how a saved result was produced.

**TidyMass used**, **Computer used** and **Computer total** report different memory quantities. A high system total is not necessarily caused by this app. After your first run, verify sample counts, missingness, peak shapes and warnings. A completed task confirms execution, not scientific validity.
