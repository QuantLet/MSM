# ------------------------------------------------------------------------------
# Course:       MSM - Selected Topics of Mathematical Statistics
# ------------------------------------------------------------------------------
# Quantlet:     MSMpdfmultinormal
# ------------------------------------------------------------------------------
# Description:  Simulate 1000 data point from the binormal distribution with 
#               mean value (0, 0) and covariance matrix c(1, 0.5, 0.5, 1) and 
#               then plot the multinormal PDF function.
# ------------------------------------------------------------------------------
# Keywords:     multivariate normal, simulation, pdf, plot, bivariate, density, 
#               normal, normal-distribution, 3D, visualization, distribution, 
#               estimation
# ------------------------------------------------------------------------------ 
# See also:     MSMcdfnormal, MSMpdfbinomial, SPM2density2D, SPMcontour2D, 
#               SPMdensity 
# ------------------------------------------------------------------------------
# Author:       Xiu Xu 20150603
# ------------------------------------------------------------------------------

# Remove variable definitions
graphics.off()
rm(list = ls()) 

# install and load packages
libraries = c("MASS")
lapply(libraries, function(x) if (!(x %in% installed.packages())) {
  install.packages(x)
})
lapply(libraries, library, quietly = TRUE, character.only = TRUE)

bivn     = mvrnorm(1000, mu = c(0, 0), Sigma = matrix(c(1, .5, .5, 1), 2))
bivn.kde = kde2d(bivn[, 1], bivn[, 2], n = 50)

# plot 
persp(bivn.kde, phi = 45, theta = 30, xlab = "X1", ylab = "X2", zlab = "PDF")
dev.off()
