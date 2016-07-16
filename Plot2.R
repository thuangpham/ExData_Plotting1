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
png("plot2.png",width=500,height=500)

plot(df$DateTime,df$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=NA)
#turn off
dev.off()
