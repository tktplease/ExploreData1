subset_power <- house_power[house_power$Pdate == as.Date("2007-02-01") | house_power$Pdate ==  as.Date("2007-02-02"),]

plot(subset_power$Ptime,subset_power$Global_active_power,ylab="Global Active Power (kilowatts)",main = "Plot 2",type="l")

dev.copy(png,"plot2.png")

dev.off()