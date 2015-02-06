household <- read.table("Data/subHouseHold.txt", sep=";", header=TRUE, 
                        colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", "character"))
household$DateTime <- strptime(household$DateTime, "%Y-%m-%d %H:%M:%S")


png("figure/plot3.png", width=480, height=480)

plot(subHouseHold$DateTime, subHouseHold$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering") 
lines(subHouseHold$DateTime, subHouseHold$Sub_metering_1, type="l", col="black")
lines(subHouseHold$DateTime, subHouseHold$Sub_metering_2, type="l", col="red")
lines(subHouseHold$DateTime, subHouseHold$Sub_metering_3, type="l", col="blue")
legend("topright", lwd=1, col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
