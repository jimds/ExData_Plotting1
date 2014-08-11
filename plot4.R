## open png file
png(filename = "plot4.png")
## set layout for plots
par(mfrow = c(2, 2))
## plot individual graphs
with(hpcdat,{
    plot(hpcdat$Date, hpcdat$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type = "l")
    plot(hpcdat$Date, hpcdat$Voltage, xlab="datetime", ylab="Voltage",  type = "l")
    plot(hpcdat$Date, hpcdat$Sub_metering_1, col = "black", xlab="", ylab="Energy sub metering", type ='l')
    lines(hpcdat$Date, hpcdat$Sub_metering_2, col = "red", type = 'l')
    lines(hpcdat$Date, hpcdat$Sub_metering_3, col = "blue", type = 'l')
    legend("topright", lty=c(1,1,1),col = c("black", "red",'blue'), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(hpcdat$Date, hpcdat$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power",  type = "l")
})
## close png file
dev.off()