library(tidyverse)
library(vroom)
library(tricky)
library(COGiter)
options(scipen = 999)
dvf_2014<-vroom(file = "extdata/valeursfoncieres-2014.txt",delim = "|",locale = locale("fr",decimal_mark = ",", grouping_mark = " "),
                col_types = cols(`Valeur fonciere` = col_double(),
                `Code commune` = col_character(),
                `Code departement` = col_character()
)) %>%
  set_standard_names()
dvf_2017<-vroom(file = "extdata/valeursfoncieres-2017.txt",delim = "|",locale = locale("fr",decimal_mark = ",", grouping_mark = " "),
                col_types = cols(`Valeur fonciere` = col_double(),
                                 `Code commune` = col_character(),
                                 `Code departement` = col_character()
                )) %>%
  set_standard_names()

dvf_r52 <- bind_rows(dvf_2014,dvf_2017) %>%
  mutate(DEPCOM=paste0(code_departement,code_commune) %>% as.factor) %>%
  passer_au_cog_a_jour(garder_info_supra = F,aggrege = F) %>%
  filter(str_sub(DEPCOM,1,2) %in% c("44","49","53","72","85"))

rm(dvf_2014,dvf_2017)
use_data(dvf_r52,overwrite = T)
