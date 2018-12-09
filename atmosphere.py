import matplotlib.pyplot as plt
from numpy import linspace
from math import exp

class atmosphere:
    def __init__(self, gamma, g, p0, rho0, r):
        self.r = r
        self.gamma = gamma
        self.g = g
        self.p0, self.rho0 = p0, rho0
        self.c = 1 + (1-gamma)/gamma * rho0*r*g/p0

    def isentropic(self, altitude):
        ans = (1-self.gamma)/self.gamma * self.rho0/self.p0 * self.g * altitude + 1
        return ans**( self.gamma/(self.gamma-1) ) * self.p0

    def isothermal(self, altitude):
        return self.p0 * exp(-self.g*self.rho0/self.p0*altitude)

    def isentropic_with_gravity_variance(self, altitude):
        return self.p0 * ( (self.gamma-1)/self.gamma * self.rho0*self.r**2 * self.g / (self.p0 * (altitude+self.r)) + self.c )**(self.gamma/(self.gamma-1))
    def pressure(self, altitude):
        return (self.isothermal(altitude) + self.isentropic(altitude))/2

#test

earth = atmosphere(1.4, 9.8, 101325, 1.225, 6.37814 * 10**6)
x = linspace(1,25000, 100)
y = [earth.isentropic(xx) for xx in x]
plt.plot(x,y, color = 'red', label = 'isentropic')

x1 = [0,1,2,3,4,5,6,7,8,9,10,11,13,15,17,20,25]
y1 = [101325, 89874, 79495, 70108, 61640, 54019, 47181, 41060, 35599, 30742, 26436, 22632, 16510, 12044, 8787, 5475, 2511]
plt.plot([xx * 1000 for xx in x1],y1, color = 'black', label = 'experimental')

y2 = [earth.isothermal(xx) for xx in x]
plt.plot(x,y2, color = 'blue', label = 'isothermal')

y3 = [earth.pressure(xx) for xx in x]
plt.plot(x, y3, color = 'purple', label = 'averaged isothermal and isentropic')
plt.xlabel('Altitude (m)')
plt.ylabel('Pressure (pa)')
plt.legend()
plt.title('Atmospheric Pressure')

plt.savefig('pvh.png')

plt.show()
