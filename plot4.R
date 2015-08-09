subset_power <- house_power[house_power$Pdate == as.Date("2007-02-01") | house_power$Pdate ==  as.Date("2007-02-02"),]

par(mfrow = c(2,2),title="Plot 4")
with(subset_power, {
 plot(subset_power$Ptime,subset_power$Global_active_power,ylab="Global Active Power (kilowatts)",type="l")
 plot(subset_power$Ptime,subset_power$Voltage,ylab="Voltage",,type="l")
 plot(subset_power$Ptime,subset_power$Sub_metering_1,ylab="Energy sub metering",type="l")
   points(subset_power$Ptime,subset_power$Sub_metering_2,type="l", col="Orange")
   points(subset_power$Ptime,subset_power$Sub_metering_3,type="l",col="Blue")
   legend("topright",pch=1,cex=.5,col = c("black","orange","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
 plot(subset_power$Ptime,subset_power$Global_reactive_power,ylab="Global_reactive_power",type="l")
}
)
dev.copy(png,"plot4.png")

dev.off()