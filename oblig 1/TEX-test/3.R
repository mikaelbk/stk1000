#importerer 
data = "http://www.uio.no/studier/emner/matnat/math/STK1000/data/vitruvisk.txt"
vitruvisk <- read.table(data,header=TRUE)

#AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
summary(vitruvisk)


#BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
# gjor klart for plotting
png(file = "3B.pdf")
#utforer plottet
plot(vitruvisk$fot.navle,vitruvisk$kroppslengde,xlab="navlehoyde",
ylab="kroppslengde")
# Lagrer filen
dev.off()


#CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
cor(vitruvisk$fot.navle,vitruvisk$kroppslengde)


#DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD

# gjor klart for plotting
png(file = "3D.pdf")
# utforer plottet
plot(vitruvisk$fot.navle,vitruvisk$kroppslengde,xlab="navlehoyde",
ylab="kroppslengde")
# gjor en lineaer tilpasning
fit <- lm(kroppslengde ~ fot.navle,data =  vitruvisk)
abline(fit)

# Save the file.
dev.off()



#EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
# faar en oppsummering
summary(fit)
# printer tilpasningen
print(fit)


#FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
# regner ut forventet verdi ut fra modellen
print(38.897 + 121*1.273)


#GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG
# faar gjennomsnittet
summary(vitruvisk)


#HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
# gjor klart plottet
png(file = "3H.pdf")
# utforer plottet
plot(vitruvisk$fot.navle,residuals(fit))
abline(h=0)
# lagrer filen
dev.off()