#Trying to replicate this tutorial
#https://urbandatapalette.com/post/2021-03-xml-dataframe-r/
#also look at this: https://appsilon.com/r-xml/


library(xml2)
library(xml)
library(tidyverse)

xml_address = "http://www.fehd.gov.hk/english/licensing/license/text/LP_Restaurants_EN.XML"
restaurant_license_xml_raw = read_xml(xml_address)
rl_doc = xml_parse(restaurant_license_xml_raw)


restaurant_license_xml = as_list(read_xml(xml_address))

xml_df = tibble::as_tibble(restaurant_license_xml) %>%
  unnest_longer(DATA)

