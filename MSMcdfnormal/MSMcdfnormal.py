import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm

# Simulate data
x = np.arange(-4, 4.2, 0.2)
y = norm.cdf(x, loc=0, scale=1)

# Plot the CDF
plt.plot(x, y, color='blue', linewidth=2.5)
plt.axvline(x=0, color='black', linestyle='--')
plt.xlabel("X")
plt.ylabel("CDF")
plt.title("CDF of Standard Normal Distribution")
plt.grid(True)
plt.show()
