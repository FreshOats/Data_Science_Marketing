# This assesses broadcast advertising and sales

# Load and Explore
data <- read.csv("Data_Files/03_02/regression-r.csv")
plot(data$BROADCAST, data$NET.SALES)

# Fit a regression line to the plot
model <- lm(data$NET.SALES ~ data$BROADCAST) # Net sales with respect to broadcast D ~ I

lines(data$BROADCAST, model$fitted.values)

# Show the coefficients for the fitted regression line
model$coefficients

## Intercept shows the net sales with no advertising
## The slope gives the increase in sales per broadcast - we see an increase