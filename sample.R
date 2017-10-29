dev.off()

d <- w_h_data

par(mar = c(1, 1, 1, 1)) #  余白の広さを行数で指定．下，左，上，右の順．
par(mgp = c(4, 1.2, 0))        #  余白の使い方．説明，ラベル，軸の位置を行で指定．
par(lwd = 2)   #  線の太さを指定．
plot(d$w, d$h)

, pch = c(1, 16)[d$sp],  type = 'p',
     xlab = "Diameter at breast height (cm)",
     ylab = "Tree height (cm)",
     main = "Height vs DBH relationships\nin two oak species", # relationships と in の間で改行
     cex      = 2.5,     #  記号の大きさを設定する（標準は１）
     cex.axis = 1.8,      #  軸の数字等（ラベル）の大きさを設定する
     cex.main = 1.8,     #  メインタイトルの字の大きさを設定する
     xlim = c(0, 30),        # x 軸の両端の値 （座標系を決める）
     xaxp  = c(0, 30, 3),    # x 軸の両端の目盛の座標と，目盛の間隔の数
     ylim = c(0, 1800),      # y 軸の両端の値 （座標系を決める）
     yaxp  = c(0, 1500, 3))  # y 軸の両端の目盛の座標と，目盛の間隔の数

par(font = 3)  # 字体をイタリックに
legend ("topleft", legend = levels(d$sp), pch = c(1, 16),
        cex = 1.5,    #  説明の字の大きさを設定する（標準は 1)
        pt.cex = 2,   #  記号の大きさを設定する（標準では cex と同じ）
        bty = "n",    #  凡例を書込む箱（box)のタイプ． "n" だと箱を描かない．"o"（デフォルト）だと描く 
        inset = c(0.1, 0.05))  # 位置指定の場所からとる余白．全体を１とする相対値で，x，y両方向の値を並べる．

par(font = 1)        # イタリックの設定を解除

