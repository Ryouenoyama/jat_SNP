t <- temperature
plot(t$day, t$Site01, type = 'l', ylim = c(-10, 30),  
     col = 'black', xlab = 'Day', ylab = 'Temperature')
par(new = TRUE)   #  �㏑��
plot(t$day, t$Site02, type = 'l', ylim = c(-10, 30),  #  �c���͈̔͂͑O�̐}�Ɠ����D
     col = 'blue', xlab = '', ylab = '')   # ���̃��x�����d�Ȃ�Ȃ��悤�� '' ��ݒ�
par(new = TRUE)   #  �㏑��
plot(t$day, t$Site03, type = 'l', ylim = c(-10, 30),  #  �c���͈̔͂͑O�̐}�Ɠ����D
     col = 'green', xlab = '', ylab = '')   # ���̃��x�����d�Ȃ�Ȃ��悤�� '' ��ݒ�


d <- len_width
ncol(d)      #  ����icolumn�j���邩 
nrow(d)      #  ���s�irow�j���邩 
colnames(d)  #  ��̖��O�̈ꗗ
d[['len']]     #  d �́Clen �Ƃ������O�̗�̓��e�Dd$len �Ɠ������́@�i�x�N�g���j
d[[2]]         #  d �́C�Q�Ԃ߂̗�̓��e�@�i�x�N�g���j
x <- d$len < 50 
x
cor.test(d$len, d$width)
cor.test(d$len, d$width) -> c.result
c.result
names(c.result)
windows()             #  �`���ʂ�p�ӁD
par(ps = 18)          #  ������傫���D
plot(d$len, d$width)  #  �����傫���O���t���`���ʂɕ`�����D 
png('len_width.png')  #  �摜�t�@�C���̃f�o�C�X�h���C�o���N���D
plot(d$len, d$width)  #  �t�@�C���ɕ`�����O���t�̎��͑傫���Ȃ��D
dev.off()             #  �摜�t�@�C�������D
plot(d$len, d$width)  #  �ӂ����ю����傫���O���t���`���ʂɕ`�����D 


d.sp1 <- d[d$sp == 'Sp1',]
d.sp2 <- d[d$sp == 'Sp2',]

#type = 'n' �ŁC�v���b�g�͂������⃉�x�������`���D
plot(d$len, d$width, type = 'n', xlab = "Length", ylab = "Width")
# ���ꂼ��̎�̓_���v���b�g�D�F�͔ԍ��Ŏw��Dcex �ő傫�߂̓_�ɁD
points(d.sp1$len, d.sp1$width, col = 1, cex = 1.5)
points(d.sp2$len, d.sp2$width, col = 2, cex = 1.5)
par('usr')
dev.off()
par(mfcol =c(3,2))
t <- temperature
plot(t$day, t$Site01, type = 'l', ylim = c(-10, 30),  
     col = 'black', xlab = 'Day', ylab = 'Temperature')
plot(t$day, t$Site02, type = 'l', ylim = c(-10, 30),  #  �c���͈̔͂͑O�̐}�Ɠ����D
     col = 'blue', xlab = '', ylab = '')   # ���̃��x�����d�Ȃ�Ȃ��悤�� '' ��ݒ�
par(new = TRUE)   #  �㏑��
plot(t$day, t$Site03, type = 'l', ylim = c(-10, 30),  #  �c���͈̔͂͑O�̐}�Ɠ����D
     col = 'green', xlab = '', ylab = '')   # ���̃��x�����d�Ȃ�Ȃ��悤�� '' ��ݒ�

d
par(mfrow = c(1, 2))          #  �`���ʂ��P�s�Q��ɕ����Ďg���i���ɓ���ׂ�j
par(mar = c(5.5, 6, 4.1, 2))  #  �]���̍L�����s���Ŏw��D���C���C��C�E�̏��D
par(mgp = c(4, 1.2, 0))       #  �]���̎g�����D�����C���x���C���̈ʒu���s�Ŏw��D
par(lwd = 2)   #  ���̑������w��D

for (i in 1:2) {  # �Q��ނ��ꂼ��ɂ���...
  
  dd <- d[as.numeric(d$sp) == i,]  #  ���q sp ���Ci�Ԃ߂̐����ł�����̂������o���D
  sp <-levels(dd$sp)[i]            #  ���̐����̒l�i���̏ꍇ�C�햼�̕�����j
  
  plot(dd$w, dd$h, pch = 16,
       xlab = "Diameter at breast height (cm)",
       ylab = "Tree height (cm)",
       cex = 2.5,              #  �L���̑傫����ݒ肷��i�W���͂P�j
       cex.lab = 2.0,          #  ���̐����̎��̑傫����ݒ肷��
       cex.axis = 1.8,         #  ���̐������i���x���j�̑傫����ݒ肷��
       cex.main = 1.8,         #  ���C���^�C�g���̎��̑傫����ݒ肷��
       xlim = c(0, 30),        # x ���̗��[�̒l �i���W�n�����߂�j
       xaxp  = c(0, 30, 3),    # x ���̗��[�� tick �́C���W�n��̈ʒu�ƁC�Ԋu�̐�
       ylim = c(0, 1800),      # y ���̗��[�̒l �i���W�n�����߂�j
       yaxp  = c(0, 1500, 3))  # y ���̗��[�� tick �́C���W�n��̈ʒu�ƁC�Ԋu�̐�
  
  par(font = 3)  # �C�^���b�N
  legend ("topleft", legend = sp, cex = 1.4, bty = "n") # �L���������w�肵�Ȃ�
  par(font = 1)  # �C�^���b�N������
}
d <- read.table ('w_h_data.txt', header = TRUE, sep = "\t")  # �f�[�^�̓ǂݍ���

par(oma = c(2.5, 3, 3, 0))    #  �f�o�C�X�̈���ŁC��}�̈�̊O�ɗ]�����Ƃ�D

par(mfrow = c(1, 2))          #  �`���ʂ��P�s�Q��ɕ����Ďg���i���ɓ���ׂ�j
par(mar = c(3, 3, 2, 1))
par(mgp = c(4, 1.2, 0))       #  �]���̎g�����D�����C���x���C���̈ʒu���s�Ŏw��D
par(lwd = 2)   #  ���̑������w��D

for (i in 1:2) {  # �Q��ނ��ꂼ��ɂ���...
  
  dd <- d[as.numeric(d$sp) == i,]  #  ���q sp ���Ci�Ԃ߂̐����ł�����̂������o���D
  sp <-levels(dd$sp)[i]            #  ���̐����̒l�i���̏ꍇ�C�햼�̕�����j
  
  plot(dd$w, dd$h, pch = 16,
       xlab = "", ylab = "",
       cex = 2.5,              #  �L���̑傫����ݒ肷��i�W���͂P�j
       cex.axis = 1.6,         #  ���̐������i���x���j�̑傫����ݒ肷��
       cex.main = 1.8,         #  ���C���^�C�g���̎��̑傫����ݒ肷��
       xlim = c(0, 30),        # x ���̗��[�̒l �i���W�n�����߂�j
       xaxp  = c(0, 30, 3),    # x ���̗��[�̖ڐ��́C���W�n��̈ʒu�ƁC�Ԋu�̐�
       ylim = c(0, 1800),      # y ���̗��[�̒l �i���W�n�����߂�j
       yaxp  = c(0, 1500, 3))  # y ���̗��[�̖ڐ��́C���W�n��̈ʒu�ƁC�Ԋu�̐�
  
  par(font = 3)
  legend ("topleft", legend = sp, cex = 1.4, bty = "n") # �L���������w�肵�Ȃ�
  par(font = 1)
}





