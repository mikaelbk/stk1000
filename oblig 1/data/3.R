#importerer 
data = "http://www.uio.no/studier/emner/matnat/math/STK1000/data/vitruvisk.txt"
vitruvisk <- read.table(data,header=TRUE)

#AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
summary(vitruvisk)


#BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
# gjør klart for plotting
png(file = "3B.pdf")
#utfører plottet
plot(vitruvisk$fot.navle,vitruvisk$kroppslengde,xlab="navlehøyde",
ylab="kroppslengde")
# Lagrer filen
dev.off()


#CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
cor(vitruvisk$fot.navle,vitruvisk$kroppslengde)


#DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD

# gjør klart for plotting
png(file = "3D.pdf")
# utfører plottet
plot(vitruvisk$fot.navle,vitruvisk$kroppslengde,xlab="navlehøyde",
ylab="kroppslengde")
# gjør en lineær tilpasning
fit <- lm(kroppslengde ~ fot.navle,data =  vitruvisk)
abline(fit)

# Save the file.
dev.off()



#EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
# får en oppsummering
summary(fit)
# printer tilpasningen
print(fit)


#FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
# regner ut forventet verdi ut fra modellen
print(38.897 + 121*1.273)


#GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG
# får gjennomsnittet
summary(vitruvisk)


#HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
# gjør klart plottet
png(file = "3H.pdf")
# utfører plottet
plot(vitruvisk$fot.navle,residuals(fit))
abline(h=0)
# lagrer filen
dev.off()