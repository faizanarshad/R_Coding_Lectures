#import built in R dataset
data("USArrests")

#view the head of the dataset
head(USArrests)
# View the data set 
View(USArrests)
# box plot in r
boxplot(Murder ~ UrbanPop,data = USArrests)

boxplot(USArrests$Murder,USArrests$UrbanPop)
#coloring box Plot
boxplot(USArrests$Murder,USArrests$UrbanPop,border = "blue",main="US Crime Data",
        xlab="Murder vs UrbanPop",ylab="Number",col = "red")

boxplot(USArrests$Murder,USArrests$UrbanPop,border = c("#999999", "#E69F00"))
boxplot(USArrests$Murder,USArrests$UrbanPop,col = c("#999999", "#E69F00"))

data("ToothGrowth")
View(ToothGrowth)
head((ToothGrowth))
# Change the color of border using one single color
boxplot(len ~ dose, data = ToothGrowth, frame = FALSE,border = "steelblue")
# Change the color of border.
#  Use different colors for each group
boxplot(len ~ dose, data = ToothGrowth, frame = FALSE,border = c("#999999", "#E69F00", "#56B4E9"))
# Change fill color : single color
boxplot(len ~ dose, data = ToothGrowth, frame = FALSE, col = "steelblue")
# Change fill color: multiple colors
boxplot(len ~ dose, data = ToothGrowth, frame = FALSE, col = c("#999999", "#E69F00", "#56B4E9"))
