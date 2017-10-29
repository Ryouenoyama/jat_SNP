setwd("C:/Users/Ryo Uenoyama/Desktop")
library(readr)
library(arules)
data <- read.csv('association.csv', header=T, row.names = 1)
View(data)
#SNP_DATA <-data[,2:34]
#class(SNP_DATA[,3])
#it's "integr"
#it should be changed to "factor"
data[,1] <- factor(data[,1])
data[,2] <- factor(data[,2])
data[,3] <- factor(data[,3])
data[,4] <- factor(data[,4])
data[,5] <- factor(data[,5])
data[,6] <- factor(data[,6])
data[,7] <- factor(data[,7])
data[,8] <- factor(data[,8])
data[,9] <- factor(data[,9])
data[,10] <- factor(data[,10])
data[,11] <- factor(data[,11])
data[,12] <- factor(data[,12])
data[,13] <- factor(data[,13])
data[,14] <- factor(data[,14])
data[,15] <- factor(data[,15])
data[,16] <- factor(data[,16])
data[,17] <- factor(data[,17])
data[,18] <- factor(data[,18])
data[,19] <- factor(data[,19])
data[,20] <- factor(data[,20])
data[,21] <- factor(data[,21])
data[,22] <- factor(data[,22])
data[,23] <- factor(data[,23])
data[,24] <- factor(data[,24])
data[,25] <- factor(data[,25])
data[,26] <- factor(data[,26])
data[,27] <- factor(data[,27])
data[,28] <- factor(data[,28])
data[,29] <- factor(data[,29])
data[,30] <- factor(data[,30])
data[,31] <- factor(data[,31])
data[,32] <- factor(data[,32])
data[,33] <- factor(data[,33])
data[,34] <- factor(data[,34])
data[,35] <- factor(data[,35])
data[,36] <- factor(data[,36])
data[,37] <- factor(data[,37])
SNP.tran<-as(data, "transactions")
#LIST(SNP.tran[2])
#summary(SNP.tran)

######extracting rules 
SNP.ap<-apriori(SNP.tran,
                parameter = list(supp = 0.12,
                                 conf = 0.5,
                                 maxlen = 5))
######containing "flower_ave=0" in rhs 
asos.sub1 <- subset(SNP.ap,
                   subset=rhs %in% "flower_ave=0"
                   ) 
asos.sub1
inspect(head(sort(asos.sub1, by="supp"), n=10))
inspect(head(sort(asos.sub1, by="lift"),n=10))
inspect(head(sort(asos.sub1, by="conf"),n=10))

######containing "flower" parameter in rhs 
asos.sub2 <- subset(SNP.ap,
                    subset = rhs %pin% "flower") 
inspect(head(sort(asos.sub2, by="lift"),n=10))
inspect(head(sort(asos.sub2, by="lift"),n=10))
inspect(head(sort(asos.sub2, by="conf"),n=10))


########the LIFT is more than 2
########having 2 item sets
########NOT containig "oil_per"
inspect(subset(SNP.ap,
               lift >= 2 & 
               size(items) ==  2 &
               !(items %pin% "oil_per"))
        )

