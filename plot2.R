# Bernard Loo
######################

setwd("c:/A_R/4 ExpDA")

source("load_data.R")

png("plot2.png", width = 480, height = 480)
plot(hpc$Time, hpc$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
