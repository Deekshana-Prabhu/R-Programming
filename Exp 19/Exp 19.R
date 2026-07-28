advertising <- data.frame(
  
  Spend = c(10,20,30,40,50,60,70,80,90,100),
  
  Sales = c(15,25,32,40,48,60,68,78,85,95)
  
)

print(advertising)

model <- lm(Sales ~ Spend, data = advertising)

print(summary(model))

new_data <- data.frame(Spend = c(25,55,75))

prediction <- predict(model, new_data)

print("Predicted Sales")

print(prediction)

plot(
  advertising$Spend,
  advertising$Sales,
  pch = 19,
  col = "blue",
  main = "Sales vs Spend"
)

abline(model, col = "red", lwd = 2)