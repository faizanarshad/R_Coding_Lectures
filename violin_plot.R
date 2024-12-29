library(ggplot2)
data(diamonds)
#View(diamonds)
q1_sample <- diamonds[seq(from =1,to=49000,by= 100),]

p <- ggplot(data = q1_sample,aes(cut,price,color = cut))+geom_violin()
p + geom_boxplot(width = 0.1) + geom_jitter(size = 0.5)+
  ggsave("violin_plot.pdf")


p <- ggplot(data = q1_sample,aes(cut,price,fill = cut))+geom_violin()
p + geom_boxplot(width = 0.1) + geom_jitter(size = 0.5)
