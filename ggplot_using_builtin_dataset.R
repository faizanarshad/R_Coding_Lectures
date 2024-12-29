# install packages in R
install.packages("writexl")
#import the library of installed packages
library(writexl)
library(ggplot2)
# View the built in data set in R
view() #view all the data set
View(CO2) # view built in CO2 data set 
View(PlantGrowth)
View(iris)
View(mtcars)
View(trees)
View(npk)
# show the first line of data set
head(CO2)
names(CO2)
# use to print the number of rows in data set
nrow(CO2)
# use to print the number of column in the data set
ncol(CO2)

 # write the .xlsx file in the current running folder
write_xlsx(CO2,'mydata.xlsx')
library(ggplot2)
# using ggplot draw the plot in R
ggplot(trees,aes(Girth,Height))+geom_point()+geom_smooth(method = "lm")
