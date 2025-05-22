#!/usr/bin/env Rscript

# List of packages to ensure are installed
required_packages <- c("renv")

# Check and install required packages
new_packages <- required_packages[!sapply(required_packages, requireNamespace, quietly = TRUE)]
if (length(new_packages) > 0) {
  install.packages(new_packages)
}

packages <- c(
  "countdown@0.4.0",
  "fivethirtyeight@0.6.2",
  "gapminder@1.0.0",
  "ggrepel@0.9.6",
  "ggthemes@5.1.0",
  "gt@0.11.1",
  "infer@1.0.8",
  "janitor@2.2.1",
  "kableExtra@1.4.0",
  "latex2exp@0.9.6",
  "markdown@2.0",
  "openintro@2.5.0",
  "pagedown@0.22",
  "palmerpenguins@0.1.1",
  "patchwork@1.3.0",
  "plotly@4.10.4",
  "quarto@1.4.4",
  "reshape2@1.4.4",
  "rsample@1.3.0",
  "showtext@0.9-7",
  "swirl@2.4.5",
  "tidycensus@1.7.1",
  "tidymodels@1.3.0",
  "tigris@2.2.1",
  "unvotes@0.3.0",
  "xaringanthemer@0.4.3",
  "IRkernel@1.3.2"

  # When adding or removing packages, note that the last package in this list
  # should not have a trailing comma, but every other package should.

  # When adding, try first installing the packages within a datahub session to
  # verify that you have valid versions for the snapshotted package repository.

)

renv::install(packages)

devtools::install_github("mdbeckman/dcData", ref="a900560")
devtools::install_github("hadley/emo@3f03b11")
devtools::install_github("andrewpbray/boxofdata@8afd934")
devtools::install_github("stat20/stat20data@2536a78")
