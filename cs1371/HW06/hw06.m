%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Micaiah Smith-Pierce
% GT Email     : mcsp3@gatech.edu
% Homework     : HW06 original
% Course       : CS1371
% Section      : B01
% Collaboration: I worked on the homework assignment alone, using
%                only course materials.
%
% Files to submit:
%	ABCs_conditionals.m
%	beMyHero.m
%	boxOfficePower.m
%	civilWar.m
%	heroMask.m
%	hw06.m
%	incredibleUno.m
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
% Part of this homework is an m-file called "ABCs_conditionals.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_conditionals.m

%
% ABCs File Testing:
%	ABCs_hw06_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW06_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Conditionals
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
%% Function Name: boxOfficePower
%
% Test Cases:
% [earnings1] = boxOfficePower('Gal Gadot,Chris Hemsworth,Brandon Routh')
% 	earnings1 =>         2300
% 
% [earnings2] = boxOfficePower('Robert Downey Jr.,Ryan Reynolds,Scarlett Johansson')
% 	earnings2 =>         1100
% 
% [earnings3] = boxOfficePower('Brandon Routh,Chadwick Boseman,Chris Hemsworth')
% 	earnings3 =>    800
%
%--------------------------------------------------------------------------------
%% Function Name: civilWar
%
% Test Cases:
% [winner1] = civilWar('Captain America', 'Iron Man')
% 	winner1 => Player 1 wins!
% 
% [winner2] = civilWar('Hawkeye', 'Black Panther')
% 	winner2 => Player 2 wins!
% 
% [winner3] = civilWar('Black Widow', 'Black Widow')
% 	winner3 => It's a tie!
%
%--------------------------------------------------------------------------------
%% Function Name: incredibleUno
%
% Test Cases:
% [str1] = incredibleUno('Frozone', 'g', [8], 'rbyyb', [4 0 5 7 3])
% 	str1 => Where's my super suit?!
% 
% [str2] = incredibleUno('Dash', 'r', [11], 'rygrryby', [11 5 11 4 0 4 11 11])
% 	str2 => Dash played 4 #11 cards.
% 
% [str3] = incredibleUno('Syndrome', 'b', [0], 'rrrgygygrryg', [1 1 1 1 1 1 1 1 1 3 2 1])
% 	str3 => Syndrome had to draw a card...
%
%--------------------------------------------------------------------------------
%% Function Name: beMyHero
%
% Setup:
%	load heroes.mat
%
% Test Cases:
% [out1] = beMyHero(movieOptions1, friendList1, nflxList1, stats1)
% 	out1 => Based on condition 1, X-Men would be a great choice!
% 
% [out1] = beMyHero(movieOptions2, friendList2, nflxList2, stats2)
% 	out1 => Based on condition 4, Guardians of the Galaxy would be a great choice!
% 
% [out1] = beMyHero(movieOptions3, friendList3, nflxList3, stats3)
% 	out1 => Based on condition 3, Thor: Ragnarok would be a great choice!
% 
% [out1] = beMyHero(movieOptions4, friendList4, nflxList4, stats4)
% 	out1 => Based on condition 2, Ant-Man would be a great choice!
%
%--------------------------------------------------------------------------------
%% Function Name: heroMask
%
% Test Cases:
% heroMask('blackpanther.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% heroMask('greenlantern.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% heroMask('captainamerica.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% heroMask('spiderman.png')
% 		Output image(s) should be identical to that produced by solution file
%
