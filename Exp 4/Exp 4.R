values <- c(10,20,30,40,50,60,70,80)

arr <- array(
  values,
  dim = c(2,2,2),
  dimnames = list(
    Rows = c("R1","R2"),
    Columns = c("C1","C2"),
    Tables = c("T1","T2")
  )
)

print(arr)

print(arr[1,2,1])
print(arr[2,1,2])
print(arr[2,2,2])