pacman::p_load(tidyverse)
bind_rows(
  read_csv("maths.csv"),
  read_csv("comp_agri_engi_envi_soci_phys.csv"),
  read_csv("medi_bioc_deci.csv"),
  read_csv("other_subj.csv")
)->bibliodat

bibliodat %>% write_csv("allrefs.csv")
library(bibliometrix)
csvs<-c("maths.csv","comp_agri_engi_envi_soci_phys.csv","medi_bioc_deci.csv")
M<-convert2df(file ="allrefs.txt",
              dbsource = "scopus",
              format = "csv",)
bibliodat %>% names()

convert2df("response_body.json")

library(rjson)

responses<-fromJSON(file ="https://api.elsevier.com/content/search/scopus?query=TITLE-ABS-KEY%20(%20statistical%20%20AND%20%20inference%20)%20%20AND%20%20(%20LIMIT-TO%20(%20SRCTYPE%20%2C%20%20%22j%22%20)%20%20OR%20%20LIMIT-TO%20(%20SRCTYPE%20%2C%20%20%22b%22%20)%20)%20&apiKey=7f59af901d2d86f78a1fd60c1bf9426a" )

