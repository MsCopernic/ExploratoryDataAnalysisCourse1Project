Plot3 <- function(){
   
   # Please read DataTool.R , I use only one process to convert 
   # data types, filter and prepare a dataset to be used in all the ploting
   # generation in Plot1 to Plot4 R Programs
   
   ## read data
   Source <- read_csv("./data/project.csv")

   ## plot globalactivepower vs date&time
   png("plot3.png", width=480, height=480)
   
   with( Source, plot( DateTime, Sub_metering_1, type="l", 
                         xlab="Day", ylab="Energy sub metering"))
   
   lines(Source$DateTime, Source$Sub_metering_2,type="l", col= "red")
   lines(Source$DateTime, Source$Sub_metering_3,type="l", col= "blue")
   
   legend(c("topright"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
          lty= 1, lwd=2, col = c("black", "red", "blue"))
   
   dev.off()
   
}