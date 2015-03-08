# PNG
png(filename='plot2.png')

# Plot
plot(data$date.time, 
     data$Global_active_power,
     ylab='Global Active Power (kilowatts)', 
     xlab='', 
     type='l')

# Close
dev.off()