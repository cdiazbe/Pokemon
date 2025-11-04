library(here)
here::i_am("code/04_render_report.R")

rmarkdown::render(
  here::here("project_3.Rmd")
)