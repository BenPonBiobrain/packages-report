#' ---
#' output: github_document
#' ---


.libPaths()

library(tidyverse)
library(here)

ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built) %>%
  write_csv("../packages-report/installed-packages.csv")
ipt