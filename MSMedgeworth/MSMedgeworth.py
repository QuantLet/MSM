import numpy as np
import pandas as pd
from scipy.stats import norm, expon
from tabulate import tabulate  # optional, for xtable-like output

# Data and parameters
x = np.arange(-2, 2.2, 0.2)
beta1 = 2
beta2 = 6
n = 5

# Standard normal CDF
phi = norm.cdf(x, loc=0, scale=1)

# First-order Edgeworth expansion
edge1 = norm.cdf(x) - norm.pdf(x) * (beta1 * (x**2 - 1) / (6 * np.sqrt(n)))

# Second-order Edgeworth expansion
edge2 = norm.cdf(x) - norm.pdf(x) * (
    (beta1 * (x**2 - 1) / (6 * np.sqrt(n))) +
    (beta2 * (x**3 - 3 * x) / (24 * n)) +
    ((beta1**2) * (x**5 - 10 * x**3 + 15 * x) / (72 * n))
)

# Exponential CDF (note: this is not really an "exact" equivalent to Edgeworth)
exact = expon.cdf(x, scale=1)

# Combine results into a DataFrame
result = pd.DataFrame({
    "x": x,
    "phi": phi,
    "edge1": edge1,
    "edge2": edge2,
    "exact": exact
})

# Round for display
result_rounded = result.round(4)

# Optional: pretty print like xtable
print(tabulate(result_rounded, headers='keys', tablefmt='grid', showindex=False))
