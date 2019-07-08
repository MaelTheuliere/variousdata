library(tidyverse)
library(vroom)
library(tricky)
library(skimr)
library(readxl)
library(sf)
library(tmap)
data(World)
options(scipen = 999)
sdg<-vroom(file = "extdata/sdg.csv",delim = ",") %>%
  set_standard_names()

sdg_filtrer <- sdg %>%
  select(-`_reporting_type_`) %>%
  mutate(timeperiod=as.character(timeperiod),
         goal=as.character(goal),
         `_bounds_`=ifelse(`_bounds_`=="MP",NA,`_bounds_`)) %>%
  filter_at(vars(starts_with("_")),all_vars(is.na(.))) %>%
  select(-starts_with("_"),-time_detail,-nature)

gdp <- read_csv("extdata/gdp.csv",
                skip=3,
                locale = locale("fr",decimal_mark = ",", grouping_mark = " ")) %>%
  set_standard_names() %>%
  gather(timeperiod,value,var_1960:var_2018) %>%
  mutate(indicator_code="GDP_PER_CAP",
         timeperiod=str_replace(timeperiod,"var_",""),
         indicator="0.0.0",
         target="0.0",
         goal="0",
         source="World Bank",
         footnote="Source : World Bank",
         unit="Constant 2011 international $/capita",
  ) %>%
  filter(timeperiod>=2000) %>%
  rename(seriesdescription=indicator_name,
         seriescode = indicator_code,
         geoareaname=country_name,
         iso_a3=country_code)

# pays_gdp <- gdp %>%
#   select(iso_a3,geoareaname) %>%
#   distinct() %>%
#   rename(country_name = geoareaname)
#
# pays_sdg <- sdg_filtrer %>%
#   select(geoareacode,geoareaname) %>%
#   distinct()


# pays<-World %>%
#   full_join(pays_sdg,
#             by = c("name"="geoareaname")) %>%
#   full_join(pays_gdp,
#             by = c("iso_a3"="iso_a3")) %>%
#   select(iso_a3,name,geoareacode,country_name,continent) %>%
#   st_drop_geometry()
#
# write_csv2(pays,"sysdata/pays_apparie.csv")

iso_a3_geocode <- read_csv("extdata/iso_a3_geocode.csv") %>%
  select(iso_a3,geoareacode,continent)

sdg_pays<-iso_a3_geocode %>%
  inner_join(sdg_filtrer) %>%
  select(-geoareacode)

gdp_pays<-iso_a3_geocode %>%
  inner_join(gdp) %>%
  select(-geoareacode)

long_sdg <- sdg_pays %>% bind_rows(gdp_pays) %>%
  mutate(seriescode=str_to_lower(seriescode)) %>%
  mutate_if(is.character,as.factor)



sdg_indicators <- long_sdg %>%
  select(geoareaname,iso_a3,continent,seriescode,timeperiod,value) %>%
  distinct() %>% # Sert à supprimer les doublons des indicateurs présent sur plusieurs cibles
  spread(seriescode,value)

use_data(sdg_indicators,overwrite = T)
