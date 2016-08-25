setwd("C:/Users/srimasr/Desktop/Cousera/Assignment/Exploratory_Analysis/Files")
Electric1 <- read.table("household_power_consumption.txt", sep=";",header = TRUE)
Electric1$Date <- as.Date(Electric1$Date , format= '%d/%m/%Y')
Electric1$Time <- strptime(Electric1$Time, format ='%H:%M:%S')
#Electric1$DateTime <- as.POSIXct(paste(Electric1$Date, Electric1$Time))
Electric2 <- subset(Electric1, Electric1$Date > "2007-01-31" & Electric1$Date < "2007-02-03")
library(datasets)
plot(Electric2$Time, Electric2$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(Electric2$Time, Electric2$Sub_metering_2, col = 'red')
lines(Electric2$Time, Electric2$Sub_metering_3, col = 'blue')
legend("topright",lty=c(1,1),lwd=c(3,3),col= c("black","red","blue"),legend=c("sub_metering1","sub_metering2","sub_metering3"))

dev.copy(png,file= "Plot3.png")
dev.off()


