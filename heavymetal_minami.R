dev.off()
str(Zn)

score =c(435, 121, 185, 167,
         283, 286, 196,
         192, 163, 273,
         594, 369, 415,
         135.8, 92.3, 160.8,
         172.1, 78.1, 201.3,
         216, 281, 180,
         337, 224, 323,
         361, 280, 286,
         528, 572, 454,
         302, 250, 281,
         206.7, 89.3, 203.8,
         532, 394, 561,
         506, 578, 602,
         2787, 4391, 3517,
         440, 19873, 8693)
  
group=factor(rep(c("Cont", "cd1", "cd10", "cd100",
                   "Cr1","Cr10", "Cr100", 
                   "Cu1", "Cu10", "Cu100",
                   "Ni1", "Ni10", "Ni100",
                   "Zn1", "Zn10", "zn100"),
                 c(4, 3, 3, 3,
                   3, 3, 3, 3,
                   3, 3, 3, 3,
                   3, 3, 3, 3)))

par(mai=c(1,1.7,1,1)) #余白(底辺、左、上、右)の変更
res <- summary(glht(aov(score ~ group), linfct=mcp(group="Tukey")))
res
plot(res)

boxp_res <- cld(res) #有意差を付与
plot(boxp_res) #結果の表示

?cld


library(multcomp)
data = cd
data	summary(glht(aov(score ~ group), linfct=mcp(group="Dunnett")))

group=factor(data$Control)
group
