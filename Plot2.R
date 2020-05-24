Plot2 <- function(){
   
   # Please run DataTool.R before testing the plotting programs, 
   # I use one process to convert to prepare a dataset that is common for 
   # all the ploting work with Plot1 ~ Plot4 R Programs

   ## plot Global_active_power vs DateTime

   png( "plot2.png", width = 480, height = 480)

   with(SubSource, plot(DateTime, Global_active_power, type = "l", xlab = "Day", 
                         ylab = "Global Active Power (kilowatts)"))
   dev.off()
   
}