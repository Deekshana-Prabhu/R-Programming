data("iris")

iris_binary <- subset(
  iris,
  Species != "virginica"
)

iris_binary$Species <- factor(iris_binary$Species)

set.seed(123)

index <- sample(
  1:nrow(iris_binary),
  0.8 * nrow(iris_binary)
)

train <- iris_binary[index, ]

test <- iris_binary[-index, ]

model <- glm(
  Species ~ Petal.Length + Petal.Width,
  data = train,
  family = binomial
)

summary(model)

probability <- predict(
  model,
  test,
  type = "response"
)

prediction <- ifelse(
  probability > 0.5,
  "versicolor",
  "setosa"
)

prediction <- factor(
  prediction,
  levels = levels(test$Species)
)

confusion_matrix <- table(
  Actual = test$Species,
  Predicted = prediction
)

print("Confusion Matrix")

print(confusion_matrix)

accuracy <- sum(diag(confusion_matrix)) /
  sum(confusion_matrix)

cat("Accuracy =", accuracy * 100, "%")