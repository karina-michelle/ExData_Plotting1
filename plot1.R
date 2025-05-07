source('readData.R')

## Only keep data within date range
data <- readData('./household_power_consumption.txt')

## Produce Plot 1: Global Active Power vs. Frequency Histogram
hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.copy(png, "plot1.png")
dev.off()