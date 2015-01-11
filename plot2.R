## Conor woods : Assignment 1 Plot 2

##Set the WD first
setwd("C:/Users/conor/OneDrive/Courses/DataScience/Exploratory Data Analysis/Assignment 1/ExData_Plotting1")

##load the data using the load script
source("loadPowerConsumptionData.R")

##open the png device
png(filename = "plot2.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

##plot active power over day
plot(consumptionData$DateTime, consumptionData$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")


##close the graphics device to save
dev.off()