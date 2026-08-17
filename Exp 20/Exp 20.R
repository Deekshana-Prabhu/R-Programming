data("ChickWeight")

model <- lm(
  weight ~ Time + Diet,
  data = ChickWeight
)

summary(model)

prediction <- predict(model)

print("Predicted Weight")

head(prediction)

actual <- ChickWeight$weight

mse <- mean((actual - prediction)^2)

rmse <- sqrt(mse)

cat("Mean Squared Error =", mse, "\n")

cat("Root Mean Squared Error =", rmse, "\n")