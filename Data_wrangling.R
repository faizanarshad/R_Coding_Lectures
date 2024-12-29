## r task
# take the murder data set apply some filter 
install.packages("dslabs")
library(tidyr)
library(tidyverse)
library(dslabs)

x <- murders

as_tibble(x)
# make another data set to store the data after applying condition 
region_south <- filter(x,x$region =="South",x$population > 5000000)

#view the new created data set
view(region_south)
# tibble the new data set
as_tibble(region_south)
# add another column to store the values 
x <- mutate(x,weat_region = x$region =="West")
# add another column to add another condition
x <- mutate(x,selected_pop = x$population > 500000)
as_tibble(x)
