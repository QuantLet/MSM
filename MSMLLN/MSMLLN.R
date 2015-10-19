# ------------------------------------------------------------------------------
# Course:      MSM - Selected Topics of Mathematical Statistics
# ------------------------------------------------------------------------------
# Quantlet:    MSMLLN
# ------------------------------------------------------------------------------
# Description: It plots the points showing law of large numbers. As the sample 
#              size become larger, the sample mean converge to the theorical 
#              (true) mean of the distribution.
# ------------------------------------------------------------------------------
# Output:      Plot of points presenting law of large numbers
# ------------------------------------------------------------------------------
# Keywords:    pdf, normal, mean, distribution, parameters, visualization, plot, 
#              discrete, convergence, law of large numbers, sample mean
# ------------------------------------------------------------------------------ 
# See also:    MSMpdfmultinormal, MSMpdfmultinormal, MSMpdfasymmetric,
#              MSMpdfasymmetric, MSMasprob
# ------------------------------------------------------------------------------
# Author:      Xiu Xu 20150603
# ------------------------------------------------------------------------------


rm(list=ls())
graphics.off()

set.seed(80)
n = 1000
y = rnorm(n, 0, 1) 
x = matrix(, nrow = n, ncol = 1)

for (i in 1:n) {
  x[i] = mean(y[1:i])
 }

#Plot 
plot(x, col = "red3", type = "p", pch = 20, lwd = 2.5, ylab = "", xlab = "")
abline(h = 0, col = "blue", pch = 20, lwd = 3.5)
dev.off()
