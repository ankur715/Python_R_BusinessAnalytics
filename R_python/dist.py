import numpy as np

def dist_lognormal():
  np.random.seed(8)
  return np.random.lognormal(size=1000)
