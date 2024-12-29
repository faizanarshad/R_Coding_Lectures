#import built in data set 
data("iris")
 #boplot applying on the iris data set.
 boxplot(iris$Sepal.Length ~ iris$Species)
# multiple comparison of mean
 
 #1 Tukey.HSD Test
 install.packages("agricolae")
 library(agricolae)
 help(agricolae)
??agricolae 
model <- aov(Sepal.Length ~ Species,data = iris) 
out <- HSD.test(model,"Species",group = TRUE,console = TRUE,main = "Tukey Test")
plot(out)

#2-LSD.test
model <- aov(Sepal.Length ~ Species,data = iris) 
out <- LSD.test(model,"Species",group = TRUE,console = TRUE,main = "Tukey Test")
plot(out)

#3-Duncan Test
model <- aov(Sepal.Length ~ Species,data = iris) 
out <- duncan.test(model,"Species",group = TRUE,console = TRUE,main = "Tukey Test")
plot(out)

#grouping
#with yes and No value with adding a different attributes
model <- aov(Sepal.Length ~ Species,data = iris) 
out <- duncan.test(model,"Species",group = TRUE,console = TRUE,main = "Tukey Test")
plot(out)
out <- duncan.test(model,c("Crop","water"),group = TRUE,console = TRUE,main = "Tukey Test")
#les-2 if both values not appearing
plot(out,les=2,horiz = TRUE)
# making an hd graph using jpeg
jpeg(file= "tuckey test.tiff",
     width = 6,height = 4,units = "in",res = 600)
boxplot(Sepal.Length ~ Species,data = iris)
dev.off()
