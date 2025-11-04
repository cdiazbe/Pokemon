# -----------------------------
project_3.html: code/04_render_report.R project_3.Rmd output/aim1.rds output/aim2.png
	Rscript code/04_render_report.R

# -----------------------------
output/aim1.rds: code/02_aim1_analysis.R code/01_data_cleaning.R
	Rscript code/02_aim1_analysis.R

# -----------------------------
output/aim2.png: code/03_aim2_analysis.R code/01_data_cleaning.R
	Rscript code/03_aim2_analysis.R
