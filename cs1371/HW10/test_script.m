clear
clc
load birdNest_test.mat
load schrodinger_test.mat
load warriorClans
[my0] = schrodingersCat(arr1, start1);
[correct0] = schrodingersCat_soln(arr1, start1);
schrodingersCat_arr1start1 = isequal([my0],[correct0]);
[my0] = schrodingersCat(arr2, start2);
[correct0] = schrodingersCat_soln(arr2, start2);
schrodingersCat_arr2start2 = isequal([my0],[correct0]);
[my0] = schrodingersCat(arr3, start3);
[correct0] = schrodingersCat_soln(arr3, start3);
schrodingersCat_arr3start3 = isequal([my0],[correct0]);
[my0 my1] = warriors(clans1, 'Agility');
[correct0 correct1] = warriors_soln(clans1, 'Agility');
[my0 my1] = warriors(clans2, 'Courage');
[correct0 correct1] = warriors_soln(clans2, 'Courage');
[my0 my1] = warriors(clans3, 'Coolness');
[correct0 correct1] = warriors_soln(clans3, 'Coolness');
[my0] = garfield(struct('a', 1, 'b', 'a'));
[correct0] = garfield_soln(struct('a', 1, 'b', 'a'));
garfield_structa1ba = isequal([my0],[correct0]);
[my0] = garfield(struct('a', 'monday', 'b', 'a'));
[correct0] = garfield_soln(struct('a', 'monday', 'b', 'a'));
garfield_structamondayba = isequal([my0],[correct0]);
[my0] = garfield(struct('a', {1 true NaN ; 'a' 'b' 'c'}, 'b', {1 'monday', 'Monday'; 2, 'MONDAY', 'mondAy'}));
[correct0] = garfield_soln(struct('a', {1 true NaN ; 'a' 'b' 'c'}, 'b', {1 'monday', 'Monday'; 2, 'MONDAY', 'mondAy'}));
garfield_structa1trueNaNabcb1mondayMonday2MONDAYmondAy = isequal([my0],[correct0]);
[my0] = tomAndJerry(struct('foo', 'bar'), struct(), 'foo');
[correct0] = tomAndJerry_soln(struct('foo', 'bar'), struct(), 'foo');
tomAndJerry_structfoobarstructfoo = isequal([my0],[correct0]);
[my0] = tomAndJerry(struct('a', 1, 'b', 'x', 'c', 2, 'dd', 0), struct('a', 5, 'b', pi), 'c');
[correct0] = tomAndJerry_soln(struct('a', 1, 'b', 'x', 'c', 2, 'dd', 0), struct('a', 5, 'b', pi), 'c');
tomAndJerry_structa1bxc2dd0structa5bpic = isequal([my0],[correct0]);
[my0] = birdNest(rooms1);
[correct0] = birdNest_soln(rooms1);
birdNest_rooms1 = isequal([my0],[correct0]);
[my0] = birdNest(rooms2);
[correct0] = birdNest_soln(rooms2);
birdNest_rooms2 = isequal([my0],[correct0]);
[my0] = birdNest(rooms3);
[correct0] = birdNest_soln(rooms3);
birdNest_rooms3 = isequal([my0],[correct0]);
[my0] = birdNest(rooms4);
[correct0] = birdNest_soln(rooms4);
birdNest_rooms4 = isequal([my0],[correct0]);
