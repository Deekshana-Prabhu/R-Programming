data("Titanic")

print(Titanic)

barplot(
  margin.table(Titanic, c(2,4)),
  beside = TRUE,
  col = c("red","green"),
  legend = c("No","Yes"),
  main = "Survival vs Passenger Class",
  xlab = "Passenger Class",
  ylab = "Count"
)

barplot(
  margin.table(Titanic, c(2,1,4)),
  beside = TRUE,
  col = c("pink","lightblue"),
  legend = c("No","Yes"),
  main = "Survival by Gender"
)

Titanic_df <- as.data.frame(Titanic)

hist(
  Titanic_df$Freq,
  main = "Histogram of Titanic Frequency",
  xlab = "Frequency",
  col = "lightgreen"
)