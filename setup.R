# Run once from the project folder: source("setup.R")

packages <- c("readr", "dplyr", "ggplot2", "scales", "here", "knitr", "rmarkdown", "mgcv")

missing <- setdiff(packages, rownames(installed.packages()))

if (length(missing) > 0) {
  repos <- getOption("repos")
  if (is.null(repos) || identical(unname(repos["CRAN"]), "@CRAN@")) {
    repos <- c(CRAN = "https://cloud.r-project.org")
  }
  install.packages(missing, repos = repos)
}

message("Packages ready: ", paste(packages, collapse = ", "))
