#set the working directory
setwd("C:/DataScience/Exploratory Data/ExData_Plotting1/ExData_Plotting1")

library(dplyr)
file<-"Data/household_power_consumption.txt"

df <- read.csv(file, sep=";", header=TRUE,stringsAsFactors=FALSE,skip = 66637, nrow = 2880,
               na.strings="?")
name <- sapply(read.table(file, nrow = 1, sep = ";"), as.character)
names(df) <- name

##set datetime column by combining Date and Time columns
df$DateTime <- strptime(paste(df$Date, df$Time), format="%d/%m/%Y %H:%M:%S")

#plot to png

png("plot3.png",width=500,height=500)
plot(df$DateTime, df$Sub_metering_1,ylab="Energy sub metering",xlab=NA,type="l",col="black")

#add lines for sub_metering_2 column using red
lines(df$DateTime, df$Sub_metering_2, col="red")

#add lines for sub_metering_3 column using blue
lines(df$DateTime, df$Sub_metering_3, col="blue")

# add legend
legend("topright", col = c("black", "red", "blue"), lty=1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
