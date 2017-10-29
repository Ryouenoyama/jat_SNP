dev.off()

d <- w_h_data

par(mar = c(1, 1, 1, 1)) #  �]���̍L�����s���Ŏw��D���C���C��C�E�̏��D
par(mgp = c(4, 1.2, 0))        #  �]���̎g�����D�����C���x���C���̈ʒu���s�Ŏw��D
par(lwd = 2)   #  ���̑������w��D
plot(d$w, d$h)

, pch = c(1, 16)[d$sp],  type = 'p',
     xlab = "Diameter at breast height (cm)",
     ylab = "Tree height (cm)",
     main = "Height vs DBH relationships\nin two oak species", # relationships �� in �̊Ԃŉ��s
     cex      = 2.5,     #  �L���̑傫����ݒ肷��i�W���͂P�j
     cex.axis = 1.8,      #  ���̐������i���x���j�̑傫����ݒ肷��
     cex.main = 1.8,     #  ���C���^�C�g���̎��̑傫����ݒ肷��
     xlim = c(0, 30),        # x ���̗��[�̒l �i���W�n�����߂�j
     xaxp  = c(0, 30, 3),    # x ���̗��[�̖ڐ��̍��W�ƁC�ڐ��̊Ԋu�̐�
     ylim = c(0, 1800),      # y ���̗��[�̒l �i���W�n�����߂�j
     yaxp  = c(0, 1500, 3))  # y ���̗��[�̖ڐ��̍��W�ƁC�ڐ��̊Ԋu�̐�

par(font = 3)  # ���̂��C�^���b�N��
legend ("topleft", legend = levels(d$sp), pch = c(1, 16),
        cex = 1.5,    #  �����̎��̑傫����ݒ肷��i�W���� 1)
        pt.cex = 2,   #  �L���̑傫����ݒ肷��i�W���ł� cex �Ɠ����j
        bty = "n",    #  �}��������ޔ��ibox)�̃^�C�v�D "n" ���Ɣ���`���Ȃ��D"o"�i�f�t�H���g�j���ƕ`�� 
        inset = c(0.1, 0.05))  # �ʒu�w��̏ꏊ����Ƃ�]���D�S�̂��P�Ƃ��鑊�Βl�ŁCx�Cy�������̒l����ׂ�D

par(font = 1)        # �C�^���b�N�̐ݒ������
