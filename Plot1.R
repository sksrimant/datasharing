setwd("C:/Users/srimasr/Desktop/Cousera/Assignment/Exploratory_Analysis/Files")
Electric1 <- read.table("household_power_consumption.txt", sep=";",header = TRUE)
Electric1$Date <- as.Date(Electric1$Date , format= '%d/%m/%Y')
Electric2 <- subset(Electric1, Electric1$Date > "2007-01-31" & Electric1$Date < "2007-02-03")
library(datasets)
Electric2$Global_active_power <- Electric2$Global_active_power <- gsub(",", "", Electric2$Global_active_power)
Electric2$Global_active_power <- as.numeric(Electric2$Global_active_power)
hist(Electric2$Global_active_power,
col="red",
main="Global Active Power", # the main title 
xlab="Global Active Power(Kilowatts)")
dev.copy(png,file= "Plot1.png")
dev.off()


