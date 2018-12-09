import numpy as np
from math import pi

numrows = 101
x = np.linspace(0,1,numrows)
y = np.sin(x*3*pi)*10
np.savetxt('lateral0.txt', np.array([np.zeros(numrows),x*710,-y]).transpose(), delimiter=',')
np.savetxt('lateral1.txt', np.array([np.zeros(numrows)+355,x*710, y]).transpose(), delimiter=',')

y = np.cos(3*pi*x)*10
np.savetxt('longitudinal0.txt', np.array([x*355,np.zeros(numrows),np.zeros(numrows)]).transpose(), delimiter=',')
np.savetxt('longitudinal1.txt', np.array([x*355,np.zeros(numrows)+710./6,-y]).transpose(), delimiter=',')
np.savetxt('longitudinal2.txt', np.array([x*355,np.zeros(numrows)+355,y]).transpose(), delimiter=',')
np.savetxt('longitudinal3.txt', np.array([x*355,np.zeros(numrows)+5*710./6,-y]).transpose(), delimiter=',')
np.savetxt('longitudinal4.txt', np.array([x*355,np.zeros(numrows)+71,np.zeros(numrows)]).transpose(), delimiter=',')
