%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Micaiah Smith-Pierce
% GT Email     : mcsp3@gatech.edu
% Homework     : HW07 original
% Course       : CS1371
% Section      : B01
% Collaboration: I worked on the homework assignment alone, using
%                only course materials.
%
% Files to submit:
%	ABCs_iteration.m
%	hw07.m
%	luge.m
%	olympicTorch.m
%	pascalsPodium.m
%	roundRobin.m
%	zamboni.m
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
% Part of this homework is an m-file called "ABCs_iteration.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_iteration.m

%
% ABCs File Testing:
%	ABCs_hw07_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW07_DrillProblems.pdf",
% containing instructions for 6 drill problems that cover the
% following topic:
%
%	Iteration
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
%% Function Name: luge
%
% Test Cases:
% [str1] = luge('Albert Demchenko-208.00-Felix Loch-207.53-Armin Zoeggeler-208.80')
% 	str1 => Felix Loch is the winner of the 2018 Olympics for luge, with a time of 207.53 seconds!
% 
% [str2] = luge('Addison-453.255-Ashok-489.5-Amanda-276.45-Zach-602.432')
% 	str2 => Amanda is the winner of the 2018 Olympics for luge, with a time of 276.45 seconds!
% 
% [str3] = luge('Jens Muller-185.548-Michael Walter-186.933-Yury Kharchenko-186.274-Georg Hackl-185.916-Thomas Jacob-186.358')
% 	str3 => Jens Muller is the winner of the 2018 Olympics for luge, with a time of 185.55 seconds!
%
%--------------------------------------------------------------------------------
%% Function Name: olympicTorch
%
% Setup:
%	load olympicTorch_test.mat
%
% Test Cases:
% [result1] = olympicTorch(map1, path1)
% 	result1 =>      1
% 
% [result2] = olympicTorch(map2, path2)
% 	result2 =>      1
% 
% [result3] = olympicTorch(map3, path3)
% 	result3 =>      0
%
%--------------------------------------------------------------------------------
%% Function Name: zamboni
%
% Test Cases:
% zamboni('bruins.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% zamboni('checkerboard.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% zamboni('spongebobimg.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% zamboni('flag.png')
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: pascalsPodium
%
% Test Cases:
% [podium1] = pascalsPodium(4)
% 	podium1 =>  
%      0     0     0     1     0     0     0
%      0     0     1     0     1     0     0
%      0     1     0     2     0     1     0
%      1     0     3     0     3     0     1
% 
% [podium2] = pascalsPodium(30)
% 	podium2 => Value too large to display. Value should match that of the solution function.
% 
% [podium3] = pascalsPodium(150)
% 	podium3 => Value too large to display. Value should match that of the solution function.
%
%--------------------------------------------------------------------------------
%% Function Name: roundRobin
%
% Setup:
%	load groups.mat
%
% Test Cases:
% [result1] = roundRobin(group1)
% 	result1 => Team CAN won the round robin with a record of 3-0.
% 
% [result2] = roundRobin(group2)
% 	result2 => Team SLO won the round robin with a record of 3-1.
% 
% [result3] = roundRobin(group3)
% 	result3 => Team SWE won the round robin with a record of 4-1.
%
%--------------------------------------------------------------------------------
%% Function Name: cryptex
%
% Test Cases:
% cryptex('petOrFunction.png', 'CAT')
% 		Output image(s) should be identical to that produced by solution file
% 
% cryptex('nothingBetter.png', 'MATLAB')
% 		Output image(s) should be identical to that produced by solution file
% 
% cryptex('almostAlphabet.png', 'APPLES')
% 		Output image(s) should be identical to that produced by solution file
%
