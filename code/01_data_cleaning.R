library(here)
here::i_am("code/01_data_cleaning.R")

library(readr)
pokemon<-read_csv("data/Pokemon.csv")

library(tidyverse)
pokemon_prep<-pokemon%>%
  mutate(total_attack_stats = Attack + `Sp. Atk`, # overall strength in attack-oriented moves
         total_defense_stats = Defense + `Sp. Def`, # overall strength in defense-oriented moves
         dual_type=ifelse(!is.na(`Type 2`), 1, 0)) # it is 1 if it has a second type, 0 if it does not
