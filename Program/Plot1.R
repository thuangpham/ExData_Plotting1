setwd("C:/DataScience/Exploratory Data/ExData_Plotting1/ExData_Plotting1")

library(dplyr)
file<-"household_power_consumption.txt"

df <- read.csv(file, sep=";", header=TRUE,stringsAsFactors=FALSE,
               colClasses = c("Date","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
               na.strings="?",skip = 66637, nrow = 2880)
name <- sapply(read.table(file, nrow = 1, sep = ";"), as.character)
names(df) <- name

png("plot1.png",width=480,height=480)
hist(df$Global_active_power,xlab="Global Active Power (kilowatts)", main="Global Active Power",c="red")
dev.off()