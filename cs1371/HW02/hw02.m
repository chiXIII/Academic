%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Micaiah Smith-Pierce
% GT Email     : mcsp3@gatech.edu
% Homework     : HW02 original
% Course       : CS1371
% Section      : B01
% Collaboration: I worked on the homework assignment alone, using
%                  only course materials.
%
% Files to submit:
%	ABCs_moreFunctions.m
%	cartDist.m
%	clockHands.m
%	fallTime.m
%	hw02.m
%	spaceTime.m
%	timeDilation.m
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
% Part of this homework is an m-file called "ABCs_moreFunctions.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_moreFunctions.m

%
% ABCs File Testing:
%	ABCs_hw02_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW02_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Functions
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
%% Function Name: fallTime
%
% Test Cases:
% [time1] = fallTime(5)
% 	time1 =>                       1.01
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [time2] = fallTime(20)
% 	time2 =>                       2.02
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [time3] = fallTime(50)
% 	time3 =>                       3.19
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: cartDist
%
% Test Cases:
% [out1] = cartDist(4, 5, 7, 9)
% 	out1 =>      5
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = cartDist(4, 3, -7, -10)
% 	out1 =>                      17.03
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = cartDist(0, 0, 0, 0)
% 	out1 =>      0
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: timeDilation
%
% Test Cases:
% [time1] = timeDilation(11, 1000000)
% 	time1 =>                    11.0001
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [time2] = timeDilation(500, 2222222)
% 	time2 =>                   500.0137
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [time3] = timeDilation(100, 5000000)
% 	time3 =>                   100.0139
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: spaceTime
%
% Test Cases:
% [years1] = spaceTime(1, 228e9, 6.39e23)
% 	years1 =>                      0.531
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [years2] = spaceTime(1, 108e9, 4.87e24)
% 	years2 =>                      1.629
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [years3] = spaceTime(7, 57.9e9, 3.3e23)
% 	years3 =>                     29.055
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [years4] = spaceTime(5000, 7.573e13, 1e21)
% 	years4 =>                      0.439
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: clockHands
%
% Test Cases:
% [out1, out2] = clockHands(6, 45, 10)
% 	out1 =>      6
% 	out2 =>     55
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1, out2] = clockHands(4, 45, -30)
% 	out1 =>      4
% 	out2 =>     15
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1, out2] = clockHands(1, 10, -134)
% 	out1 =>     10
% 	out2 =>     56
% 		Output variable(s) should be identical to that produced by the solution file
%
