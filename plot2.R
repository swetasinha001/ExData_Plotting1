setwd("C:/work/training/Data Science Specialization Coursera/Exploratory Data Analysis/Week1/project")

# Read household_power_consumption.txt file
epc <- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE)

# subset data within date range  2007-02-01 and 2007-02-02.
epc_subset <- epc[epc$Date %in% c("1/2/2007","2/2/2007") ,] 

# plot 2 - TimeSeries plot of of Gloabal Active Power and save it in plot2.png

# First get the datetime
datetime <- strptime(paste(epc_subset$Date,epc_subset$Time," "), "%d/%m/%Y %H:%M:%S") 

png("./plot2.png") 
plot(datetime,as.numeric(epc_subset$Global_active_power),ylab="Global Active Power (kilowatts)",xlab="",type="l") 
dev.off() 
