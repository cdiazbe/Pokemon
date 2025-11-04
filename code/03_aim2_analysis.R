library(here)
here::i_am("code/03_aim2_analysis.R")

source(here("code/01_data_cleaning.R"))

aim2<-ggplot(data=pokemon_prep,
             mapping=aes(x=factor(dual_type), y=Total, fill=factor(dual_type)))+
  geom_boxplot()+
  scale_x_discrete(labels=c("0"="No", "1"="Yes"))+
  scale_fill_brewer(palette="Set2", guide="none")+
  labs(x="Dual-Type Pokémon",
       y="Total Battle Statistics",
       title="Figure 1: Distribution of Total Battle Statistics by Dual-Type Status")

ggsave(
  filename=here::here("output/aim2.png"),
  plot=aim2,
  device="png",
  width=8,
  height=5)
