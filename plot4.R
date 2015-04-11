# Bernard Loo
######################

setwd("c:/A_R/4 ExpDA")

source("load_data.R")


png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))	

#plot 1
plot(hpc$Time, hpc$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

#plot 2 (top right)
plot(hpc$Time, hpc$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")

#plot 3
plot(hpc$Time, hpc$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(hpc$Time, hpc$Sub_metering_2, type="l", col="red")
lines(hpc$Time, hpc$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))

#plot 4
plot(hpc$Time, hpc$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")

dev.off()
