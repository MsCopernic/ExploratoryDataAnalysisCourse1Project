Plot3 <- function(){
   
   # Please run DataTool.R before testing the plotting programs, 
   # I use one process to convert to prepare a dataset that is common for 
   # all the ploting work with Plot1 ~ Plot4 R Programs
   
   ## plot Global_active_Power <-> DateTime

   png("plot3.png", width = 480, height = 480)
   
   with( SubSource, plot( DateTime, Sub_metering_1, type = "l", xlab = "Day", ylab = "Energy sub metering"))
   
   lines(SubSource$DateTime, SubSource$Sub_metering_2,type = "l", col = "red")
   lines(SubSource$DateTime, SubSource$Sub_metering_3,type = "l", col = "blue")
   
   legend(c("topright"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
          lty = 1, lwd = 2, col = c("black", "red", "blue"))
   
   dev.off()
   
}
