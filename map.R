dev.off()
#install.packages("maptools", dependencies = TRUE)
library(maptools)     #tools for making map
library(RColorBrewer) 

setwd("C:/Users/Ryo Uenoyama/Desktop/SNP/R")
clus1 <- read.csv('cl1.csv', header=T, row.names = 1)
clus2 <- read.csv('cl2.csv', header=T, row.names = 1)
clus3 <- read.csv('cl3.csv', header=T, row.names = 1)
clus4 <- read.csv('cl4.csv', header=T, row.names = 1)
clus5 <- read.csv('cl5.csv', header=T, row.names = 1)
clus6 <- read.csv('cl6.csv', header=T, row.names = 1)
clus7 <- read.csv('cl7.csv', header=T, row.names = 1)
clus9 <- read.csv('cl9.csv', header=T, row.names = 1)
clus10 <- read.csv('cl10.csv', header=T, row.names = 1)

View(clus1)
View(clus2)
View(clus3)
View(clus7)

par(mar = c(2, 2, 1, 1)) #  余白の広さ(下，左，上，右)
par(lwd = 2)   #  線の太さを指定．
par(font = 1) #2=bold
par(family = "meiryo")
setwd("C:/Users/Ryo Uenoyama/Desktop/SNP/R/ne_10m_admin_1_states_provinces")
world <- readShapePoly("ne_10m_admin_1_states_provinces.shp") #世界地図のマップデータ(shape file)

xlim <- c(28,28)     #Lat,Long of Botswana
ylim <- c(-22, -24)

plot(world, 
     xlim=c(19.8,28), 
     ylim=c(-27,-18), 
     xlab = "",
     ylab = "",
     cex      = 2,  #letter size
     cex.lab  = 1,  #the size of exp. of th rabel
     cex.axis = 1,  #the size of the number of rabel
     axes=TRUE)  #view of the map

library(RColorBrewer) 
#display.brewer.all() 
#display.brewer.pal(8, "Set1") #showing interested color set



#better think the order
#cluster 5
M <- points(x = clus5$Longitude,
            y = clus5$Latitude,
            col = "#ec6800", #setting for color
            cex = 1.6, #setting for the point's size
            lwd = 2,
            pch=4) 
for(i in M){
  print(i)
}

#cluster 6
M <- points(x = clus6$Longitude,
            y = clus6$Latitude,
            col = "#e6b422", #setting for color
            cex = 1.6, #setting for the point's size
            lwd = 2,
            pch=4) 
for(i in M){
  print(i)
}
#cluster 1
M <- points(x = clus1$Longitude,
            y = clus1$Latitude,
            col = "#3eb370", #setting for color
            cex = 1.6,
            lwd = 2,
            pch=4) #サンプリング地をプロットさせる指示
for(i in M){
  print(i)
}
#cluster 3
M <- points(x = clus3$Longitude,
            y = clus3$Latitude,
            col = "#8d6449", #setting for color
            cex = 1.6, #setting for the point's size
            lwd = 2,
            pch=4) #shape of the dot
for(i in M){
print(i)
}

#cluster 7
M <- points(x = clus7$Longitude,
            y = clus7$Latitude,
            col = "#38a1db", #setting for color
            cex = 1.6, #setting for the point's size
            lwd = 2,
            pch=4) 
for(i in M){
  print(i)
}
#cluster 9
M <- points(x = clus9$Longitude,
            y = clus9$Latitude,
            col = "#ad7d4c", #setting for color
            cex = 1.6, #setting for the point's size
            lwd = 2,
            pch=4) 
for(i in M){
  print(i)
}
#cluster 10
M <- points(x = clus10$Longitude,
            y = clus10$Latitude,
            col = "#cc7eb1", #setting for color
            cex = 1.6, #setting for the point's size
            lwd = 2,
            pch=4) 
for(i in M){
  print(i)
}
