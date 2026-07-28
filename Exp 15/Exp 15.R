data("iris")

print("Dimensions")

dim(iris)

print("Structure")

str(iris)

print("Summary")

summary(iris)

print("Standard Deviation")

sapply(iris[1:4], sd)

print("Quantiles")

sapply(iris[1:4], quantile)

print("Mean Values by Species")

aggregate(. ~ Species,
          data = iris,
          mean)

pivot_table <- aggregate(
  cbind(Sepal.Length,
        Sepal.Width,
        Petal.Length,
        Petal.Width) ~ Species,
  data = iris,
  mean
)

print("Pivot Table")

print(pivot_table)

iris$Sepal_Category <- ifelse(
  iris$Sepal.Length < 5,
  "Short",
  ifelse(
    iris$Sepal.Length < 6.5,
    "Medium",
    "Long"
  )
)

print("Category Count")

table(iris$Sepal_Category)

print("Species vs Category")

table(iris$Species,
      iris$Sepal_Category)