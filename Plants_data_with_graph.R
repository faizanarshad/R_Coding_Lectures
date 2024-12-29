

library(readxl)
library(ggplot2)



mydata <- read_excel("mydata.xlsx", col_types = c("text", 
                                                  "text", "text", "numeric", "numeric"))

data1 <- mydata
View(data1)
head(data1)
plot(data1 = data,data$conc,data$uptake)

p1<- ggplot(data1)+ geom_jitter(data = data1,aes(x = Plant , y = conc,color = data$Treatment))
p1
p2 <- ggplot(data1)+ geom_jitter(data = data1,aes(x = Treatment , y = conc,color = Plant))+
  labs(
    x = "Treatment",
    y = "Consc Values",
    title = " Plants Data with Types",
    fill = " Plant Type"
  )+scale_fill_brewer(palette = "BrBG",direction = 1)
p2 + theme_dark()
p2 + theme_bw()
summary(data)
cor(data)
cor(data1$conc,data1$uptake, method =  "spearman") #"pearson", "kendall",spearman
cor(data1$conc,data1$uptake, method =  "pearson")
cor(data1$conc,data1$uptake, method =  "kendall")
m <- mean(data1$conc)
s <- sd(data1$conc)
summary(data1$conc)
summary(data1$uptake)
