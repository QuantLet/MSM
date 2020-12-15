# imports
import numpy as np
import matplotlib.pyplot as plt

# plotting settings
plt.style.use('seaborn')
plt.rcParams['figure.figsize'] = (16, 8)

# parameters
n = 1000
k = np.floor(np.log(n)/np.log(2)) - 1
x = np.zeros([n, 10])
x[0] = 1
z = np.array([0.5, 0.2, 0.4, 0.6, 0.8])

for s in range(2, len(z)+1):
    for i in range(1, int(k+1)):
        for j in range(0, 2**i + 1):
            t = 2**i + j
            x[t, 1] = (j * 2**(-i) <= 0.5) & (0.5 < (j + 1) * 2**(-i))
            x[t, s] = (j * 2**(-i) <= z[s-1]) & (z[s-1] < (j + 1) * 2**(-i))
            x = x * 1

# Plot the time series
plt.plot(x[1:400, 1], 'o', c = 'b', ms=5)
plt.plot(x[1:400, 2], 'o', c = 'g', ms=5)
plt.plot(x[1:400, 5], 'o', c = 'r', ms=5);
