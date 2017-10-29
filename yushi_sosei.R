dev.off()

par(mar = c(5, 5, 1, 1)) #  �]���̍L��(���C���C��C�E)
par(lwd = 2)   #  ���̑������w��D
par(font = 2) #2=bold
par(family = "meiryo")
library(RColorBrewer)
display.brewer.all() #display all!
display.brewer.pal(9,"YlGnBu") #dont foreget ""!!display.brewer.pal(n, "name")
cols <- brewer.pal(9, "YlOrBr")

bar_flowering <- barplot(flowering_data$average_flowering,
                         col = "#FE9929",
                         xlab = "�n��",
                         ylab = "�ԏ���",
                         cex.lab  = 2,       #  ���̐����̎��̑傫����ݒ肷��
                         cex.axis = 2,      #  ���̐������i���x���j�̑傫����ݒ肷��
                         cex.main = NULL,     #  ���C���^�C�g���̎��̑傫����ݒ肷��
                         ylim = c(0, 30),      # y ���̗��[�̒l �i���W�n�����߂�j
                         yaxp  = c(0, 30, 6))  # y ���̗��[�̖ڐ��̍��W�ƁC�ڐ��̊Ԋu�̐�
abline(h=0)
dev.off()


heikin_oil <- barplot$Oil.
sd_oil <- barplot$oil_sd
par(mfcol = c(3,1))
par(mar = c(1, 5, 0.5, 1)) #  �]���̍L��(���C���C��C�E)
par(mgp = c(3, 1, 0))    
par(lwd = 1.5)   #  ���̑������w��D
par(font = 1) #2=bold
par(family = "meiryo")
yushi_cols <- brewer.pal(9, "YlOrRd")
bar_oil <- barplot(heikin_oil,
                   col = yushi_cols[7],
                   font =2,
                   ylim = c(0, 75),
                   main = NULL,
                   xlab = "",
                   ylab = "�����ܗ� %(g/g)",
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
        ylab = "�����g��",
        main = NULL,
        cex = 1.5,     #  �L���̑傫����ݒ肷��i�W���͂P�j
        cex.lab  = 2,       #  ���̐����̎��̑傫����ݒ肷��
        cex.axis = 1.5,      #  ���̐������i���x���j�̑傫����ݒ肷��
        cex.main = 1.8)      #  ���C���^�C�g���̎��̑傫����ݒ肷��
abline(h =0)
dev.off()
       
       
cols = brewer.pal(11,"PRGn")
heikin_pes <- barplot$PEs
sd_pes <- barplot$Pes_sd
bar_pes <- barplot(heikin_pes, 
                   font =2,
                   col = cols[3],
                   ylim = c(0,700),
                   ylab = "�z���{�[���G�X�e����",
                   cex.lab =2,
                   cex.axis = 1.5)
arrows(bar_pes, heikin_pes, bar_pes, heikin_pes + sd_pes, angle = 90, length = 0.1)
arrows(bar_pes, heikin_pes, bar_pes, heikin_pes - sd_pes, angle = 90, length = 0.1)
                  abline(h=0)
?col

#w*h = 600*600 <- png *when it's saved

box()	#�O���t���͂�



sosei <- t(barplot[,6:10])	
barplot(sosei, col=c(sosei.cols[8],sosei.cols[5],sosei.cols2[12],sosei.cols[4],
                     sosei.cols[1]),
        font = 2,
        xlab = "",
        ylab = "�����g��",
        main = NULL,
        cex = 1.5,     #  �L���̑傫����ݒ肷��i�W���͂P�j
        cex.lab  = 2,       #  ���̐����̎��̑傫����ݒ肷��
        cex.axis = 1.5,      #  ���̐������i���x���j�̑傫����ݒ肷��
        cex.main = 1.8)      #  ���C���^�C�g���̎��̑傫����ݒ肷��
abline(h =0)