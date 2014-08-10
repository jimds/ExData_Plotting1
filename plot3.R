plot(hpcdat$Date, hpcdat$Sub_metering_1, col = "black", xlab="", ylab="Energy sub metering", type ='l')
lines(hpcdat$Date, hpcdat$Sub_metering_2, col = "red", type = 'l')
lines(hpcdat$Date, hpcdat$Sub_metering_3, col = "blue", type = 'l')
legend("topright", lty=c(1,1,1),col = c("black", "red",'blue'), legend = c("sub metering 1", "sub metering 2", "sub metering 3"))