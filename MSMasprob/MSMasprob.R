# ------------------------------------------------------------------------------
# Course:      MSM - Selected Topics of Mathematical Statistics
# ------------------------------------------------------------------------------
# Quantlet:    MSMasprob
# ------------------------------------------------------------------------------
# Description: Displays an example of which meets the convergence in mean
#              square but not convergence in almost sure series of the example. 
#              We select n = 400 and plot three cases: the initial value of 
#              Z = 0.5 (blue), 0.2 (green), and 0.8 (dark red).
# ------------------------------------------------------------------------------
# Output:      Plot of the series of an random variable satisfying convergence 
#              in mean square but not convergence in almost sure
# ------------------------------------------------------------------------------
# Keywords:    random-number-generation, process, plot, dynamic, simulation
# ------------------------------------------------------------------------------ 
# See also:    LAWS, clt, MSMpdfmultinormal, MSMpdfmultinormal, 
#              MSMpdfasymmetric, MSMpdfasymmetric, MSMasprob, SFSmsr1
# ------------------------------------------------------------------------------
# Author:      Xiu Xu
# ------------------------------------------------------------------------------

graphics.off()
rm(list = ls())

n      = 1000
k      = floor(log(n)/log(2)) - 1
x      = matrix(, nrow = n, ncol = 10)
x[1, ] = 1

z = c(0.5, 0.2, 0.4, 0.6, 0.8)
for (s in seq(2, length(z))) {
    for (i in seq(1, k)) {
        for (j in seq(0, 2^i)) {
          t       = 2^i + j
          x[t, 1] = (j * 2^(-i) <= 0.5) & (0.5 < (j + 1) * 2^(-i))
          x[t, s] = (j * 2^(-i) <= z[s]) & (z[s] < (j + 1) * 2^(-i))
          x       = x * 1
        }
    }
}

# Plot the time series
plot(x[1:400, 1], col = "blue", type = "p", pch = 20, lwd = 3,  
  ylim = c(-0.05, 1.1), ylab = "", xlab = "", cex.lab = 2, cex.axis = 2)
points(x[1:400, 2], col = "darkolivegreen4", type = "p", pch = 20, lwd = 3)
points(x[1:400, 5], col = "red3", type = "p", pch = 20, lwd = 3) 
