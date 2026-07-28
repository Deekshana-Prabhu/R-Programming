array1 <- matrix(1:12, nrow = 3, byrow = TRUE)
array2 <- matrix(13:24, nrow = 3, byrow = TRUE)

print("Array 1")
print(array1)

print("Array 2")
print(array2)

combined_array <- rbind(array1, array2)

print("Combined Array")

print(combined_array)