import numpy as np
import math

r = 0.01

file = open('sheet_coords.txt','w')
text = ''
for x in np.linspace(0,math.pi/2,20):
	if abs(x) != math.pi/2:
		text += str(r*math.cos(x)+1-r) +' '+ str(r*math.sin(x)) + '\n'
for x in np.linspace(1-r,r,100):
	text += str(x) +' '+ str((0.25 - ((x-0.5)/(1-2*r))**2)/100 + r) + '\n'
for x in np.linspace(math.pi/2, -math.pi/2,20):
	if abs(x) != math.pi/2:
		text += str(r*(1-math.cos(x))) +' '+ str(r*math.sin(x)) + '\n'

for x in np.linspace(r,1-r,100):
	text += str(x) +' '+ str((((x-0.5)/(1-2*r))**2 - 0.25)/100 - r) + '\n'
for x in np.linspace(-math.pi/2,0,20):
	if abs(x) != math.pi/2:
		text += str(r*math.cos(x)+1-r) +' '+ str(r*math.sin(x)) + '\n'

file.write(text)
file.close()
