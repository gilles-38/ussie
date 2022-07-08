
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ussie

<!-- badges: start -->

[![R-CMD-check](https://github.com/gilles-38/ussie/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/gilles-38/ussie/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of ussie is to help you work with European football leagues
data

## Installation

You can install the development version of ussie from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("gilles-38/ussie")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ussie)
library(dplyr)
#> 
#> Attachement du package : 'dplyr'
#> Les objets suivants sont masqués depuis 'package:stats':
#> 
#>     filter, lag
#> Les objets suivants sont masqués depuis 'package:base':
#> 
#>     intersect, setdiff, setequal, union

italy <- uss_make_matches(engsoccerdata::italy, "Italy")

glimpse(italy)
#> Rows: 25,404
#> Columns: 8
#> $ country       <chr> "Italy", "Italy", "Italy", "Italy", "Italy", "Italy", "I…
#> $ tier          <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,…
#> $ season        <int> 1934, 1934, 1934, 1934, 1934, 1934, 1934, 1934, 1934, 19…
#> $ date          <date> 1934-09-30, 1934-09-30, 1934-09-30, 1934-09-30, 1934-09…
#> $ home          <chr> "Lazio Roma", "Torino FC", "Sampierdarenese", "SSC Napol…
#> $ visitor       <chr> "US Livorno", "Unione Triestina", "Bologna FC", "US Ales…
#> $ goals_home    <int> 6, 3, 2, 0, 4, 0, 3, 1, 1, 1, 2, 4, 2, 2, 3, 2, 2, 2, 0,…
#> $ goals_visitor <int> 1, 1, 1, 1, 1, 2, 0, 2, 1, 1, 1, 0, 2, 1, 1, 0, 1, 1, 1,…
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
