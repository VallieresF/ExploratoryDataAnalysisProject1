household <- read.table("Data/subHouseHold.txt", sep=";", header=TRUE, 
                        colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", "character"))
household$DateTime <- strptime(household$DateTime, "%Y-%m-%d %H:%M:%S")


png("figure/plot4.png", width=480, height=480)

par(mfrow=c(2,2))
plot(subHouseHold$DateTime, subHouseHold$Global_active_power, type="n", xlab="", ylab="Global Active Power") 
lines(subHouseHold$DateTime, subHouseHold$Global_active_power, type="l")

plot(subHouseHold$DateTime, subHouseHold$Voltage, type="n", xlab="datetime", ylab="Voltage")
lines(subHouseHold$DateTime, subHouseHold$Voltage, type="l")

plot(subHouseHold$DateTime, subHouseHold$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering") 
lines(subHouseHold$DateTime, subHouseHold$Sub_metering_1, type="l", col="black")
lines(subHouseHold$DateTime, subHouseHold$Sub_metering_2, type="l", col="red")
lines(subHouseHold$DateTime, subHouseHold$Sub_metering_3, type="l", col="blue")
legend("topright", lwd=1, col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.75,bty="n")

plot(subHouseHold$DateTime, subHouseHold$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power") 
lines(subHouseHold$DateTime, subHouseHold$Global_reactive_power, type="l")
dev.off()