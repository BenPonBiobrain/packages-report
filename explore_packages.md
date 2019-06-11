explore\_packages.R
================
bepoaa
2019-06-11

``` r
.libPaths()
```

    ## [1] "/Library/Frameworks/R.framework/Versions/3.5/Resources/library"

``` r
library(tidyverse)
```

    ## ── Attaching packages ────────────────────────────────────────── tidyverse 1.2.1 ──

    ## ✔ ggplot2 3.1.1     ✔ purrr   0.3.2
    ## ✔ tibble  2.1.3     ✔ dplyr   0.8.1
    ## ✔ tidyr   0.8.3     ✔ stringr 1.4.0
    ## ✔ readr   1.3.1     ✔ forcats 0.4.0

    ## ── Conflicts ───────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
library(here)
```

    ## here() starts at /Users/bepoaa/projects/packages-report

``` r
ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built) %>%
  write_csv("../packages-report/installed-packages.csv")
ipt
```

    ## # A tibble: 459 x 5
    ##    Package   LibPath                                 Version Priority Built
    ##    <chr>     <chr>                                   <chr>   <chr>    <chr>
    ##  1 abind     /Library/Frameworks/R.framework/Versio… 1.4-5   <NA>     3.5.0
    ##  2 acepack   /Library/Frameworks/R.framework/Versio… 1.4.1   <NA>     3.5.0
    ##  3 ade4      /Library/Frameworks/R.framework/Versio… 1.7-13  <NA>     3.5.0
    ##  4 akima     /Library/Frameworks/R.framework/Versio… 0.6-2   <NA>     3.5.0
    ##  5 ALDEx2    /Library/Frameworks/R.framework/Versio… 1.14.1  <NA>     3.5.2
    ##  6 ape       /Library/Frameworks/R.framework/Versio… 5.3     <NA>     3.5.2
    ##  7 aRxiv     /Library/Frameworks/R.framework/Versio… 0.5.16  <NA>     3.5.0
    ##  8 askpass   /Library/Frameworks/R.framework/Versio… 1.1     <NA>     3.5.2
    ##  9 assertth… /Library/Frameworks/R.framework/Versio… 0.2.1   <NA>     3.5.2
    ## 10 backports /Library/Frameworks/R.framework/Versio… 1.1.4   <NA>     3.5.2
    ## # … with 449 more rows
