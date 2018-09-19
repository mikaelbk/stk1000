data = "http://www.uio.no/studier/emner/matnat/math/STK1000/data/vitruvisk.txt"
vitruvisk <- read.table(data,header=TRUE)

#AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
summary(vitruvisk)




#BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
# Give the chart file a name.
png(file = "3B.pdf")
plot(vitruvisk$fot.navle,vitruvisk$kroppslengde,xlab="navlehøyde",
ylab="kroppslengde")
# Save the file.
dev.off()


#CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
cor(vitruvisk$fot.navle,vitruvisk$kroppslengde)


#DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD

# Give the chart file a name.
png(file = "3D.pdf")
plot(vitruvisk$fot.navle,vitruvisk$kroppslengde,xlab="navlehøyde",
ylab="kroppslengde")
fit <- lm(kroppslengde ~ fot.navle,data =  vitruvisk)
abline(fit)

# Save the file.
dev.off()



#EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
summary(fit)
print(fit)





#FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
print(38.897 + 121*1.273)




#GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG
summary(vitruvisk)


#HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
png(file = "3H.pdf")
plot(vitruvisk$fot.navle,residuals(fit))
abline(h=0)


# Save the file.
dev.off()






