data(iris)

set.seed(123)
n <- sample(1:nrow(iris), 0.8*nrow(iris))
train <- iris[n, ]
test <- iris[-n, ]

model <- glm(Species ~ Petal.Length + Petal.Width,
             data=train, family=binomial)

pred <- predict(model, test, type="response")
pred <- ifelse(pred > 0.5, "versicolor", "setosa")
 
table(Actual=test$Species, Predicted=pred)