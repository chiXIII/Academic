clear
clc
[my0] = timeDilation(2,0);
[correct0] = timeDilation_soln(2,0);
timeDilation_20 = isequal([my0],[correct0]);
[my0] = timeDilation(150,150);
[correct0] = timeDilation_soln(150,150);
timeDilation_150150 = isequal([my0],[correct0]);
[my0] = timeDilation(123.49876,49.8764567);
[correct0] = timeDilation_soln(123.49876,49.8764567);
timeDilation_12349876498764567 = isequal([my0],[correct0]);
[my0] = timeDilation(-25,10000);
[correct0] = timeDilation_soln(-25,10000);
timeDilation_2510000 = isequal([my0],[correct0]);
[my0] = timeDilation(456,-4678923);
[correct0] = timeDilation_soln(456,-4678923);
timeDilation_4564678923 = isequal([my0],[correct0]);
[my0] = timeDilation(-200,21902345);
[correct0] = timeDilation_soln(-200,21902345);
timeDilation_20021902345 = isequal([my0],[correct0]);
[my0] = timeDilation(645876,299792457);
[correct0] = timeDilation_soln(645876,299792457);
timeDilation_645876299792457 = isequal([my0],[correct0]);
[my0] = timeDilation(-20,299792458);
[correct0] = timeDilation_soln(-20,299792458);
timeDilation_20299792458 = isequal([my0],[correct0]);
[my0] = timeDilation(0,458);
[correct0] = timeDilation_soln(0,458);
timeDilation_0458 = isequal([my0],[correct0]);
[my0] = fallTime(1);
[correct0] = fallTime_soln(1);
fallTime_1 = isequal([my0],[correct0]);
[my0] = fallTime(10);
[correct0] = fallTime_soln(10);
fallTime_10 = isequal([my0],[correct0]);
[my0] = fallTime(20);
[correct0] = fallTime_soln(20);
fallTime_20 = isequal([my0],[correct0]);
[my0] = fallTime(3);
[correct0] = fallTime_soln(3);
fallTime_3 = isequal([my0],[correct0]);
[my0] = fallTime(400);
[correct0] = fallTime_soln(400);
fallTime_400 = isequal([my0],[correct0]);
[my0] = fallTime(97.8732456);
[correct0] = fallTime_soln(97.8732456);
fallTime_978732456 = isequal([my0],[correct0]);
[my0] = spaceTime(0,1,2);
[correct0] = spaceTime_soln(0,1,2);
spaceTime_012 = isequal([my0],[correct0]);
[my0] = spaceTime(7,6e12,9e30);
[correct0] = spaceTime_soln(7,6e12,9e30);
spaceTime_76e129e30 = isequal([my0],[correct0]);
[my0] = spaceTime(1,3e5,3e30);
[correct0] = spaceTime_soln(1,3e5,3e30);
spaceTime_13e53e30 = isequal([my0],[correct0]);
[my0] = spaceTime(3.245435,7.6920481003e8,2.01988739e20);
[correct0] = spaceTime_soln(3.245435,7.6920481003e8,2.01988739e20);
spaceTime_324543576920481003e8201988739e20 = isequal([my0],[correct0]);
[my0] = spaceTime(1,149.6e9,5.9723e24);
[correct0] = spaceTime_soln(1,149.6e9,5.9723e24);
spaceTime_11496e959723e24 = isequal([my0],[correct0]);
[my0] = spaceTime(5.43,233e9,2.354e24);
[correct0] = spaceTime_soln(5.43,233e9,2.354e24);
spaceTime_543233e92354e24 = isequal([my0],[correct0]);
[my0] = cartDist(0,0,1,0);
[correct0] = cartDist_soln(0,0,1,0);
cartDist_0010 = isequal([my0],[correct0]);
[my0] = cartDist(0,0,0,1);
[correct0] = cartDist_soln(0,0,0,1);
cartDist_0001 = isequal([my0],[correct0]);
[my0] = cartDist(1.23654,5.03254,-1.8945,0);
[correct0] = cartDist_soln(1.23654,5.03254,-1.8945,0);
cartDist_123654503254189450 = isequal([my0],[correct0]);
[my0] = cartDist(-5,3,-6,-10);
[correct0] = cartDist_soln(-5,3,-6,-10);
cartDist_53610 = isequal([my0],[correct0]);
[my0] = cartDist(100000,0,99933,458765);
[correct0] = cartDist_soln(100000,0,99933,458765);
cartDist_100000099933458765 = isequal([my0],[correct0]);
[my0] = cartDist(0.00001,0.000003456,-0.00321,-0.000001123);
[correct0] = cartDist_soln(0.00001,0.000003456,-0.00321,-0.000001123);
cartDist_00000100000034560003210000001123 = isequal([my0],[correct0]);
[my0 my1] = clockHands(0,0,15);
[correct0 correct1] = clockHands_soln(0,0,15);
clockHands_0015 = isequal([my0 my1],[correct0 correct1]);
[my0 my1] = clockHands(0,0,-15);
[correct0 correct1] = clockHands_soln(0,0,-15);
clockHands_0015 = isequal([my0 my1],[correct0 correct1]);
[my0 my1] = clockHands(3,43,20);
[correct0 correct1] = clockHands_soln(3,43,20);
clockHands_34320 = isequal([my0 my1],[correct0 correct1]);
[my0 my1] = clockHands(2,5,-2);
[correct0 correct1] = clockHands_soln(2,5,-2);
clockHands_252 = isequal([my0 my1],[correct0 correct1]);
[my0 my1] = clockHands(2,5,-13);
[correct0 correct1] = clockHands_soln(2,5,-13);
clockHands_2513 = isequal([my0 my1],[correct0 correct1]);
[my0 my1] = clockHands(4,52,-324);
[correct0 correct1] = clockHands_soln(4,52,-324);
clockHands_452324 = isequal([my0 my1],[correct0 correct1]);
[my0 my1] = clockHands(2,0,60);
[correct0 correct1] = clockHands_soln(2,0,60);
clockHands_2060 = isequal([my0 my1],[correct0 correct1]);
[my0 my1] = clockHands(15,63,4);
[correct0 correct1] = clockHands_soln(15,63,4);
clockHands_15634 = isequal([my0 my1],[correct0 correct1]);
[my0 my1] = clockHands(-3,45,12);
[correct0 correct1] = clockHands_soln(-3,45,12);
clockHands_34512 = isequal([my0 my1],[correct0 correct1]);
[my0 my1] = clockHands(-3,45,-12);
[correct0 correct1] = clockHands_soln(-3,45,-12);
clockHands_34512 = isequal([my0 my1],[correct0 correct1]);
[my0 my1] = clockHands(4,-24,13);
[correct0 correct1] = clockHands_soln(4,-24,13);
clockHands_42413 = isequal([my0 my1],[correct0 correct1]);
