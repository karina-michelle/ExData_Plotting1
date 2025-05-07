source('readData.R')

## Read data
data <- readData('./household_power_consumption.txt')

## Plot 3: DateTime vs. Sub Metering
plot(data$DateTime, data$Sub_metering_1, type="s", ylab="Energy sub metering", xlab="")
lines(data$DateTime, data$Sub_metering_2,col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright",col=c("black","red","blue"),lty="solid",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png, "plot3.png")
dev.off()