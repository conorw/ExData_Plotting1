##Set the WD first
##setwd("C:/Users/conor/OneDrive/Courses/DataScience/Exploratory Data Analysis/Assignment 1/ExData_Plotting1")

##read in the data
filename <- "./data/household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")

## We only need data for 1/2/2007 and 2/2/2007.
consumptionData <- data[ data$Date == "1/2/2007" | data$Date == "2/2/2007", ]

## Format the dates and times
x <- paste(consumptionData$Date, consumptionData$Time)
consumptionData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")