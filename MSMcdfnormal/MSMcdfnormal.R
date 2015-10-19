# Course: MSM - Selected Topics of Mathematical Statistics
# ------------------------------------------------------------------------------
# Quantlet: MSMcdfnormal
# ------------------------------------------------------------------------------
# Description: Simulates data from normal distribution and plots its cumulative 
# density function (cdf) 
# ------------------------------------------------------------------------------
# Usage: -
# ------------------------------------------------------------------------------
# Inputs: None
# ------------------------------------------------------------------------------
# Output: A CDF plot of standard normal distribution
# ------------------------------------------------------------------------------
# Keywords:  cdf, standard-normal, plot, distribution, random  
# ------------------------------------------------------------------------------ 
# See also:  MSMpdfnormal
# ------------------------------------------------------------------------------
# Author:    Chen Huang,  Alla Petukhina, Shi Chen 20151016
# ------------------------------------------------------------------------------

graphics.off() # close all graphics
rm(list = ls()) # remove variable definitions

# Simulates data and plot the CDF 
plot(seq(-4, 4, 0.2), pnorm(seq(-4, 4, 0.2), 0, 1), col = "blue", type = "l", 
    lwd = 2.5, ylab = "CDF", xlab = "X")
abline(v = 0)

