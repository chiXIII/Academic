clear
clc
load groves.mat
load runescape_test.mat
[my0] = runeScape(charStruct1, itemStruct1);
[correct0] = runeScape_soln(charStruct1, itemStruct1);
runeScape_charStruct1itemStruct1 = isequal([my0],[correct0]);
[my0] = runeScape(charStruct2, itemStruct2);
[correct0] = runeScape_soln(charStruct2, itemStruct2);
runeScape_charStruct2itemStruct2 = isequal([my0],[correct0]);
[my0] = runeScape(charStruct3, itemStruct3);
[correct0] = runeScape_soln(charStruct3, itemStruct3);
runeScape_charStruct3itemStruct3 = isequal([my0],[correct0]);
[my0] = runeScape(charStruct4, itemStruct4);
[correct0] = runeScape_soln(charStruct4, itemStruct4);
runeScape_charStruct4itemStruct4 = isequal([my0],[correct0]);
[my0] = sumtorial(1);
[correct0] = sumtorial_soln(1);
sumtorial_1 = isequal([my0],[correct0]);
[my0] = sumtorial(3);
[correct0] = sumtorial_soln(3);
sumtorial_3 = isequal([my0],[correct0]);
[my0] = sumtorial(100);
[correct0] = sumtorial_soln(100);
sumtorial_100 = isequal([my0],[correct0]);
[my0] = sumtorial(24);
[correct0] = sumtorial_soln(24);
sumtorial_24 = isequal([my0],[correct0]);
[my0] = sumtorial(0);
[correct0] = sumtorial_soln(0);
sumtorial_0 = isequal([my0],[correct0]);
[my0] = sumtorial(2);
[correct0] = sumtorial_soln(2);
sumtorial_2 = isequal([my0],[correct0]);
[my0] = sumtorial(5);
[correct0] = sumtorial_soln(5);
sumtorial_5 = isequal([my0],[correct0]);
[my0] = sumtorial(43);
[correct0] = sumtorial_soln(43);
sumtorial_43 = isequal([my0],[correct0]);
[my0] = sumtorial(0);
[correct0] = sumtorial_soln(0);
sumtorial_0 = isequal([my0],[correct0]);
[my0] = palingrove(grove1);
[correct0] = palingrove_soln(grove1);
palingrove_grove1 = isequal([my0],[correct0]);
[my0] = palingrove(grove2);
[correct0] = palingrove_soln(grove2);
palingrove_grove2 = isequal([my0],[correct0]);
[my0] = palingrove(grove3);
[correct0] = palingrove_soln(grove3);
palingrove_grove3 = isequal([my0],[correct0]);
[my0] = deepestPath({'a'});
[correct0] = deepestPath_soln({'a'});
deepestPath_a = isequal([my0],[correct0]);
[my0] = deepestPath({{1}});
[correct0] = deepestPath_soln({{1}});
deepestPath_1 = isequal([my0],[correct0]);
[my0] = deepestPath({1 {2}});
[correct0] = deepestPath_soln({1 {2}});
deepestPath_12 = isequal([my0],[correct0]);
[my0] = deepestPath({2 {}});
[correct0] = deepestPath_soln({2 {}});
deepestPath_2 = isequal([my0],[correct0]);
[my0] = deepestPath({{1}, {'a', {1}}});
[correct0] = deepestPath_soln({{1}, {'a', {1}}});
deepestPath_1a1 = isequal([my0],[correct0]);
[my0] = treeFarm(1, 'a');
[correct0] = treeFarm_soln(1, 'a');
treeFarm_1a = isequal([my0],[correct0]);
[my0] = treeFarm(42, '^');
[correct0] = treeFarm_soln(42, '^');
treeFarm_42 = isequal([my0],[correct0]);
[my0] = treeFarm(3,',');
[correct0] = treeFarm_soln(3,',');
treeFarm_3 = isequal([my0],[correct0]);
[my0] = treeFarm(457, 'x');
[correct0] = treeFarm_soln(457, 'x');
treeFarm_457x = isequal([my0],[correct0]);
