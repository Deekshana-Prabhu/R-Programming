data("iris")

boxplot(
  iris$Sepal.Length,
  main = "Box Plot",
  col = "lightblue"
)

hist(
  iris$Sepal.Length,
  main = "Histogram",
  col = "yellow",
  xlab = "Sepal Length"
)

species_count <- table(iris$Species)

barplot(
  species_count,
  col = c("red","green","blue"),
  main = "Species Count"
)

plot(
  iris$Sepal.Length,
  type = "l",
  col = "blue",
  main = "Line Chart",
  xlab = "Observation",
  ylab = "Sepal Length"
)

plot(
  iris$Sepal.Length,
  iris$Petal.Length,
  pch = 19,
  col = "red",
  main = "Scatter Plot",
  xlab = "Sepal Length",
  ylab = "Petal Length"
)