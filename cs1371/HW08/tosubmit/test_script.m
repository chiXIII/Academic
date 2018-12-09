clear
clc
[my0] = catchyCounter('paramore.txt', 'I');
[correct0] = catchyCounter_soln('paramore.txt', 'I');
catchyCounter_paramoretxtI = isequal([my0],[correct0]);
[my0] = catchyCounter('paramore.txt', 'I ');
[correct0] = catchyCounter_soln('paramore.txt', 'I ');
catchyCounter_paramoretxtI = isequal([my0],[correct0]);
[my0] = catchyCounter('mephisto.txt', 'somebody');
[correct0] = catchyCounter_soln('mephisto.txt', 'somebody');
catchyCounter_mephistotxtsomebody = isequal([my0],[correct0]);
[my0] = catchyCounter('mephisto.txt', 'down');
[correct0] = catchyCounter_soln('mephisto.txt', 'down');
catchyCounter_mephistotxtdown = isequal([my0],[correct0]);
