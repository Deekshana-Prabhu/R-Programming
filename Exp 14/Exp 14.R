data("ChickWeight")

print("First 10 Rows")

head(ChickWeight, 10)

print("Structure")

str(ChickWeight)

print("Summary")

summary(ChickWeight)

sorted_weight <- ChickWeight[order(-ChickWeight$weight), ]

print("Sorted by Weight")

head(sorted_weight)

sorted_diet <- ChickWeight[order(ChickWeight$Diet), ]

print("Sorted by Diet")

head(sorted_diet)

average_weight <- aggregate(
  weight ~ Diet,
  data = ChickWeight,
  mean
)

print("Average Weight by Diet")

print(average_weight)

average_time <- aggregate(
  weight ~ Time,
  data = ChickWeight,
  mean
)

print("Average Weight by Time")

print(average_time)