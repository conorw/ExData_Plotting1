## Conor woods : Assignment 1 Plot 3

##Set the WD first
setwd("C:/Users/conor/OneDrive/Courses/DataScience/Exploratory Data Analysis/Assignment 1/ExData_Plotting1")

##load the data using the load script
source("loadPowerConsumptionData.R")

##open the png device
png(filename = "plot3.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

#plot the sub metering
plot(consumptionData$DateTime, consumptionData$Sub_metering_1, type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(consumptionData$DateTime, consumptionData$Sub_metering_2, col = "red")
lines(consumptionData$DateTime, consumptionData$Sub_metering_3, col = "blue")

legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)


##close the graphics device to save
dev.off()