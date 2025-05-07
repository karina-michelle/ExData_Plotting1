source('readData.R')

par(mfrow=c(2,2), mar=c(4, 4, 2, 1), oma=c(4, 2, 1, 1))
## Plot 1: DateTime vs. Global Active Power
plot(data$DateTime, data$Global_active_power, type="l", ylab="Global Active Power", xlab="")

## Plot 2: DateTime vs. Voltage
with(data,
     plot(DateTime, Voltage, type="l", xlab="datetime"))

## Plot 3: DateTime vs. Sub Metering
plot(data$DateTime, data$Sub_metering_1, type="s", ylab="Energy sub metering", xlab="")
lines(data$DateTime, data$Sub_metering_2,col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright",col=c("black","red","blue"),lty="solid",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex=0.8)

## Plot 4: DateTime vs. Global Reactive Power
with(data,
     plot(DateTime, Global_reactive_power, type="h", xlab="datetime"))

dev.copy(png, "plot4.png")
dev.off()