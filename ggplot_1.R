#install packages
install.packages("ggplot2")
#import library
library(ggplot2)
# called or stored built in data set into the variable
x <- data("iris")
# plot the data on the graph using the ggplot 
ggplot(data = iris, mapping = aes(y=Sepal.Length,x =Species,
                                  xlab = "Sapel Length", ylab = "Species"),
       horiz = TRUE, ) + geom_point()

# plot the data on the graph using the ggplot 
ggplot(iris,aes(Species, Sepal.Length),
       horiz=TRUE)+geom_point(size = 3)+geom_line()

# plot the data on the graph using the ggplot 
ggplot(iris,aes(Species, Sepal.Length),
       horiz=TRUE)+geom_boxplot()+geom_line()

# plot the data on the graph using the ggplot 
ggplot(iris, aes(Species, Sepal.Length)) +
  geom_boxplot()+
  geom_point(size = 3,colour = "red",alpha=0.5)

# plot the data on the graph using the ggplot  
ggplot(iris, aes(Sepal.Length, Sepal.Width, colour = Species)) + geom_boxplot()

# plot the data on the graph using the ggplot 
ggplot(iris, aes (Sepal.Length, Sepal.Width, fill = Species)) + geom_boxplot() 
+ labs(x="length",y="width",title = "Species Data")

# plot the data on the graph using the ggplot 

ggplot(iris, aes (Sepal.Length, Sepal.Width, fill = Species)) + 
  geom_boxplot() + 
  labs(x="length", y="width", title = "Species Data")+theme_bw()+coord_flip()
+ggsave("ggplot1.tiff",units = "in",width = 8,height = 6,dpi = 300,compression = 'lzw')

ggplot(iris, aes (Sepal.Length, Sepal.Width, fill = Species)) + 
  geom_boxplot() + 
  labs(x="length", y="width", title = "Species Data")+theme_bw()
+ggsave("ggplot1.tiff",units = "in",width = 8,height = 6,dpi = 300,compression = 'lzw')
