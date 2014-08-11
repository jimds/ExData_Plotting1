## open png file
png(filename = "plot1.png")
## plot graph
hist(hpcdat$Global_active_power, col = 'red', main='Global Active Power', xlab = 'Global Active Power (kilowatts)')
## close png file
dev.off() 