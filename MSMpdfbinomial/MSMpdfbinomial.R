# ------------------------------------------------------------------------------
# Course:      MSM - Selected Topics of Mathematical Statistics
# ------------------------------------------------------------------------------
# Quantlet:    MSMpdfbinomial
# ------------------------------------------------------------------------------
# Description: It plots three PDFs of the Binomial distribution with different
#              probabilities of success (p) in each trial. The number of trials
#              is set to 20. The line colours correspond to p = 0.1 (blue),
#              p = 0.5 (green) and p = 0.8 (dark red).     
# ------------------------------------------------------------------------------
# Output:      Plot of PDF of binomial distribution
# ------------------------------------------------------------------------------
# Keywords:    pdf, binomial, distribution, parameters, visualization, plot, 
#              discrete
# ------------------------------------------------------------------------------ 
# See also:    MSMpdfmultinormal, MSMpdfmultinormal, MSMpdfasymmetric,
#              MSMpdfasymmetric, MSMasprob, SFEbinomv, SFEBinomial
# ------------------------------------------------------------------------------
# Author:      Xiu Xu 20150603
# ------------------------------------------------------------------------------


graphics.off()
rm(list = ls())

#Plot the PDF 
y1 = dbinom(0:20, 20, 0.1)  
y2 = dbinom(0:20, 20, 0.5) 
y3 = dbinom(0:20, 20, 0.8) 

plot(y1, col = "blue", type = "h", lwd = 2.5, ylab = "", xlab = "")
points(y1, col = "blue", type = "p", pch = 20, lwd = 0.1, ylim = c(0, 0.3))

lines(y2, col = "darkolivegreen4", type = "h", lwd = 2.5, ylab = "", xlab = "")
points(y2, col = "darkolivegreen4", type = "p", pch = 20, lwd = 0.1, ylim = c(0, 0.3))

lines(y3, col = "chocolate4", type = "h", lwd = 2.5, ylab = "", xlab = "")
points(y3, col = "chocolate4", type = "p", pch = 20, lwd = 0.1, ylim = c(0, 0.3))
