## read in data
hpcdat <-read.csv('household_power_consumption.txt', sep=';')
## convert date and time to correct format
hpcdat$Date <- strptime(paste(hpcdat$Date,hpcdat$Time), "%d/%m/%Y %H:%M:%S")
## remove unneeded time column
hpcdat <- hpcdat[,-2]
## Filter data for correct dates
hpcdat <- hpcdat[hpcdat$Date >= as.POSIXlt("2007-02-01") & hpcdat$Date < as.POSIXlt("2007-02-03"),]

## convert appropriate cols to num
hpcdat[,2]=as.character(hpcdat[,2])
hpcdat[,2]=as.numeric(hpcdat[,2])
hpcdat[,3]=as.character(hpcdat[,3])
hpcdat[,3]=as.numeric(hpcdat[,3])
hpcdat[,4]=as.character(hpcdat[,4])
hpcdat[,4]=as.numeric(hpcdat[,4])
hpcdat[,5]=as.character(hpcdat[,5])
hpcdat[,5]=as.numeric(hpcdat[,5])
hpcdat[,6]=as.character(hpcdat[,6])
hpcdat[,6]=as.numeric(hpcdat[,6])
hpcdat[,7]=as.character(hpcdat[,7])
hpcdat[,7]=as.numeric(hpcdat[,7])

## run plotting scripts
source('plot1.R')
source('plot2.R')
source('plot3.R')
source('plot4.R')