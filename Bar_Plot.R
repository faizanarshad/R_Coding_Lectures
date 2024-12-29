data("mtcars")
counts <- table(mtcars$vs,mtcars$gear)
head(counts)
barplot(counts,main = "Car distributed by Gear and VS",xlab = "Number of Gears",
        col=c("darkblue","red"),legend = rownames(counts))
barplot(counts,main = "Car distributed by Gear and VS",xlab = "Number of Gears",
        col=c("darkblue","red"),legend = rownames(counts),beside = TRUE)
