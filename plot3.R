# PNG
png(filename='plot3.png')

# Plot
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

# Close
dev.off()