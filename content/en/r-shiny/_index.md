---
title: "R shiny user guide"
linktitle: "R shiny user guide"
type: "book"
date: "2026-09-23T00:00:00+08:00"
lastmod: "2026-09-23T00:00:00+08:00"
weight: 0
toc: true
commentable: false
editable: false
translationKey: "r-shiny-_index"
---

Process and analyze LC-MS data through the independent tidymassshiny browser interface. For the desktop application's Shiny tools installer, use the macOS/Windows guide.

The checked public source reports **tidymassshiny 1.0.0**. Hosted deployments and Docker images may use different builds; record the version actually running.

1. [Install or access R Shiny](installation/)
2. [Create a project and import data](inputs-and-processing/)
3. [Assess quality and clean data](quality-and-cleaning/)
4. [Annotation, statistics and enrichment](annotation-and-statistics/)
5. [fMSEA, FPA and database toolkits](toolkits/)
6. [Save results and solve problems](export-and-troubleshooting/)

[Application source](https://github.com/tidymass/tidymass_shiny) · [Original complete tutorial](https://www.tidymass.org/tidymassshiny-tutorial/)

## Visual guide: the route through this chapter

{{< tutorial-figure src="/tutorial-images/r-shiny-_index-en.svg" caption="The Shiny analysis route. Numbers show the reading order; this is a schematic." >}}

Follow the top navigation from project initialization to downstream analysis. Save the project location or hosted JOB ID early. Positive and negative ion modes have separate views; check the active polarity before reading any table or plot.

## Walkthrough: Initialize a Shiny project

{{< tutorial-figure src="/tutorial-images/shiny/project_initiate.png" caption="Initialize a Shiny project. Reproduced from the published TidyMassShiny tutorial; interface details can differ by deployment." >}}

1. Open Initialize project and choose a working directory visible to the R process. Name the study before importing data.
2. Confirm the project is initialized, then choose the input route from Data import. Keep separate projects for independent analyses.
