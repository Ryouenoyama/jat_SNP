dev.off()

install.packages("prcomp")
library(prcomp)
par(mar = c(5, 5, 1, 1))
par(lwd = 2)
par(font = 2) 
par(family = "meiryo")
setwd("C:/Users/Ryo Uenoyama/Desktop")

data <- read.csv('pca170919.csv', header=T, row.names = 1)
pc = prcomp(data, scale = T)
biplot(prcomp(data, scale. = T),
       xlabs=rep(" ", nrow((data))))
points(pc$x[,1], pc$x[,2],
       pch =16)

dev.off()
biplot(pc)
View(data)

pc$x[,1] #PC1
pc$x[,2] #PC2
plot(pc$x[,1], pc$x[,2])

install.packages("maptools")
#library("maptools")
par(las=1)
plot(x=NULL, type="n", 
     xlab="PC1", ylab="PC2",
     xlim=c(-0,0.5), ylim=c(-0.5,0.5), 
     xaxs="i", yaxs="i", xaxt="n", yaxt="n", bty="n")
axis(side=1, at=seq(-0.5,0.5,0.1), 
     tck=1.0,lty="dotted", 
     lwd=0.5,col="#dddddd", 
     labels=expression(-0.5,-0.4,-0.3,-0.2,-0.1,0,0.1,0.2,0.3,0.4,0.5))
axis(side=2,at=seq(1,1,0.1), 
     tck=1.0,lty="dotted",lwd=0.5, 
     col="#dddddd")

for(i in 1:10)
 {
 arrows(0,0, pc$rotation[i,1], pc$rotation[i,2],
        col="#ff8c00")
 }
pointLabel(x=pc$rotation[,1], y=pc$rotation[,2],
           labels=rownames(pc$rotation),
           cex=1)
box(bty="l")


dev.off()
summary(pc)$importance[2,]
barplot(summary(pc)$importance[2,],
        ylim= c(0, 0.7),
        cex      = 1.5,     #  記号の大きさを設定する（標準は１）
        cex.axis = 1.5,      #  軸の数字等（ラベル）の大きさを設定する
        ylab = "寄与率")
abline(h =0)
#棒グラフ化


pc <- prcomp(dataMat, scale = T)
plot(pc$PC1, pc$PC2, col=loc)
biplot(pc, col=loc)
str(pc)

plot(pc$x[,1], pc$x[,2])

install.packages("rgl", dependencies = TRUE)
library(rgl)
plot3d(pc$x[,1], pc$x[,2], pc$x[,3]) #3次元のグラフを書きたいとき

summary(pc)$importance[2,]
barplot(summary(pc)$importance[2,])  #棒グラフ化
