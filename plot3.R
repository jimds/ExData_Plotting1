## open png file
png(filename = "plot3.png")
## plot initial graph
plot(hpcdat$Date, hpcdat$Sub_metering_1, col = "black", xlab="", ylab="Energy sub metering", type ='l')
## plot sub metering 2 line
lines(hpcdat$Date, hpcdat$Sub_metering_2, col = "red", type = 'l')
## plot sub metering 3 line
lines(hpcdat$Date, hpcdat$Sub_metering_3, col = "blue", type = 'l')
## plot the legend
legend("topright", lty=c(1,1,1),col = c("black", "red",'blue'), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
## close png file
dev.off()