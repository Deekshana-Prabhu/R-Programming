data("airquality")

print("First 6 Rows of airquality Dataset")
head(airquality)

print("Structure of Dataset")
str(airquality)

print("Summary")
summary(airquality)

monthly_average <- aggregate(
  cbind(Ozone, Solar.R, Wind, Temp) ~ Month,
  data = airquality,
  FUN = mean,
  na.rm = TRUE
)

print("Monthly Average")
print(monthly_average)

print("Average Ozone by Month")
aggregate(Ozone ~ Month,
          data = airquality,
          mean,
          na.rm = TRUE)

print("Average Solar Radiation by Month")
aggregate(Solar.R ~ Month,
          data = airquality,
          mean,
          na.rm = TRUE)

print("Average Wind by Month")
aggregate(Wind ~ Month,
          data = airquality,
          mean,
          na.rm = TRUE)

print("Average Temperature by Month")
aggregate(Temp ~ Month,
          data = airquality,
          mean,
          na.rm = TRUE)