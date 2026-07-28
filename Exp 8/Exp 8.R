set.seed(123)

random_numbers <- rnorm(100, mean = 50, sd = 10)

print("Random Numbers")

print(random_numbers)

breaks <- seq(20, 80, by = 10)

count <- table(cut(random_numbers, breaks))

print("Frequency Count")

print(count)

summary(random_numbers)