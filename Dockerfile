FROM rocker/rstudio:4.1.3

RUN apt-get update && \
    apt-get install -y r-base && \
    R -e "install.packages('tidyverse', repos = 'http://cran.us.r-project.org')"

RUN Rscript -e "install.packages('remotes')"
RUN Rscript -e "remotes::install_version('cowsay', '0.8.0')"
