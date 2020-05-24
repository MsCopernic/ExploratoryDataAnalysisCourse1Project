library(dplyr)

# Read & subset data
Source <- read.table("./data/household_power_consumption.txt", 
                        stringsAsFactors = FALSE, header = TRUE, sep =";"  )
   
SubSource <- subset( Source, Source$Date == "1/2/2007" | Source$Date == "2/2/2007" )

## Assign the correct class to all columns
   
SubSource <- SubSource %>%
   mutate( Date = as.Date( Date, format="%d/%m/%Y")) %>%
   mutate( Time = format( Time, format = "%H:%M:%S")) %>%
   mutate( Global_active_power = as.numeric( Global_active_power )) %>%
   mutate( Global_reactive_power = as.numeric( Global_reactive_power )) %>%
   mutate( Voltage = as.numeric( Voltage )) %>%
   mutate( Global_intensity = as.numeric( Global_intensity )) %>%
   mutate( Sub_metering_1 = as.numeric( Sub_metering_1 )) %>%
   mutate( Sub_metering_2 = as.numeric( Sub_metering_2 )) %>%
   mutate( Sub_metering_3 = as.numeric( Sub_metering_3 ))

## Add column to Source with Date & Time merged

DateTime<- as.POSIXlt(paste(SubSource$Date, SubSource$Time), format="%Y-%m-%d %H:%M:%S")
SubSource <- cbind( SubSource, DateTime)

rm(DateTime,Source)