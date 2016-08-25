setwd("C:/Users/srimasr/Desktop/Cousera/Assignment/Exploratory_Analysis/Files")
Electric1 <- read.table("household_power_consumption.txt", sep=";",header = TRUE)
Electric1$Date <- as.Date(Electric1$Date , format= '%d/%m/%Y')
Electric1$Time <- strptime(Electric1$Time, format ='%H:%M:%S')
#Electric1$DateTime <- as.POSIXct(paste(Electric1$Date, Electric1$Time))
Electric2 <- subset(Electric1, Electric1$Date > "2007-01-31" & Electric1$Date < "2007-02-03")
library(datasets)
Electric2$Global_active_power <- Electric2$Global_active_power <- gsub(",", "", Electric2$Global_active_power)
Electric2$Global_active_power <- as.numeric(Electric2$Global_active_power)
plot(Electric2$Time ,Electric2$Global_active_power,
     xlab = '', 
     ylab = "Global Active Power (kilowatt)",
     type = 'l')

dev.copy(png,file= "Plot2.png")
dev.off()