install.packages("tidyverse")
install.packages("tidyr")
library(tidyverse)
library(tidyr)
library(dplyr)
data("diamonds")
x <- diamonds
head(x)
as_tibble(x)
# dplyr pipe 
as_tibble(diamonds)
# put pipe in data set ###piping###
p1 <- diamonds %>%
  filter(cut == "Ideal")%>%
  select(cut,color,x)%>%
  mutate(y = x*2)
## adding another pipe in data set
p1 <- p1%>%
  mutate(z = x * y)
# p1 <- mutate(p1,z = x*y)
as_tibble(p1)
## tplyr convert data into table class
tbl_df(iris)
# glimpse ###information dense summary of table data
glimpse(iris)
# Add grouping in the in dplyr
iris %>%
  group_by(Species)%>%
  summarise(avg=mean(Sepal.Width))%>%
  arrange(avg)
# Add grouping in the in dplyr 
iris%>%
  group_by(Species)%>%
  summarise(mean = mean(Petal.Length))%>%
  arrange(mean)
# 
find_value <- filter(iris,Sepal.Length > 7)
view(find_value)
#remove duplication from the data
distinct(iris)

d <- sample_frac(iris,0.5,replace = TRUE)
view(d)
as_tibble(d)

e <-sample_n(iris,10,replace = 10)
as_tibble(e)

f <- slice(iris,10:15)
as_tibble(f)

g <- select(iris,Sepal.Length,Petal.Length,Species)
as_tibble(g)
