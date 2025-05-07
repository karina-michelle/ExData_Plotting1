source('readData.R')

## Read data
data <- readData('./household_power_consumption.txt')

## Plot 2: DateTime vs. Global Active Power
with(data,
     plot(DateTime, Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab=""))
dev.copy(png, "plot2.png")
dev.off()