data(iris)

dim(iris)

summary(iris)

sapply(iris[1:4], sd)

sapply(iris[1:4], quantile)

aggregate(. ~ Species, iris, mean)

table(iris$Species)

iris$Sepal.Category <- cut(iris$Sepal.Length,
                           breaks = c(4, 5, 6, 7, 8),
                           labels = c("Low", "Medium", "High", "Very High"))

table(iris$Sepal.Category, iris$Species)