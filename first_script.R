# First adjutant example
rm(list = ls())

# install.packages("devtools")
# 
# devtools::install_github("amcrisan/Adjutant")

library(adjutant)
pacman::p_load(
  tidyverse,
  tidytext,
  easyPubMed
)


#following example here:
#https://github.com/amcrisan/Adjutant

set.seed(416)

df <- processSearch("(Outbreak OR epidemic OR pandemic) AND genom*", retmax=2000)



# It looks like the query fails now. 
# However there is the package easyPubMed, which should solve this? (perhaps)

this_query <- "age AND period AND cohort"

my_ids <- get_pubmed_ids(this_query)

