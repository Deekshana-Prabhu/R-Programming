exam_data <- data.frame(
  
  Name = c("Arun","Bala","Chitra","Divya","Eswar"),
  
  Score = c(78,92,85,67,90),
  
  Attempts = c(1,2,1,3,2),
  
  Qualify = c("Yes","Yes","Yes","No","Yes")
  
)

print("Original Data Frame")

print(exam_data)

print("Scores")

print(exam_data$Score)

print("Second Row")

print(exam_data[2,])

new_row <- data.frame(
  
  Name="Farhan",
  
  Score=88,
  
  Attempts=1,
  
  Qualify="Yes"
  
)

exam_data <- rbind(exam_data,new_row)

exam_data$Grade <- c("B","A","A","C","A","B")

print("Updated Data Frame")

print(exam_data)

sorted_data <- exam_data[order(-exam_data$Score),]

print("Sorted Data")

print(sorted_data)


write.csv(sorted_data,
          "exam_data.csv",
          row.names=FALSE)

print("CSV File Saved Successfully")