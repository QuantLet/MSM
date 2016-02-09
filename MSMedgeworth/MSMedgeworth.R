# clear history
rm(list = ls(all = TRUE))
graphics.off()

# install and load packages
libraries = c("xtable", "formatR")
lapply(libraries, function(x) if (!(x %in% installed.packages())) {
  install.packages(x)
})
lapply(libraries, library, quietly = TRUE, character.only = TRUE)

x      = seq(-2, 2, 0.2)
beta1  = 2
beta2  = 6
n      = 5
phi    = pnorm(x, mean = 0, sd = 1)
edge1  = pnorm(x, mean = 0, sd = 1) - dnorm(x, mean = 0, sd = 1) * (beta1 * (x^2 - 1)/(6 * n^(0.5)))
edge2  = pnorm(x, mean = 0, sd = 1) - dnorm(x, mean = 0, sd = 1) * (beta1 * (x^2 - 1)/(6 * n^(0.5)) 
         + beta2 * (x^3 - 3 * x)/(24 * n) + (beta1^2) * (x^5 - 10 * x^3 + 15 * x)/(72 * n))
exact  = pexp(x, rate = 1)
result = cbind(x, phi, edge1, edge2, exact)
xtable(result, digits = 4) 