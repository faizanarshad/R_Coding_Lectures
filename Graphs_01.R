data("mtcars")
View(data)
#strip Chart
stripchart(mtcars$mpg)
stripchart(mtcars$mpg ~ mtcars$hp)

#histogram
hist(mtcars$mpg)
hist(mtcars$hp)

#plot
plot(mtcars$mpg,mtcars$hp)

##qqnorm plot
qqnorm(mtcars$mpg)

#barplot
barplot(mtcars$mpg)

# mosicaplot
mosaicplot(~ mtcars$mpg+mtcars$hp)
