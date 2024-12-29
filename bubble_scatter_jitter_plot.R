# Scatter Plot In R

library(ggplot2)

data("cars")
View(cars)
#ggplot scatter graph without line 
ggplot(data = cars,aes(x=speed,y=dist))+geom_point()

ggplot(data = cars,aes(x=speed,y=dist))+geom_point()+
  geom_smooth(method = "lm",se=T,level = 0.95)#geom_smooth code used for the line draw

#scatter plot woth multi lines

data("Orange")
ggplot(Orange,aes(age,circumference,color = Tree))+# color = tree will change the color
  geom_point(size = 4,shape=19)# shape will change ode from 1 to 25

ggplot(Orange,aes(age,circumference,color = Tree))+
  geom_point(size = 4,aes(shape = Tree))# shape will change ode from 1 to 25

ggplot(Orange,aes(age,circumference,color = Tree))+
  geom_point(size = 4,aes(shape = Tree))+
  labs(x = "Age",y= "Circum")+
  geom_line(aes(linetype = Tree),size = 1)+
  ggsave("Scatterplot.pdf")

#bubble plot
install.packages("viridis")
install.packages("viridisLite")
library(viridisLite)
library(viridis)
data("quakes")
nrow(quakes)
ncol(quakes)
q_sample <- quakes[seq(from = 1, to= 1000,by=10),]
nrow(q_sample)
View(q_sample)
ggplot(data = q_sample,aes(x = lat, y = long))+
  geom_point(aes(size = mag,color = mag))+
  guides(size= F)+# size = F,color = F,to remove side guides
  scale_color_viridis_b(option = "B")+
  scale_size_continuous(range = c(1,9))+
  labs(x = "latitude",y= "Logitude",title = "Mag Grape")+
  ggsave("Bubble Plot.pdf")


#jitter_plot in R
data(diamonds)
View(diamonds)
q1_sample <- diamonds[seq(from =1,to=49000,by= 100),]  #increase the data graph will be dense       
#View(q1_sample)
#nrow(q1_sample)
#ggplot(q1_sample,aes(cut,price))+geom_point() # geom_point
ggplot(q1_sample,aes(cut,price,color=cut))+geom_jitter()+
  ggsave("geom_jitter.jpeg")# geom_jitter

