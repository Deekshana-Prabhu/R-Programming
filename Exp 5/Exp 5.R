data(women)

print(women)

height_factor <- factor(women$height)

print(height_factor)
summary(height_factor)

set.seed(123)

letters_sample <- sample(
  LETTERS[1:5],
  20,
  replace = TRUE
)

factor_letters <- factor(letters_sample)

print(letters_sample)
print(factor_letters)
summary(factor_letters)