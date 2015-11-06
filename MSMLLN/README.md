
![http://quantnet.wiwi.hu-berlin.de/style/banner.png](http://quantnet.wiwi.hu-berlin.de/style/banner.png)

## ![qlogo](http://quantnet.wiwi.hu-berlin.de/graphics/quantlogo.png) **MSMLLN**


```yaml

Name of QuantLet : MSMLLN

Published in : MSM

Description : 'Plots the points showing law of large numbers. 
As the sample size becomes larger, the sample mean converges to 
the theoretical (true) mean of the distribution.'

Keywords : 
- pdf
- normal
- distribution
- mean
- plot
- parameter
- visualization
- discrete

See also : 
- MSMpdfasymmetric
- MSMasprob

Author : Xiu Xu

Submitted : Thu, November 5 2015 by Chen Huang

Example : Plot of points presenting law of large numbers.

```


![Picture1](MSMLLN.png)


```R

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
```
