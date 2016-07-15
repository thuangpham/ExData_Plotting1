setwd("C:/DataScience/Exploratory Data/ExData_Plotting1/ExData_Plotting1")

library(dplyr)
file<-"household_power_consumption.txt"
#read in only the data starting from the first row of the 2007-02-01 to 2007-02-02
df <- read.csv(file, sep=";", header=TRUE,stringsAsFactors=FALSE,
               colClasses = c("Date","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
               na.strings="?",skip = 66637, nrow = 2880)

##apply the header row to the data
name <- sapply(read.table(file, nrow = 1, sep = ";"), as.character)
names(df) <- name

##plot the graph to png
png("plot1.png",width=480,height=480)
##plot the histogram
hist(df$Global_active_power,xlab="Global Active Power (kilowatts)", main="Global Active Power",c="red")
dev.off()
