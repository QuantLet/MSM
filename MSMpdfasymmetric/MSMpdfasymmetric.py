import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import skewnorm

# Function to convert R's skew-normal parameters to scipy's
def dsn(x, xi, omega, alpha):
    a = alpha  # shape parameter
    loc = xi   # location
    scale = omega  # scale
    return skewnorm.pdf(x, a, loc=loc, scale=scale)

def rsn(size, xi, omega, alpha):
    a = alpha
    loc = xi
    scale = omega
    return skewnorm.rvs(a, loc=loc, scale=scale, size=size)

# Define x-ranges
x1 = np.arange(-3, 1.001, 0.001)
x2 = np.arange(-2, 2.001, 0.001)
x3 = np.arange(-1, 3.001, 0.001)

# Plotting
fig, axs = plt.subplots(1, 3, figsize=(15, 4))

# First plot: alpha = -5
axs[0].plot(x1, dsn(x1, xi=0, omega=1, alpha=-5), color='chocolate', linewidth=2.5)
axs[0].axvline(np.median(rsn(len(x1), xi=0, omega=1, alpha=-5)), color='black', linestyle='--')
axs[0].set_xlabel("X")
axs[0].set_ylabel("PDF")
axs[0].set_ylim([0, 0.9])
axs[0].set_title("Skew-Normal α = -5")

# Second plot: alpha = 0
axs[1].plot(x2, dsn(x2, xi=0, omega=0.55, alpha=0), color='green', linewidth=2.5)
axs[1].axvline(np.median(rsn(len(x2), xi=0, omega=0.55, alpha=0)), color='black', linestyle='--')
axs[1].set_xlabel("X")
axs[1].set_ylim([0, 0.9])
axs[1].set_title("Normal (α = 0)")

# Third plot: alpha = 5
axs[2].plot(x3, dsn(x3, xi=0, omega=1, alpha=5), color='blue', linewidth=2.5)
axs[2].axvline(np.median(rsn(len(x3), xi=0, omega=1, alpha=5)), color='black', linestyle='--')
axs[2].set_xlabel("X")
axs[2].set_ylim([0, 0.9])
axs[2].set_title("Skew-Normal α = 5")

plt.tight_layout()
plt.show()
