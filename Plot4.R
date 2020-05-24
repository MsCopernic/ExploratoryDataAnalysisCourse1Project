Plot4 <- function() {
   
   # Please run DataTool.R before testing the plotting programs, 
   # I use one process to convert to prepare a dataset that is common for 
   # all the ploting work with Plot1 ~ Plot4 R Programs

   ## Plot as required
   
   png("plot4.png", width = 480, height = 480)
   
   par(mfrow = c(2,2))
   
   with(SubSource, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power"))
   with(SubSource, plot(DateTime, Voltage, type = "l", xlab = "DateTime", ylab = "Voltage"))
   with(SubSource, plot(DateTime, Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering"))

   lines(SubSource$DateTime, SubSource$Sub_metering_2,type = "l", col = "red")
   lines(SubSource$DateTime, SubSource$Sub_metering_3,type = "l", col = "blue")

   legend("topright", lty = 1, col = c("black","red","blue"), bty = "n",
          legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.6)

   with(SubSource, plot(DateTime, Global_reactive_power, type = "l", xlab = "DateTime", 
                     ylab = "Global_reactive_power"))
   dev.off()
}
