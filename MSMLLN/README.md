
[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="888" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **MSMLLN** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml

Name of QuantLet : MSMLLN

Published in : MSM

Description : 'Plots the points showing law of large numbers. As the sample size becomes larger,
the sample mean converges to the theoretical (true) mean of the distribution.'

Keywords : pdf, normal, distribution, mean, plot, parameter, visualization, discrete

See also : MSMpdfasymmetric, MSMasprob

Author : Xiu Xu

Submitted : Thu, November 5 2015 by Chen Huang

Example : Plot of points presenting law of large numbers.

```

![Picture1](MSMLLN.png)


### R Code:
```r

# clear history
rm(list = ls(all = TRUE))
graphics.off()

n = 1000
mu = 0
sig = 1
y = rnorm(n, mu, sig)
x = matrix(0, nrow = n, ncol = 1)

for (i in 1:n) {
    x[i] = mean(y[1:i])
}

# Plot
plot(x, col = "red3", type = "p", pch = 20, lwd = 2.5, ylab = "", xlab = "")
abline(h = 0, col = "blue", pch = 20, lwd = 3.5)

```
