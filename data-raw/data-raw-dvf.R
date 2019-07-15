library(tidyverse)
library(vroom)
library(COGiter)
options(scipen = 999)

#source : https://cadastre.data.gouv.fr/data/etalab-dvf/latest/csv/
  
dvf_r52<-vroom(file = c("extdata/dvf/dvf_2014.csv","extdata/dvf/dvf_2017.csv")) %>% 
  passer_au_cog_a_jour(code_commune = code_commune,garder_info_supra = F,aggrege = F) %>%
  filter(str_sub(DEPCOM,1,2) %in% c("44","49","53","72","85"))

use_data(dvf_r52,overwrite = T)
