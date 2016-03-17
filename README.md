# RLPJ

A R package that wraps the LPJ-GUESS model

## Installing Rlpj

Rlpj depends of three packages:

- zoo
- snow
- Rmpi (only needed for MPI clusters)

We recommend to install first these packages and the install Rlpj. To install Rlpj directly from this repository, please type the following in Rstudio:

    devtools::install_github("biometry/RLPJ/Rlpj", ref = "master", build_vignettes = TRUE)

In case you want to install the dependencies at the same time you have to set the
denpendencies flag to TRUE.

    devtools::install_github("biometry/RLPJ/Rlpj", ref = "master", build_vignettes = TRUE, dependencies = TRUE)


