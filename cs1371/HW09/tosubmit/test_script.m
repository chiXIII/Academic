clear
clc
[my0 my1] = onions([{{{1}}} {{2}} ; {{{{3}}}} {{{4}}}]);
[correct0 correct1] = onions_soln([{{{1}}} {{2}} ; {{{{3}}}} {{{4}}}]);
onions_1234 = isequal([my0 my1],[correct0 correct1]);
[my0 my1] = onions([{{'foo'}} {'bar'} {'bar'} ; {'bar'} {'foo'} {'foo'}]);
[correct0 correct1] = onions_soln([{{'foo'}} {'bar'} {'bar'} ; {'bar'} {'foo'} {'foo'}]);
onions_foobarbarbarfoofoo = isequal([my0 my1],[correct0 correct1]);
[my0] = myCabbages({'foo' 3 2 ; 'bar' 2 3});
[correct0] = myCabbages_soln({'foo' 3 2 ; 'bar' 2 3});
myCabbages_foo32bar23 = isequal([my0],[correct0]);
[my0] = myCabbages({'Yana' 1000000 42 ; 'Me' 0 0});
[correct0] = myCabbages_soln({'Yana' 1000000 42 ; 'Me' 0 0});
myCabbages_Yana100000042Me00 = isequal([my0],[correct0]);
[my0] = myCabbages({'a' 1 2 ; 'b' 2 3 ; 'c' 4 5});
[correct0] = myCabbages_soln({'a' 1 2 ; 'b' 2 3 ; 'c' 4 5});
myCabbages_a12b23c45 = isequal([my0],[correct0]);
[my0] = shallots({{{{{{{1}}}}}}});
[correct0] = shallots_soln({{{{{{{1}}}}}}});
shallots_1 = isequal([my0],[correct0]);
[my0] = shallots({true});
[correct0] = shallots_soln({true});
shallots_true = isequal([my0],[correct0]);
[my0] = shallots({{'foo'}});
[correct0] = shallots_soln({{'foo'}});
shallots_foo = isequal([my0],[correct0]);
