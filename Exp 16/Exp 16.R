data("USArrests")

print("First 10 Rows")

head(USArrests,10)

print("Summary")

summary(USArrests)

highest_rape <- rownames(USArrests)[which.max(USArrests$Rape)]

print("State with Highest Rape Arrests")

print(highest_rape)

max_murder <- max(USArrests$Murder)

print("Maximum Murder Rate")

print(max_murder)

min_murder <- min(USArrests$Murder)

print("Minimum Murder Rate")

print(min_murder)

print("Correlation Matrix")

cor(USArrests)

median_assault <- median(USArrests$Assault)

high_assault <- USArrests[
  USArrests$Assault > median_assault,
]

print("States above Median Assault")

print(high_assault)

q1 <- quantile(
  USArrests$Murder,
  0.25
)

low_murder <- USArrests[
  USArrests$Murder <= q1,
]

print("Bottom 25% Murder States")

print(low_murder)

hist(
  USArrests$Murder,
  main = "Histogram of Murder",
  xlab = "Murder Rate",
  col = "lightblue"
)

plot(
  density(USArrests$Murder),
  main = "Density Plot of Murder"
)

plot(
  USArrests$Murder,
  USArrests$Assault,
  main = "Murder vs Assault",
  xlab = "Murder",
  ylab = "Assault",
  col = "red",
  pch = 19
)

barplot(
  USArrests$UrbanPop,
  names.arg = rownames(USArrests),
  las = 2,
  col = "orange",
  main = "Urban Population"
)