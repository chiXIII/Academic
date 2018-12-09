%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Micaiah Smith-Pierce
% GT Email     : mcsp3@gatech.edu
% Homework     : HW05 original
% Course       : CS1371
% Section      : B01
% Collaboration: I worked on the homework assignment alone, using
%                only course materials.
%
% Files to submit:
%	ABCs_arrays.m
%	ABCs_images.m
%	beMemeValentine.m
%	fourEverAlone.m
%	hw05.m
%	loveSearch.m
%	magicSquarePair.m
%	swipeLeft.m
%       puzzleBox.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on Canvas. Check the Canvas announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to Canvas:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
%% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework are m-files called "ABCs_arrays.m" and "ABCs_images.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_arrays.m
%	ABCs_images.m
%
% ABCs File Testing:
%	ABCs_hw05_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW05_DrillProblems.pdf",
% containing instructions for 6 drill problems that cover the
% following topic:
%
%	Arrays and Images
%
% Follow the directions carefully to write code to complete the drill
% problems as described. Make sure file names as well as function headers
% are written exactly as described in the problem text. If your function
% headers are not written as specified, you will recieve an automatic
% zero for that problem.
%
%==========================================================================
%% PART 3. Testing Your Code
%--------------------------------------------------------------------------
%
% You may use the following test cases for each problem to test your code.
% The function call with the test-inputs is shown in the first line of each
% test case, and the correct outputs are displayed in subsequent lines.
%
%% Function Name: swipeLeft
%
% Setup:
%	load profiles.mat
%
% Test Cases:
% [out1] = swipeLeft(arr1, 3)
% 	out1 =>  
%     79    53    56    56    77   100    70
%     40    68    54    67    88    89    68
%     98    88    57    56    32    46    63
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out2] = swipeLeft(arr2, 5)
% 	out2 =>  
%     99    89    68    95    77    86
%     88    67    67    55    87    73
%     58    98    43    67    88    71
%     65    55    48    98    77    69
%     14    67    87    67    55    58
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out3] = swipeLeft(arr3, 3)
% 	out3 =>  
%     78    87    98    97    90
%     78    97    55    90    80
%     56    76    67    98    74
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: loveSearch
%
% Setup:
%	load puzzles.mat
%
% Test Cases:
% [search1] = loveSearch(word1, puzzle1)
% 	search1 =>  
% aoelcg
% qlwicu
% pdksiw
% se####
% eiflow
% pixleh
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [search2] = loveSearch(word2, puzzle2)
% 	search2 =>  
% qpien
% romec
% owkxi
% r####
% sleit
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [search3] = loveSearch(word3, puzzle3)
% 	search3 =>  
% keopalwir
% wpeogk#if
% xpydza#iu
% qpworu#hd
% mxnvja#xu
% wodkri#ha
% epslxocir
% doflgkhmb
% woeifjthd
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: beMemeValentine
%
% Test Cases:
% beMemeValentine('kanye.png', 'kanyeBack.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% beMemeValentine('cage.png', 'cageBack.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% beMemeValentine('voldemort.png', 'voldemortBack.png')
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: fourEverAlone
%
% Test Cases:
% fourEverAlone('brian.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% fourEverAlone('pepe.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% fourEverAlone('kim.png')
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: magicSquarePair
%
% Test Cases:
% [out1] = magicSquarePair(magic(3), magic(4))
% 	out1 =>      1
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = magicSquarePair([1 2; 3 4], zeros(2, 2))
% 	out1 =>      0
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = magicSquarePair(magic(5), randi(5))
% 	out1 =>      1
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: puzzleBox
%
% Setup:
%	load jumbled.mat
%
% Test Cases:
% [solved1] = puzzleBox(jumbled1, rowShift1, colShift1)
% 	solved1 => Value too large to display. Value should match that of the solution function.
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [solved2] = puzzleBox(jumbled2, rowShift2, colShift2)
% 	solved2 => Value too large to display. Value should match that of the solution function.
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [solved3] = puzzleBox(jumbled3, rowShift3, colShift3)
% 	solved3 => Value too large to display. Value should match that of the solution function.
% 		Output variable(s) should be identical to that produced by the solution file
%
