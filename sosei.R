t <- temperature
plot(t$day, t$Site01, type = 'l', ylim = c(-10, 30),  
     col = 'black', xlab = 'Day', ylab = 'Temperature')
par(new = TRUE)   #  上書き
plot(t$day, t$Site02, type = 'l', ylim = c(-10, 30),  #  縦軸の範囲は前の図と同じ．
     col = 'blue', xlab = '', ylab = '')   # 軸のラベルが重ならないように '' を設定
par(new = TRUE)   #  上書き
plot(t$day, t$Site03, type = 'l', ylim = c(-10, 30),  #  縦軸の範囲は前の図と同じ．
     col = 'green', xlab = '', ylab = '')   # 軸のラベルが重ならないように '' を設定


d <- len_width
ncol(d)      #  何列（column）あるか 
nrow(d)      #  何行（row）あるか 
colnames(d)  #  列の名前の一覧
d[['len']]     #  d の，len という名前の列の内容．d$len と同じもの　（ベクトル）
d[[2]]         #  d の，２番めの列の内容　（ベクトル）
x <- d$len < 50 
x
cor.test(d$len, d$width)
cor.test(d$len, d$width) -> c.result
c.result
names(c.result)
windows()             #  描画画面を用意．
par(ps = 18)          #  文字を大きく．
plot(d$len, d$width)  #  字が大きいグラフが描画画面に描かれる． 
png('len_width.png')  #  画像ファイルのデバイスドライバを起動．
plot(d$len, d$width)  #  ファイルに描かれるグラフの字は大きくない．
dev.off()             #  画像ファイルを閉じる．
plot(d$len, d$width)  #  ふたたび字が大きいグラフが描画画面に描かれる． 


d.sp1 <- d[d$sp == 'Sp1',]
d.sp2 <- d[d$sp == 'Sp2',]

#type = 'n' で，プロットはせず軸やラベルだけ描く．
plot(d$len, d$width, type = 'n', xlab = "Length", ylab = "Width")
# それぞれの種の点をプロット．色は番号で指定．cex で大きめの点に．
points(d.sp1$len, d.sp1$width, col = 1, cex = 1.5)
points(d.sp2$len, d.sp2$width, col = 2, cex = 1.5)
par('usr')
dev.off()
par(mfcol =c(3,2))
t <- temperature
plot(t$day, t$Site01, type = 'l', ylim = c(-10, 30),  
     col = 'black', xlab = 'Day', ylab = 'Temperature')
plot(t$day, t$Site02, type = 'l', ylim = c(-10, 30),  #  縦軸の範囲は前の図と同じ．
     col = 'blue', xlab = '', ylab = '')   # 軸のラベルが重ならないように '' を設定
par(new = TRUE)   #  上書き
plot(t$day, t$Site03, type = 'l', ylim = c(-10, 30),  #  縦軸の範囲は前の図と同じ．
     col = 'green', xlab = '', ylab = '')   # 軸のラベルが重ならないように '' を設定

d
par(mfrow = c(1, 2))          #  描画画面を１行２列に分けて使う（横に二つ並べる）
par(mar = c(5.5, 6, 4.1, 2))  #  余白の広さを行数で指定．下，左，上，右の順．
par(mgp = c(4, 1.2, 0))       #  余白の使い方．説明，ラベル，軸の位置を行で指定．
par(lwd = 2)   #  線の太さを指定．

for (i in 1:2) {  # ２種類それぞれについて...
  
  dd <- d[as.numeric(d$sp) == i,]  #  因子 sp が，i番めの水準であるものだけ取り出す．
  sp <-levels(dd$sp)[i]            #  その水準の値（この場合，種名の文字列）
  
  plot(dd$w, dd$h, pch = 16,
       xlab = "Diameter at breast height (cm)",
       ylab = "Tree height (cm)",
       cex = 2.5,              #  記号の大きさを設定する（標準は１）
       cex.lab = 2.0,          #  軸の説明の字の大きさを設定する
       cex.axis = 1.8,         #  軸の数字等（ラベル）の大きさを設定する
       cex.main = 1.8,         #  メインタイトルの字の大きさを設定する
       xlim = c(0, 30),        # x 軸の両端の値 （座標系を決める）
       xaxp  = c(0, 30, 3),    # x 軸の両端の tick の，座標系上の位置と，間隔の数
       ylim = c(0, 1800),      # y 軸の両端の値 （座標系を決める）
       yaxp  = c(0, 1500, 3))  # y 軸の両端の tick の，座標系上の位置と，間隔の数
  
  par(font = 3)  # イタリック
  legend ("topleft", legend = sp, cex = 1.4, bty = "n") # 記号や線種を指定しない
  par(font = 1)  # イタリックを解除
}
d <- read.table ('w_h_data.txt', header = TRUE, sep = "\t")  # データの読み込み

par(oma = c(2.5, 3, 3, 0))    #  デバイス領域内で，作図領域の外に余白をとる．

par(mfrow = c(1, 2))          #  描画画面を１行２列に分けて使う（横に二つ並べる）
par(mar = c(3, 3, 2, 1))
par(mgp = c(4, 1.2, 0))       #  余白の使い方．説明，ラベル，軸の位置を行で指定．
par(lwd = 2)   #  線の太さを指定．

for (i in 1:2) {  # ２種類それぞれについて...
  
  dd <- d[as.numeric(d$sp) == i,]  #  因子 sp が，i番めの水準であるものだけ取り出す．
  sp <-levels(dd$sp)[i]            #  その水準の値（この場合，種名の文字列）
  
  plot(dd$w, dd$h, pch = 16,
       xlab = "", ylab = "",
       cex = 2.5,              #  記号の大きさを設定する（標準は１）
       cex.axis = 1.6,         #  軸の数字等（ラベル）の大きさを設定する
       cex.main = 1.8,         #  メインタイトルの字の大きさを設定する
       xlim = c(0, 30),        # x 軸の両端の値 （座標系を決める）
       xaxp  = c(0, 30, 3),    # x 軸の両端の目盛の，座標系上の位置と，間隔の数
       ylim = c(0, 1800),      # y 軸の両端の値 （座標系を決める）
       yaxp  = c(0, 1500, 3))  # y 軸の両端の目盛の，座標系上の位置と，間隔の数
  
  par(font = 3)
  legend ("topleft", legend = sp, cex = 1.4, bty = "n") # 記号や線種を指定しない
  par(font = 1)
}






