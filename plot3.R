subset_power <- house_power[house_power$Pdate == as.Date("2007-02-01") | house_power$Pdate ==  as.Date("2007-02-02"),]

plot(subset_power$Ptime,subset_power$Sub_metering_1,ylab="Energy sub metering",main = "Plot 3",type="l")
points(subset_power$Ptime,subset_power$Sub_metering_2,type="l", col="Orange")
points(subset_power$Ptime,subset_power$Sub_metering_3,type="l",col="Blue")
legend("topright",pch=1,col = c("black","orange","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png,"plot3.png")

dev.off()