
dev.off()
par(mar = c(5, 5, 5, 5)) #  余白の広さ(下，左，上，右)

par(lwd = 2)   #line width
par(font=2) #2=bold
par(family = "calibri")
data <- both
data2 <- both[,1:4]
pc <- prcomp(data2, scale = T)
biplot(pc, 
       cex=2,
       font =2, 
       cex.lab = 2,
       cex.axis =1.5,
       arrow.len =0.2
       )

