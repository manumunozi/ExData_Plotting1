
# loading data from local drive
data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
data$Date <- as.Date(data$Date,"%d/%m/%Y")
# creating a subset with only the date we need

data1 <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")

# Getting date and time
datetime <- strptime(paste(data1$Date,as.character(data1$Time)),"%Y-%m-%d %H:%M:%S")

# plot and save png 1
png(filename = "Plot 1.png", width = 480, height = 480)
hist(as.numeric(as.character(data1$Global_active_power)),
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()