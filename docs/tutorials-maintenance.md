# Tutorial maintenance

Updated 2026-09-23. The main navigation has four tutorial entries: R package, MacOS, Windows and R shiny. Chinese and English sources are maintained in parallel.

## Sources and routes

- `content/en/r-package/` and `content/zh/r-package/`: 15 pages per language, covering installation, the 12 packages in the site catalogue, and the complete workflow.
- `content/en/macos/` and `content/zh/macos/`: 10 pages per language, macOS Apple Silicon 0.1.65 preview.
- `content/en/windows/` and `content/zh/windows/`: 10 pages per language, Windows x64 0.1.63 preview.
- `content/en/r-shiny/` and `content/zh/r-shiny/`: 7 pages per language, based on the current public tutorial and tidymassshiny 1.0.0 source.
- `static/tutorial-files/tidymass-workflow.R`: downloadable template. Keep displayed copies in both workflow pages synchronized with this script.
- `config/_default/menus.en.yaml` and `menus.zh.yaml`: four-entry dropdowns.

Historical `/docs/`, `/tidymass-tutorial/` and `/tidymassshiny-tutorial/` addresses remain available. New tutorial routes are `/r-package/`, `/macos/`, `/windows/` and `/r-shiny/`, with `/zh/` counterparts. Existing published Shiny screenshots are referenced at their original site URLs.

## Version evidence

R package versions were checked against official GitHub DESCRIPTION/NAMESPACE files on 2026-09-23: tidymass 2.0.10; massdataset 0.99.3; massconverter 1.0.3; massprocesser 1.0.11; masscleaner 1.0.12; massqc 1.0.8; massdatabase 1.0.14; metid 1.3.2; massstat 1.0.6; metpath 1.0.10; masstools 0.99.1; MetNormalizer 1.3.02. Local development versions can differ (for example local massdatabase 1.0.15). Do not identify local development versions as public releases without checking.

Desktop documentation was checked against the software checkout, its current Chinese help and the Windows 0.1.63 build/validation record. Windows does not document the newer macOS parameter-trial, task-center, workflow-template or column-view interfaces as available features.

The public desktop release endpoint returned 404. Installation pages therefore state the preview status and request a maintainer-supplied installer instead of presenting a private CI artifact as a public download. Replace that text with verified public installer URLs when available.

Shiny references:

- https://www.tidymass.org/tidymassshiny-tutorial/
- https://www.tidymass.org/tidymassshiny-tutorial/upstream-data-processing.html
- https://www.tidymass.org/tidymassshiny-tutorial/downstream-data-processing.html
- https://www.tidymass.org/tidymassshiny-tutorial/tidymass-shiny-toolkits.html
- https://github.com/tidymass/tidymass_shiny/blob/main/DESCRIPTION
- https://github.com/tidymass/tidymass_shiny/blob/main/R/data_import_tbl.R

## Verification

- Hugo 0.122.0 builds all 84 new pages with timezone-qualified publication dates.
- Checked 3,319 internal links across the new pages and all English/Chinese counterpart paths.
- Browser inspection covered the four-entry menu, independent book navigation, Chinese typography, language counterpart links, body/code layout and an existing Shiny screenshot.
- R 4.5.2 with the bundled core packages executed dataset construction, numeric-index subsetting, median imputation/normalization, fold change, t test, BH adjustment, PCA and exact-mass calculation. Packaged example data tested preprocessing; a separate explicitly synthetic six-sample dataset tested statistical mechanics. No synthetic result is presented as biological evidence.
- The complete downloadable workflow parses. Its raw-file processing, reference-database annotation, pathway analysis, software installers, and live Shiny computations were not executed by this documentation task.
- Example code uses `which()` for feature index selection, removes wholly missing features before median imputation, and checks the current massstat requirement of at least three observations per comparison group.

## Future edits and deployment

Edit the Markdown sources in both languages. Preserve matching `translationKey` values. Keep publication dates timezone-qualified so a local early-morning date is not accidentally treated as a future UTC date. Check actual platform builds and APIs before updating version labels.

Render with the project's pinned Hugo 0.122.0 and verify both languages, links, search index and screenshots. The source repository uses its `develop` branch; GitHub Pages is served by `tidymass/tidymass.github.io` on `main`. Inspect both repository states before publishing. Existing local generated-output changes must not be swept into an unrelated commit.
