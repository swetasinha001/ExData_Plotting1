setwd("C:/work/training/Data Science Specialization Coursera/Exploratory Data Analysis/Week1/project")

# Read household_power_consumption.txt file
epc <- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE)

# subset data within date range  2007-02-01 and 2007-02-02.
epc_subset <- epc[epc$Date %in% c("1/2/2007","2/2/2007") ,]  

# Plot 1 - Histogram of Gloabal Active Power and save it in plot1.png

png("./plot1.png") 
hist(as.numeric(epc_subset$Global_active_power), col="red", xlab="Global Active Power (kilowatts)",main="Global Active Power") 
dev.off() 

