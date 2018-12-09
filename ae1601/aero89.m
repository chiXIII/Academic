chord = 2;
b = 12;
w = 10^4;
a0 = 0.107675;

rho = 0.9467;
mu = 17.29*10^-6;
ar = b/chord;
s = b*chord;
%CD0 = 0.00605;
%CD0 = 0.00535;
%CD0 = 0.00544;

CD0 = 0.01899;

v = (4*w^2/(s^2*rho^2*CD0*pi*ar))^0.25
re = rho*v*chord/mu

CL = w/(0.5*rho*v^2*s)
CLa = a0/(1+a0/(pi*ar))
alpha = CL/CLa
