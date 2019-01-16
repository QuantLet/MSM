# Plot the PDF
y1 = dbinom(0:20, 20, 0.1)
y2 = dbinom(0:20, 20, 0.5)
y3 = dbinom(0:20, 20, 0.8)

plot(y1~c(0:20), col = "blue", type = "h", lwd = 2.5, ylab = "", xlab = "")
points(y1~c(0:20), col = "blue", type = "p", pch = 20, lwd = 0.1, ylim = c(0, 0.3))
lines(y2~c(0:20), col = "darkolivegreen4", type = "h", lwd = 2.5, ylab = "", xlab = "")
points(y2~c(0:20), col = "darkolivegreen4", type = "p", pch = 20, lwd = 0.1, ylim = c(0, 
                                                                              0.3))
lines(y3~c(0:20), col = "chocolate4", type = "h", lwd = 2.5, ylab = "", xlab = "")
points(y3~c(0:20), col = "chocolate4", type = "p", pch = 20, lwd = 0.1, ylim = c(0, 0.3)) 
