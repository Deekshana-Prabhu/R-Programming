data(USArrests)

summary(USArrests)

rownames(USArrests)[which.max(USArrests$Rape)]

max(USArrests$Murder)
min(USArrests$Murder)

cor(USArrests)

USArrests[USArrests$Assault > median(USArrests$Assault), ]

USArrests[USArrests$Murder <= quantile(USArrests$Murder, 0.25), ]

hist(USArrests$Murder)

plot(density(USArrests$Murder))

plot(USArrests$Murder, USArrests$Assault)

barplot(USArrests$Murder)