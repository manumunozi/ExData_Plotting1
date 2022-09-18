#library necsary
library("dplyr")

# plot 3

png(filename = "Plot 2.png", width = 480, height = 480)
plot(datetime, as.numeric(as.character(data1$Sub_metering_1)), 
     type = "l", xlab = "", ylab = "Energy sub metering")
lines(datetime, as.numeric(as.character(data1$Sub_metering_2)),
      type = "l", col = "red")
lines(datetime, data1$Sub_metering_3,
      type = "l", col = "blue")
legend("topright", "(x,y)", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=1, cex = 0.6)
dev.off()
