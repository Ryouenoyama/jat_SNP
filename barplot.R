dev.off()
par(font=2) #2=bold
par(lwd=2)
par(family = "calibri") #letter
setwd("C:/Users/Ryo Uenoyama/Desktop/SNP")
data <- read.csv('flowering_accession.csv', header=T, row.names = 1)
#View(data)
barplot(height=data$flower,
        ylim =c(0, 30), #Y軸の表示範囲の指定．ベクトルで指定
        cex.axis = 1.8, #Y軸ラベルの大きさ
        tcl=0.4,        #内向きメモリ
        col = "#fabf14",
        )
box()                   #かこい
