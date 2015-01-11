## Conor woods : Assignment 1 Plot 4

## Set the WD first
setwd("C:/Users/conor/OneDrive/Courses/DataScience/Exploratory Data Analysis/Assignment 1/ExData_Plotting1")

## load the data using the load script
source("loadPowerConsumptionData.R")

## open the png device
png(filename = "plot4.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

## set the row/col structure
par(mfrow = c(2, 2))

## Top left
plot(consumptionData$DateTime, consumptionData$Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")
## Top right
plot(consumptionData$DateTime, consumptionData$Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")
###################
## Bottom left
plot(consumptionData$DateTime, consumptionData$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(consumptionData$DateTime, consumptionData$Sub_metering_2, col = "red")
lines(consumptionData$DateTime, consumptionData$Sub_metering_3, col = "blue")

## Remove the legend border
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

##################
## Bottom Right
plot(consumptionData$DateTime, consumptionData$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(consumptionData)[4])

##close the graphics device to save
dev.off()