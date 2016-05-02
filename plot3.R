setwd("C:/work/training/Data Science Specialization Coursera/Exploratory Data Analysis/Week1/project")

# Read household_power_consumption.txt file
epc <- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE)

# subset data within date range  2007-02-01 and 2007-02-02.
epc_subset <- epc[epc$Date %in% c("1/2/2007","2/2/2007") ,] 

# plot 3 - TimeSeries plot of of Energy Submetering - Sub_metering_1, Sub_metering_2 and Sub_metering_2 and save it in plot3.png

# First get the datetime
datetime <- strptime(paste(epc_subset$Date,epc_subset$Time," "), "%d/%m/%Y %H:%M:%S") 

names(epc_subset)

png("./plot3.png") 
## Plot Sub_metering_1
plot(datetime,as.numeric(epc_subset$Sub_metering_1),ylab="Energy Sub metering",xlab="",type="l") 
## Add to the plot Sub_metering_2
lines(datetime,as.numeric(epc_subset$Sub_metering_2), col="red")
## Add  to the plot Sub_metering_3
lines(datetime,as.numeric(epc_subset$Sub_metering_3), col="blue")
## Add legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"),lwd=1)
dev.off() 