## Conor woods : Assignment 1 Plot 1

##Set the WD first
setwd("C:/Users/conor/OneDrive/Courses/DataScience/Exploratory Data Analysis/Assignment 1/ExData_Plotting1")

##load the data using the load script
source("loadPowerConsumptionData.R")

##open the png device
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

##create hist from the power data
hist(consumptionData$Global_active_power, col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))

##close the graphics device to save
dev.off()