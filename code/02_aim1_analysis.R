library(here)
here::i_am("code/02_aim1_analysis.R")

source(here("code/01_data_cleaning.R"))

aim1<-pokemon_prep%>%
  group_by(`Type 1`)%>%
  summarise(mean_attack = mean(total_attack_stats, na.rm = TRUE),
            mean_defense = mean(total_defense_stats, na.rm = TRUE),
            stronger_stat = ifelse(mean_attack > mean_defense, "Attack", "Defense"))

saveRDS(aim1,
        file=here::here("output/aim1.rds"))