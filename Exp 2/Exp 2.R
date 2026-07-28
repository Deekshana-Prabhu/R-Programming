matrix1 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE)
rownames(matrix1) <- c("R1","R2","R3","R4","R5")
colnames(matrix1) <- c("C1","C2","C3","C4")
print(matrix1)

matrix2 <- matrix(1:9, nrow = 3, ncol = 3, byrow = FALSE)
rownames(matrix2) <- c("Row1","Row2","Row3")
colnames(matrix2) <- c("Col1","Col2","Col3")
print(matrix2)

matrix3 <- matrix(c(5,10,15,20), nrow = 2, ncol = 2, byrow = TRUE)
rownames(matrix3) <- c("A","B")
colnames(matrix3) <- c("X","Y")
print(matrix3)