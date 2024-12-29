# read data set 

data("iris")

# PCA
#x <- prcomp(iris[-5],center = TRUE,scale. = TRUE)
x <- prcomp(iris[,-5],center = TRUE,scale. = TRUE)
summary(x)
# ggplot2   GROUPING
iris <- cbind(iris,x$x)
ggplot(iris,aes(PC1,PC2,col = iris$Species,fill  = iris$Species))+
  stat_ellipse(geom = "polygon",col = "black",alpha = 0.5 )+
  geom_point(shape = 21,col = "black")+ggsave("PCA_groupping.jpeg")
#PCA PLOT
install.packages("factoextra")
install.packages("FactoMineR")
library(factoextra)
library(FactoMineR)
#PCA Table

#iris.PCA <- PCA(iris[,-5],graph = TRUE,scale.unit= TRUE)

iris.pca <- PCA(iris[,-5],graph = TRUE,scale.unit= TRUE)

iris.pca <- PCA(iris[,-5],graph = TRUE,scale.unit= FALSE)

# scree_plot
fviz_eig(iris.pca,addlabels = TRUE, ylim = c(0,70))

# PCA Plot

fviz_pca_var(iris.pca,col.var = "cos2",gradient.col = c("#FFCC00","#CC9933","#330033"),
             repel = TRUE)+
  labs(title = "PCA of Parameters",x  = "PC1 (49%)",y = "PC2 (23%)",colour = "cos2")+
  ggsave("PCA.png",units = "in", width = 6.5,height = 5.5)
