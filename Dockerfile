FROM rocker/tidyverse

# Install pandoc for R Markdown
RUN apt-get update && apt-get install -y pandoc

# Manually installing required packages
RUN Rscript -e "install.packages(c('here','knitr','kableExtra'), repos='https://cran.rstudio.com/')"

# Set working directory inside container
WORKDIR /project

# Copy essential folders and files
COPY code code
COPY data data
COPY output output
COPY Makefile .
COPY project_3.Rmd .

# Create report directory
RUN mkdir report

# Run at container start: build and move report
CMD make && mv project_3.html report
