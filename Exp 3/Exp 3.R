# Experiment 3

array3D <- array(
  1:24,
  dim = c(3,4,2),
  dimnames = list(
    Rows = c("R1","R2","R3"),
    Columns = c("C1","C2","C3","C4"),
    Tables = c("Table1","Table2")
  )
)

print(array3D)
print(dim(array3D))