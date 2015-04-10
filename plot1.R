# Bernard Loo
######################

setwd("c:/A_R")

source("load_data.R")

plot1 <- paste(getwd(), "plot1.png", sep = "")

	png("plot1.png", width = 480, height = 480)
	hist(cargardatos$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
	dev.off()
