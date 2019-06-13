#' ---
#' output: github_document
#' ---

# adding the YAML above will render the R script into a md format which will be correctly displayed on Github.

.libPaths()

library(tidyverse)
library(here)

ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built) %>%
  write_csv("../packages-report/installed-packages.csv")
ipt