---
title: "Tasks, reruns and version differences"
linktitle: "Tasks, reruns and version differences"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 4
toc: true
commentable: false
editable: false
translationKey: "windows-tasks-and-reruns"
---

[Tutorial contents](/windows/) · Applies to: 0.1.63

## Monitor and cancel

Inspect the running operation and its logs. To stop it, use the interface's cancellation button and wait for the status update. Do not delete project files to stop computation. Reducing worker count can reduce parallel memory requirements.

## Check parameters on a small dataset

Create a separate test project with representative QCs and study samples. Inspect tolerances, peak width and peak shapes there. Then import all samples into the formal project and run with the reviewed settings. Preserve both parameter records; test-project results are not the complete dataset.

## Continue from saved steps

Reopen a project and continue from the first unfinished step with satisfied prerequisites. A successful upstream rerun makes affected downstream results stale. Rerun those stages; Run history retains previous records. Canceled peak detection must be started again, without scan-level resume.

## Differences from macOS 0.1.65

Windows 0.1.63 does not include the newer Parameter trial, Task center, Workflow templates, resizable plot/table workspace or Basic / Quality / Annotation column views. Follow this Windows guide for the shared analysis steps. After upgrading, use the documentation matching the actual installed version.
