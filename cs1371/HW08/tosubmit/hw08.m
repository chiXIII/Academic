%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Micaiah Smith-Pierce
% GT Email     : mcsp3@gatech.edu
% Homework     : HW08 original
% Course       : CS1371
% Section      : B01
% Collaboration: I worked on the homework assignment alone, using
%                only course materials.
%
% Files to submit:
%	ABCs_lowLevelFileIO.m
%	albumArt.m
%	catchyCounter.m
%	formation.m
%	hw08.m
%	mashUp.m
%	moshUp.m
%	musicAwards.m
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
% Part of this homework is an m-file called "ABCs_lowLevelFileIO.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_lowLevelFileIO.m

%
% ABCs File Testing:
%	ABCs_hw08_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW08_DrillProblems.pdf",
% containing instructions for 6 drill problems that cover the
% following topic:
%
%	Low Level File I/O
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
%% Function Name: musicAwards
%
% Setup:
%	load awards.mat
%
% Test Cases:
% musicAwards('general.txt', category1, winner1)
% 		Output text file(s) should be identical to that produced by the solution file
% 
% musicAwards('Rock.txt', category2, winner2)
% 		Output text file(s) should be identical to that produced by the solution file
% 
% musicAwards('Pop.txt', category3, winner3)
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: catchyCounter
%
% Test Cases:
% [num1] = catchyCounter('gucci.txt', 'Gucci Gang')
% 	num1 =>     53
% 
% [num2] = catchyCounter('wannabe.txt', 'wanna')
% 	num2 =>     28
% 
% [num3] = catchyCounter('bohemian.txt', 'Bohemian Rhapsody')
% 	num3 =>      0
%
%--------------------------------------------------------------------------------
%% Function Name: formation
%
% Test Cases:
% formation([1 3 3 5 7], 'formation1.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% formation([7 7 5 5], 'formation2.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% formation([1 9 21 13 9], 'formation3.txt')
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: albumArt
%
% Test Cases:
% albumArt('Divide.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% albumArt('Chance_3.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% albumArt('Graduation.txt')
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: mashUp
%
% Test Cases:
% mashUp('mitski.txt', 'paramore.txt', 'instr1.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% mashUp('hippocampus.txt', 'halsey.txt', 'instr2.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% mashUp('badbadhats.txt', 'lorde.txt', 'instr3.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% mashUp('girlpool.txt', 'ladylamb.txt', 'instr4.txt')
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: moshUp
%
% Test Cases:
% moshUp('campaign.txt', 'on_gp.txt', 'mosh1.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% moshUp('alive.txt', 'march.txt', 'mosh2.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% moshUp('mephisto.txt', 'mirrors.txt', 'mosh3.txt')
% 		Output text file(s) should be identical to that produced by the solution file
%
