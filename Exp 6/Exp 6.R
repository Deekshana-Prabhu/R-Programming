numbers <- c(5,10,15,20,25)

mat <- matrix(
  1:9,
  nrow = 3,
  byrow = TRUE
)

square <- function(x) {
  return(x^2)
}

my_list <- list(
  Number_Vector = numbers,
  Matrix = mat,
  Square_Function = square
)

print(my_list)

print(my_list$Number_Vector)

print(my_list$Matrix)

print(my_list$Square_Function(12))