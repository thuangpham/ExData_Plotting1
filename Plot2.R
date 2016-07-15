#set the working directory
setwd("C:/DataScience/Exploratory Data/ExData_Plotting1/ExData_Plotting1")

##Read data using a function I created, since that code is being use for all the other program
source("Program/LoadData.R")

##set datetime column by combining Date and Time columns
df$DateTime <- strptime(paste(df$Date, df$Time), format="%d/%m/%Y %H:%M:%S")

#plot to png
png("plot2.png",width=500,height=500)

plot(df$DateTime,df$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=NA)
#turn off
dev.off()
