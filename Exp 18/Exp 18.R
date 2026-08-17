data(iris)

boxplot(iris$Sepal.Length, main="Boxplot")

hist(iris$Sepal.Length, main="Histogram")

barplot(table(iris$Species), main="Bar Plot")

plot(iris$Sepal.Length, type="l", main="Line Chart")

plot(iris$Sepal.Length, iris$Petal.Length,
     main="Scatter Plot")