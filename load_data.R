# Bernard Loo 
# to extract only 2007-02-01 and 2007-02-02 and save it 
# as an RDS file in prep for drawing graphs
###########################

setwd("c:/A_R/4 ExpDA")

library(httr) 

newData <- paste(getwd(), "/newData.rds", sep = "")

    rawData <- "household_power_consumption.txt"
    hpc <- read.table(rawData, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
    hpc$Time <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
    hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
    
    #extract only 2007-02-01 and 2007-02-02

    FixPeriod <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d") 
    hpc <- subset(hpc, Date %in% FixPeriod)

    saveRDS(hpc, newData)

