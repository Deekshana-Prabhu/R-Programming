data(ChickWeight)

sort_data <- ChickWeight[order(ChickWeight$weight), ]
head(sort_data)

library(reshape2)
melt_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
head(melt_data)

cast_data <- dcast(melt_data, Diet ~ variable,
                   value.var = "value", fun.aggregate = mean)
print(cast_data)