household <- read.table("Data/subHouseHold.txt", sep=";", header=TRUE, 
                        colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", "character"))
household$DateTime <- strptime(household$DateTime, "%Y-%m-%d %H:%M:%S")

png("figure/plot1.png", width=480, height=480)
hist(household$Global_active_power, col = "red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
