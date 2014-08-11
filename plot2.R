## open png file
png(filename = "plot2.png")
## plot graph
plot(hpcdat$Date, hpcdat$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type = "l")
## close png file
dev.off()