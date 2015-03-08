# PNG
png(filename='plot1.png')

# Plot
hist(data$Global_active_power, 
     main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', 
     col='red')

# Close
dev.off()