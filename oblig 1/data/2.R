# importerer data
data ="http://www.uio.no/studier/emner/matnat/math/STK1000/data/wolves.txt"
# setter dataen inn i 'wolf'
wolf <- read.table(data,header=TRUE)
# summary gir femtallsoppsummering
summary(wolf)

#BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
# gjør klar et plot
png(file = "wolf_sex.pdf")
# her lages det to kolonner
par(mfrow=c(1,2)) 
# lager et kakediagram
pie(table(wolf$sex))
# lager et histogram
pie(table(wolf$population))
# lagrer filen
dev.off()

#CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
# setter den lett jaktede populasjonen inn i wolf.lett
wolf.lett <- wolf[wolf[,"population"]==1,]
# setter den tungt jaktede populasjonen inn i wolf.tungt
wolf.tungt <- wolf[wolf[,"population"]==2,]

#DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
# gjør klar et plot
png(file = "wolf_sammenlign.pdf")
# kommando som gjør at dette går fint
par(mfrow=c(2,2))
# plotter histogram av lett jaktet
hist(wolf.lett$cpmg)
# plotter boxplot av lett jaktet
boxplot(wolf.lett$cpmg)
# plotter histogram av tungt jaktet
hist(wolf.tungt$cpmg)
# plotter boxplot av tungt jaktet
boxplot(wolf.tungt$cpmg)
# lagrer filen
dev.off()

#EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
# får gjennomsnitt for lett
mean(wolf.lett$cpmg)
# får medianen for lett
median(wolf.lett$cpmg)
# får standardavvik for lett
sd(wolf.lett$cpmg)
# får gjennomsnitt for tungt
mean(wolf.tungt$cpmg)
# får gjennomsnitt for tungt
median(wolf.tungt$cpmg)
# får standaravvik for tungt
sd(wolf.tungt$cpmg)

#GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG
png(file = "TUNGT.pdf")
# får qq plot av tungt jaktet
qqnorm(wolf.tungt$cpmg)
# teoretisk normalfordelt
qqline(wolf.tungt$cpmg)
# lagrer
dev.off()

png(file = "LETT.pdf")
# får qq plot av lett jaktet
qqnorm(wolf.lett$cpmg)
# teoretisk normalfordelt
qqline(wolf.lett$cpmg)
# lagrer
dev.off()