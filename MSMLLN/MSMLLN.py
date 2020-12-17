# imports
import numpy as np
import matplotlib.pyplot as plt

# plotting settings
plt.style.use('seaborn')
plt.rcParams['figure.figsize'] = (16, 8)

np.random.seed(0)
mu, sigma = 0, 1 # mean, standard deviation
x = np.random.normal(mu, sigma, 1000)
cum_sum = np.cumsum(x)
sample_size = np.arange(1, len(x)+1)
averges = np.divide(cum_sum, sample_size)

plt.xlabel('Size of a sample', fontsize=16)
plt.ylabel('Average', fontsize=16)
plt.axhline(0, ls= '--', c='black', label='mean')
plt.plot(sample_size, averges,
         c='r', lw=5, alpha=0.6, label='sample average')
plt.legend(loc="upper right", frameon=True, prop={'size': 14})
plt.title('Law of Large Numbers', fontsize=20);
