# Pokemon with stats

This repository analyzes Pokémon battle statistics, including:

1. Assess whether Pokémon tend to be stronger in attack-oriented or defense-oriented statistics across Pokémon types (Aim 1)
2. Determine whether dual-type Pokémon have higher overall battle-related statistics compared to single-type Pokémon (Aim 2)

## How to Build

- Restore the exact package versions used in this analysis: `make install`
- Build the report: `make project_3.html`

## Folder Structure

- `data/` — Raw Pokémon dataset (`Pokemon.csv`)  
- `code/` — R scripts:  
  - `01_data_cleaning.R` — Cleans the Pokémon dataset  
  - `02_aim1_analysis.R` — Generates the table for Aim 1 (`output/aim1.rds`)  
  - `03_aim2_analysis.R` — Generates the figure for Aim 2 (`output/aim2.png`)  
  - `04_render_report.R` — Renders `project_3.Rmd` into `project_3.html`  
- `output/` — Generated outputs: `aim1.rds` (table), `aim2.png` (figure)  
- `project_3.Rmd` — R Markdown report combining Aims 1 and 2  
- `Makefile` — Automates building outputs and the report
- `renv/` — renv project environment files (`activate.R`, `settings.json`, `.gitignore`)  
- `renv.lock` — Lock file listing exact package versions  
- `.Rprofile` — Project R profile for renv
