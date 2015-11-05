# clear history
rm(list = ls(all = TRUE))
graphics.off()

# Simulates data and plot the CDF
plot(seq(-4, 4, 0.2), pnorm(seq(-4, 4, 0.2), 0, 1), col = "blue", type = "l", lwd = 2.5, 
    ylab = "CDF", xlab = "X")
abline(v = 0) 
