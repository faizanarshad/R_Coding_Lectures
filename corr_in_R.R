install.packages("psych")
install.packages("corrplot")
install.packages("RColorBrewer")
library(psych)
library(corrplot)
library(RColorBrewer)

#psych package
data("iris")
x <- corr.test(iris[,-5])
x
pairs.panels(iris[,-5])

#corrplot your database

#x1 <- read_excle("data.xlsx")
#?cor
#m <- cor([-1])

corrplot(m)

corrplot(m,type = "upper",order = "hclust",method = "pie",
         col = brewer.pal(n=8,name = "RdYlBu"))
#mixed corrplot
corrplot.mixed(m,lower.col = "black",number.cex  = 0.8)

corrplot.mixed(m,lower = "sequre",upper = "pie",tl.col = "Red")#lower will change from number,ellipse,squre






