atmo = dlmread('atmosphere_data.txt', ' ');
atmo_alt = atmo(5:end,1);
atmo_dens = atmo(5:end,4);

radius = 6378100;
g0 = 9.832;
h = 0;
vr = 0;
vth = radius*cos(28*pi/180)*2*pi/(24*3600);
pitch = 90;
mass = 2040000;

theta = 0;

rs25thrustVac = 470000*4.4475;
rs25thrustSea = 375000*4.4475;
rs25IspVac = 452;
rs25IspSea = 366;
lPropMass = (1655603 - 66000)*0.4536;

boostThrustVac = 10159800;
boostThrustSea = 10149400;
boostIspVac = 269;
boostIspSea = 237;
sPropMass = 589670 - 86183;

t = 0;

dt = 0.1;
ts = [];
qs = [];
mths = [];
hs = [];
thetas = [];
while sPropMass > 0
	if t > 90
		pitch = 50;
	elseif t < 20
		pitch = interp1([0,20],[90,83],t);
	end

	g = g0*radius^2/(radius + h)^2;
	h = h + vr*dt;
	hs = [hs h];
	if h < 30000
		rho = interp1(atmo_alt, atmo_dens, h)*1.225;
	else
		rho = 0;
	end
	q = 0.5*rho*(vr^2 + (vth - (radius+h)*cos(28*pi/180)*2*pi/(24*3600))^2);
	qs = [qs q];
	d = 0.5*q*((27.6/2*0.3048)^2+(3.71/2)^2)*pi;

	rs25Isp = interp1([1.25,0],[rs25IspSea, rs25IspVac],rho);
	boostIsp = interp1([1.25,0],[boostIspSea, boostIspVac],rho);
	boostThrust = interp1([1.25,0],[boostThrustSea, boostThrustVac],rho);
	rs25thrust = interp1([1.25,0],[rs25thrustSea, rs25thrustVac],rho);
	if t < 60 & t > 26
		rs25thrust = rs25thrust*0.6;
	end
	mths = [mths rs25thrust];

	lPropMass = lPropMass - rs25thrust*3*dt/(rs25Isp*9.81);
	sPropMass = sPropMass - boostThrust*dt/(boostIsp*9.81);
	thrust = rs25thrust*3 + boostThrust*2;
	vr = vr + ((thrust-d)/mass*sin(pitch*pi/180) - g + vth^2/(radius + h)) * dt;
	vth = vth + ((thrust-d)/mass*cos(pitch*pi/180) - vth*vr/(radius + h)) * dt;
	mass = mass - (rs25thrust/rs25Isp*3 + boostThrust/boostIsp*2)*dt/9.81;

	theta = theta + vth*dt/(radius + h);
	thetas = [thetas theta];

	t = t + dt;
	ts = [ts t];
end

max_q = max(qs)
h

%plot(ts,hs,'g');
%polarplot(thetas,hs+radius,'g');
hold on
mass = mass - 86183*2;

hs = [];
thetas = [];
t1 = t;
pitch = 30;
while lPropMass > 0
	if t > 500
		pitch = 1;
	elseif t > 450
		pitch = 2;
	elseif t > 400
		pitch = 17;
	elseif t > 350
		pitch = 22;
	elseif t > 300
		pitch = 25;
	elseif t > 200
		pitch = 30;
	end
	g = g0*radius^2/(radius + h)^2;
	h = h + vr*dt;
	hs = [hs h];


	thrust = min(rs25thrustVac*3, 3*9.81*mass);
	lPropMass = lPropMass - thrust*dt/(rs25IspVac*9.81);
	vr = vr + (thrust/mass*sin(pitch*pi/180) - g + vth^2/(radius + h)) * dt;
	vth = vth + (thrust/mass*cos(pitch*pi/180) - vth*vr/(radius + h)) * dt;
	mass = mass - thrust/rs25IspVac*dt/9.81;

	theta = theta + vth*dt/(radius + h);
	thetas = [thetas theta];
	mths = [mths thrust/3];
	qs = [qs 0];

	t = t + dt;
	ts = [ts t];

end
t
h
ylabel 'q (Pa)';
%plot(ts,hs,'b');
plot(ts, qs);
yyaxis right
l1 = length(ts)
l2 = length(mths)
plot(ts,mths);
xlabel 't+ (s)';
ylabel 'thrust (N)'
%ylabel 'altitude(m)';
title 'q and main engine thrust v. time';
%polarplot(thetas,hs+radius,'b');

have = 0.5*(vr^2 + vth^2) + h*g0
need = 0.5*g0*radius

hs = [];
thetas = [];
ts = [];
while theta < 2*pi
	g = g0*radius^2/(radius + h)^2;
	vr = vr + (-g + vth^2/(radius + h)) * dt;
	vth = vth + (-vth*vr/(radius + h)) * dt;
	theta = theta + vth*dt/(radius + h);
	thetas = [thetas theta];
	h = h + vr*dt;
	hs = [hs h];
	t = t+dt;
	ts = [ts t];
end

th = linspace(0,2*pi,200);
ra = ones(1,200)*radius;
%polarplot(th,ra,'k');

%polarplot(thetas,hs+radius,'m');
