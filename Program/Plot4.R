#set the working directory
setwd("C:/DataScience/Exploratory Data/ExData_Plotting1/ExData_Plotting1")

##Read data
source("Program/LoadData.R")

##set datetime column by combining Date and Time columns
df$DateTime <- strptime(paste(df$Date, df$Time), format="%d/%m/%Y %H:%M:%S")

#plot to png
#png("plot4.png",width=500,height=500)

par(mfrow=c(2,2))

#top left 
plot(df$DateTime,df$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=NA)

#top right
plot(df$DateTime, df$Sub_metering_1,ylab="Energy sub metering",xlab=NA,type="l",col="black")

#add lines for sub_metering_2 column using red
lines(df$DateTime, df$Sub_metering_2, col="red")
#add lines for sub_metering_3 column using blue
lines(df$DateTime, df$Sub_metering_3, col="blue")
# add legend
legend("topright", col = c("black", "red", "blue"), lty=1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#bottom left 
plot(df$DateTime,df$Voltage, type="l", xlab="datetime", ylab="Voltage")

#bottom right
plot(df$DateTime,df$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

#turn off
dev.off()
