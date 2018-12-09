clear
clc
load NYSE.mat
[my0] = roots(linspace(1,2*pi,20),sin(linspace(1,2*pi,20)),0.1,6);
[correct0] = roots_soln(linspace(1,2*pi,20),sin(linspace(1,2*pi,20)),0.1,6);
roots_linspace12pi20sinlinspace12pi20016 = isequal([my0],[correct0]);
[my0] = roots(linspace(-1,1,10), linspace(-1,1,10).^3, -1,1);
[correct0] = roots_soln(linspace(-1,1,10), linspace(-1,1,10).^3, -1,1);
roots_linspace1110linspace1110311 = isequal([my0],[correct0]);
[my0] = roots([-1,0,1],[1,0,1],-0.8,1);
[correct0] = roots_soln([-1,0,1],[1,0,1],-0.8,1);
roots_101101081 = isequal([my0],[correct0]);
[my0] = integrals([[1 2.2 3.3 4.2 5]; ((1:5)).^3], [(1:0.5:5); exp((1:0.5:5))+20]);
[correct0] = integrals_soln([[1 2.2 3.3 4.2 5]; ((1:5)).^3], [(1:0.5:5); exp((1:0.5:5))+20]);
integrals_122334251531055exp105520 = isequal([my0],[correct0]);
[my0] = stockExchange(stocks1);
[correct0] = stockExchange_soln(stocks1);
stockExchange_stocks1 = isequal([my0],[correct0]);
[my0] = stockExchange(stocks2);
[correct0] = stockExchange_soln(stocks2);
stockExchange_stocks2 = isequal([my0],[correct0]);
[my0] = stockExchange(stocks3);
[correct0] = stockExchange_soln(stocks3);
stockExchange_stocks3 = isequal([my0],[correct0]);
