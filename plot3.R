# Bernard Loo
######################

setwd("c:/A_R/4 ExpDA")

source("load_data.R")

    png("plot3.png", width = 480, height = 480)
    plot(hpc$Time, hpc$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
    lines(hpc$Time, hpc$Sub_metering_2, type="l", col="red")
    lines(hpc$Time, hpc$Sub_metering_3, type="l", col="blue")
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
    dev.off()


