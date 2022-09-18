#library necessary 
library(dplyr)

# plot 2

png(filename = "Plot 2.png", width = 480, height = 480)
plot(datetime, as.numeric(as.character(data1$Global_active_power)), 
     type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()