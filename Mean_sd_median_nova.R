#import the R buit-in data set
data("mtcars")
# find the mean of a single column
mean(mtcars$mpg)
mean(mtcars$hp)
# find the median of the dataset
median(mtcars$mpg)
median(mtcars$hp)
# find the range of the column
range(mtcars$mpg)
range(mtcars$hp)
# find the total qunatile of the column
quantile(mtcars$mpg)
# to find the 25% quantile 
quantile(mtcars$mpg,.25)
# find the value at the 75% quantile
quantile(mtcars$mpg,.75)
#sd use to find the standard daviation
sd(mtcars$mpg)
# var use to find the variance of particular variable
var(mtcars$mpg)
# lapply label use to find the mean in a range like column 3 to 4
lapply(mtcars[,3:4],mean)
# lapply label use to find the sd(standard deviation) in a range like column 3 to 4
lapply(mtcars[,3:4],sd)
# lapply label use to find the median in a range like column 3 to 4
lapply(mtcars[,3:4],median)
# lapply label use to find the variance in a range like column 3 to 4
lapply(mtcars[,3:4],var)

# summary of the particular data
summary(mtcars)
#anova
#analysis of variance
aov(mtcars$mpg ~ mtcars$hp)
# save the anova in a variable and print the summary 
a1 <- aov(mtcars$mpg ~ mtcars$hp)
summary(a1)
data("iris")
a2 <-aov(iris$Sepal.Length ~ iris$Species)
summary(a2)
TukeyHSD(a2)
a3 <- aov(iris$Sepal.Length ~ iris$Species * iris$Petal.Length)
summary(a3)
TukeyHSD(a3)
