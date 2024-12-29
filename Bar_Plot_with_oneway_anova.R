#install.packages("multcompView")
#install.packages("dplyr")
library(ggplot2)
library(ggthemes)
library(multcompView)
library(dplyr)
library(stats)

data("chickwts")
View(chickwts)
tibble(chickwts)
mean_data <- group_by(chickwts,feed) %>%
  summarise(weight_mean=mean(weight), sd = sd(weight)) %>%
  arrange(desc(weight_mean))

tibble(mean_data)

anova <- aov(weight ~ feed , data = chickwts)
summary(anova)

tukey <- TukeyHSD(anova)
tukey

group_latters <- multcompLetters4(anova,tukey)
group_latters

group_latters <- as.data.frame.list(group_latters$feed)

mean_data$group_latters <-group_latters$Letters
tibble(mean_data)

p<- ggplot(mean_data,aes(x = feed , y = weight_mean))+
  geom_bar(stat = "identity",aes(fill = feed),show.legend = FALSE,width = 0.6)+
  geom_errorbar(
    aes(ymin = weight_mean-sd,ymax = weight_mean+sd),width = 0.1
  )+
  geom_text(aes(label = group_latters, y = weight_mean + sd),vjust = 0.4)+
  scale_fill_brewer(palette = "BrBG",direction = 1)+
  labs(
    x = "Feed type",
    y = "Chicken Weight (g)",
    title = "Publication Ready Barplot",
    subtitle = "Made by R with Ammar",
    fill = "Feed Type",
  )+
  ylim(0,410)+
  ggthemes::theme_par():p
tiff("barplot.tiff",units = "in",width = 10,height = 6,res = 300,compression = "lzw")
p
dev.off()



