
[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="888" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **MSMcdfnormal** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml

Name of QuantLet : MSMcdfnormal

Published in : MSM

Description : 'Simulates data from normal distribution and plots its cumulative density function
(cdf).'

Keywords : cdf, standard-normal, distribution, random, plot

See also : MSMpdfnormal

Author : Xiu Xu, Alla Petukhina, Shi Chen

Submitted : Fri, October 16 2015 by Shi Chen

Example : A CDF plot of standard normal distribution.

```

![Picture1](MSMcdfnormal.png)


### R Code:
```r

# clear history
rm(list = ls(all = TRUE))
graphics.off()

# Simulates data and plot the CDF
plot(seq(-4, 4, 0.2), pnorm(seq(-4, 4, 0.2), 0, 1), col = "blue", type = "l", lwd = 2.5, 
    ylab = "CDF", xlab = "X")
abline(v = 0) 

```
