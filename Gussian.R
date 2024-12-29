install.packages("mclust")
library(mclust)

set.seed(23)
n = 500
x = runif(n)*10
x[sample(1:n, 10)] <- sample(-20:20, 10)
plot(x, col="Brown", type='l', pch=19)

x = scale(x)[,1]
xfit = Mclust(x, G=3, model="V")

summary(xfit)
pred = predict(xfit)
str(pred)

xpred = pred$z[,1]

thr = quantile(xpred, .99)
print(thr)

outliers = which(xpred >= thr)
index = x[outliers]

plot(x, col="brown", type='l', pch=19)
points(outliers,index, pch=19, col="Blue")