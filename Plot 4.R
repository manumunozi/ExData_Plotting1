# plot 4

png(filename = "Plot 4.png", width = 480, height = 480)
par(mfrow=c(2,2), mar = c(4,4,3,2)+0.1)
## similar to plot 2
plot(datetime, as.numeric(as.character(data1$Global_active_power)), 
     type = "l", xlab = "", ylab = "Global Active Power")
## voltage plot
plot(datetime, as.numeric(as.character(data1$Voltage)), 
     type = "l", xlab = "datetime", ylab = "Voltage")
## similar to plot 3
plot(datetime, as.numeric(as.character(data1$Sub_metering_1)), 
     type = "l", xlab = "", ylab = "Energy sub metering")
lines(datetime, as.numeric(as.character(data1$Sub_metering_2)),
      type = "l", col = "red")
lines(datetime, data1$Sub_metering_3,
      type = "l", col = "blue")
legend("topright", "(x,y)", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1, cex = 0.5, bty = "n")
## global reactive power plot
plot(datetime, as.numeric(as.character(data1$Global_reactive_power)),
     type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()
