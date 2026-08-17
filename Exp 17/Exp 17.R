data(Titanic)

barplot(apply(Titanic, c(2, 4), sum),
        beside=TRUE, main="Survival vs Class")

barplot(apply(Titanic, c(1, 4), sum),
        beside=TRUE, main="Survival by Gender")

hist(Titanic[,,,1], main="Histogram", xlab="Age")