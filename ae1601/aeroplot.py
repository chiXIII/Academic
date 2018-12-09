import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
from math import pi
"""
file = open('re3E6.csv', 'r')
text = file.read()
file.close()
text = text.replace('  ','').replace('\n ', '\n').replace(' ',',')
file = open('re3E6.csv', 'w+')
file.write(text)
file.close
"""
polar = pd.read_csv('re3E6.csv')
polar = polar.iloc[:15]
plt.plot(polar['alpha'], polar['CL'], label = 'CL')
plt.plot(polar['alpha'], polar['CD'], label = 'CD')
plt.plot(polar['alpha'], polar['CM'], label = 'CM')
plt.legend()
plt.xlabel('alpha')
plt.show()
#plt.savefig('re3E6.png')
print('linear coefficients:')
coefs = np.polyfit(polar['alpha'], polar['CL'],1)
print(coefs[0],coefs[1])
#print(coefs[0]*360/(2*pi),coefs[1])
