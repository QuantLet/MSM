
# clear history
rm(list = ls(all = TRUE))
graphics.off()

# Plot the PDF
plot(seq(-4, 4, 0.2), dnorm(seq(-4, 4, 0.2), 0, 1), col = "blue", type = "l", lwd = 2.5, 
    ylab = "PDF", xlab = "X")
abline(v = 0) 
