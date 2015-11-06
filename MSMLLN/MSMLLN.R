
# clear history
rm(list = ls(all = TRUE))
graphics.off()

set.seed(80)
n = 1000
y = rnorm(n, 0, 1)
x = matrix(0, nrow = n, ncol = 1)

for (i in 1:n) {
    x[i] = mean(y[1:i])
}

# Plot
plot(x, col = "red3", type = "p", pch = 20, lwd = 2.5, ylab = "", xlab = "")
abline(h = 0, col = "blue", pch = 20, lwd = 3.5)
