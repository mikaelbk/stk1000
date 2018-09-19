data ="http://www.uio.no/studier/emner/matnat/math/STK1000/data/wolves.txt"
wolf <- read.table(data,header=TRUE)
# print(c(wolf))
# print(wolf$sex)
# print(wolf$population)
# print(wolf$tpmg)
# print(wolf$cpmg)
summary(wolf)



#BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
# Give the chart file a name.
png(file = "wolf_sex.pdf")
#MAKING TWO COLUMNS
par(mfrow=c(1,2)) 
# Create the histogram.
pie(table(wolf$sex))
# Create the histogram.
pie(table(wolf$population))
# Save the file.
dev.off()




#CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
wolf.lett <- wolf[wolf[,"population"]==1,]
wolf.tungt <- wolf[wolf[,"population"]==2,]




#DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
png(file = "wolf_sammenlign.pdf")
par(mfrow=c(2,2))
hist(wolf.lett$cpmg)
boxplot(wolf.lett$cpmg)
hist(wolf.tungt$cpmg)
boxplot(wolf.tungt$cpmg)
dev.off()




#EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
mean(wolf.lett$cpmg)
median(wolf.lett$cpmg)
sd(wolf.lett$cpmg)
mean(wolf.tungt$cpmg)
median(wolf.tungt$cpmg)
sd(wolf.tungt$cpmg)


#FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
#EHM tekst... 


#GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG
qqnorm(wolf.tungt$cpmg)
qqline(wolf.tungt$cpmg)

qqnorm(wolf.lett$cpmg)
qqline(wolf.lett$cpmg)






