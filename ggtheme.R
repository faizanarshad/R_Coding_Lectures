install.packages("ggpval")
install.packages("ggthemes")
library(ggthemes)
library(ggpval)
library(ggplot2)
#import built in data set
data("ToothGrowth")
p <- ggplot(ToothGrowth)+
  aes(x = supp, y = len,fill = supp)+
  geom_boxplot(shape = "circle",width = 0.5)+
  stat_boxplot(geom = "errorbar",width = 0.1)+
  scale_color_viridis_d(option = "inferno",direction = 1)+
  labs(x = "supplement",y = "Length",fill = "supplement") +
  ggthemes::theme_par()+
  facet_wrap(vars(dose)):p
# add p values
add_pval(p,pairs = list(c(1,2)),
         test = "t.test")
help("add_pval")

