dev.off()

par(mar = c(5, 5, 1, 1)) #  余白の広さ(下，左，上，右)
par(lwd = 2)   #  線の太さを指定．
par(font = 2) #2=bold
par(family = "meiryo")
library(RColorBrewer)
display.brewer.all() #display all!
display.brewer.pal(9,"YlGnBu") #dont foreget ""!!display.brewer.pal(n, "name")
cols <- brewer.pal(9, "YlOrBr")

bar_flowering <- barplot(flowering_data$average_flowering,
                         col = "#FE9929",
                         xlab = "系統",
                         ylab = "花序数",
                         cex.lab  = 2,       #  軸の説明の字の大きさを設定する
                         cex.axis = 2,      #  軸の数字等（ラベル）の大きさを設定する
                         cex.main = NULL,     #  メインタイトルの字の大きさを設定する
                         ylim = c(0, 30),      # y 軸の両端の値 （座標系を決める）
                         yaxp  = c(0, 30, 6))  # y 軸の両端の目盛の座標と，目盛の間隔の数
abline(h=0)
dev.off()


heikin_oil <- barplot$Oil.
sd_oil <- barplot$oil_sd
par(mfcol = c(3,1))
par(mar = c(1, 5, 0.5, 1)) #  余白の広さ(下，左，上，右)
par(mgp = c(3, 1, 0))    
par(lwd = 1.5)   #  線の太さを指定．
par(font = 1) #2=bold
par(family = "meiryo")
yushi_cols <- brewer.pal(9, "YlOrRd")
bar_oil <- barplot(heikin_oil,
                   col = yushi_cols[7],
                   font =2,
                   ylim = c(0, 75),
                   main = NULL,
                   xlab = "",
                   ylab = "油脂含量 %(g/g)",
                   cex.lab = 2,
                   cex.axis =1.5
                   )
abline(h=0)
bar_oil
arrows(bar_oil, heikin_oil, bar_oil, heikin_oil + sd_oil,angle = 90, length = 0.1)
arrows(bar_oil, heikin_oil, bar_oil, heikin_oil - sd_oil,angle = 90, length = 0.1)

display.brewer.pal(9,"YlOrRd") #dont foreget ""!!display.brewer.pal(n, "name")
sosei.cols <- brewer.pal(9, "YlOrRd")
sosei <- t(barplot[,6:10])	
barplot(sosei, col=c(sosei.cols[3],sosei.cols[4],sosei.cols[5],sosei.cols[6],
                     sosei.cols[8]),
        font = 2,
        xlab = "",
        ylab = "油脂組成",
        main = NULL,
        cex = 1.5,     #  記号の大きさを設定する（標準は１）
        cex.lab  = 2,       #  軸の説明の字の大きさを設定する
        cex.axis = 1.5,      #  軸の数字等（ラベル）の大きさを設定する
        cex.main = 1.8)      #  メインタイトルの字の大きさを設定する
abline(h =0)
dev.off()
       
       
cols = brewer.pal(11,"PRGn")
heikin_pes <- barplot$PEs
sd_pes <- barplot$Pes_sd
bar_pes <- barplot(heikin_pes, 
                   font =2,
                   col = cols[3],
                   ylim = c(0,700),
                   ylab = "ホルボールエステル量",
                   cex.lab =2,
                   cex.axis = 1.5)
arrows(bar_pes, heikin_pes, bar_pes, heikin_pes + sd_pes, angle = 90, length = 0.1)
arrows(bar_pes, heikin_pes, bar_pes, heikin_pes - sd_pes, angle = 90, length = 0.1)
                  abline(h=0)
?col

#w*h = 600*600 <- png *when it's saved

box()	#グラフを囲む



sosei <- t(barplot[,6:10])	
barplot(sosei, col=c(sosei.cols[8],sosei.cols[5],sosei.cols2[12],sosei.cols[4],
                     sosei.cols[1]),
        font = 2,
        xlab = "",
        ylab = "油脂組成",
        main = NULL,
        cex = 1.5,     #  記号の大きさを設定する（標準は１）
        cex.lab  = 2,       #  軸の説明の字の大きさを設定する
        cex.axis = 1.5,      #  軸の数字等（ラベル）の大きさを設定する
        cex.main = 1.8)      #  メインタイトルの字の大きさを設定する
abline(h =0)
