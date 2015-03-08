# PNG
png(filename='plot4.png')

# Structure
par(mfrow=c(2,2))

# Top left
plot(data$date.time, 
     data$Global_active_power,
     ylab='Global Active Power', 
     xlab='', 
     type='l')

# Top right
plot(data$date.time, 
     data$Voltage,
     xlab='datetime', 
     ylab='Voltage', 
     type='l')

# Bottom left
plot(data$date.time, 
     data$Sub_metering_1, 
     type='l',
     xlab='', 
     ylab='Energy sub metering')
# Add lines
lines(data$date.time, data$Sub_metering_2, col='red')
lines(data$date.time, data$Sub_metering_3, col='blue')
# Legend
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')

# Bottom right
plot(data$date.time, 
     data$Global_reactive_power,
     xlab='datetime', 
     ylab='Global_reactive_power', 
     type='l')

# Close
dev.off()