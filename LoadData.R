
library(dplyr)
file<-"Data/household_power_consumption.txt"

df <- read.csv(file, sep=";", header=TRUE,stringsAsFactors=FALSE,skip = 66637, nrow = 2880,
               na.strings="?")
name <- sapply(read.table(file, nrow = 1, sep = ";"), as.character)
names(df) <- name