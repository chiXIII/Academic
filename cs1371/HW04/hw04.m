%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Micaiah Smith-Pierce
% GT Email     : mcsp3@gatech.edu
% Homework     : HW04 original
% Course       : CS1371
% Section      : B01
% Collaboration: I worked on the homework assignment alone, using
%                only course materials.
%
% Files to submit:
%	ABCs_logicals.m
%	ABCs_masking.m
%	fruitDecryption.m
%	fruitEncryption.m
%	fruitLottery.m
%	fruitThief.m
%	hw04.m
%	rottenFruit.m
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
% Part of this homework are m-files called "ABCs_logicals.m" and "ABCs_masking.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_logicals.m
%	ABCs_masking.m
%
% ABCs File Testing:
%	ABCs_hw04_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW04_DrillProblems.pdf",
% containing instructions for 6 drill problems that cover the
% following topic:
%
%	Logicals and Masking
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
%% Function Name: rottenFruit
%
% Test Cases:
% [fruits1] = rottenFruit([1 4 9 7 6 4])
% 	fruits1 =>      4
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [fruits2] = rottenFruit([10 5 6 8 3 1 2 8 5 7 3 15])
% 	fruits2 =>      7
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [fruits3] = rottenFruit([2.2 9 7.7 5 4.8 14 19 .5 3 3])
% 	fruits3 =>      5
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: fruitLottery
%
% Test Cases:
% [out1] = fruitLottery('13-45-33-19-29-8', '29-10-6-13-41-8', 100)
% 	out1 =>      1
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = fruitLottery('1-2-3-4-5-6', '7-8-9-10-11-12', 50)
% 	out1 =>      0
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = fruitLottery('46-100-9-12-6-10', '9-12-5-46-3-17', 100000)
% 	out1 =>      1
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: fruitDecryption
%
% Test Cases:
% [out1] = fruitDecryption('9iltm#W*ELO1VEF$H&RY!,<^@UJ')
% 	out1 => welovefruit
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = fruitDecryption('saFl<a&dy Juibm>&myR6yumN>m>^-m>yU51MI1CTE')
% 	out1 => fruitsaladyummyyummy
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = fruitDecryption('f>woIr/>l#you$Y,MGR(Q6A59*PEF3NUHL')
% 	out1 => imgrapefulforyou
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: fruitEncryption
%
% Setup:
%	load encrypt.mat
%
% Test Cases:
% [out1] = fruitEncryption(arr1)
% 	out1 =>  
% qgvlrx
% yakaka
% fmyaka
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = fruitEncryption(arr2)
% 	out1 =>  
% ewejmxkkpv
% zroinsuryf
% sbcyybkysn
% nhcscsucim
% qordelsexr
% iwaryanahd
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = fruitEncryption(arr3)
% 	out1 =>  
% kpm
% rhp
% kzw
% aok
% wij
% jii
% son
% gxd
% dvt
% xum
% xtp
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: fruitThief
%
% Test Cases:
% [Out1] = fruitThief([true false true false false true], [true false true false false true], [true false true true false false], [true false true false false true])
% 	Out1 => Suspect #3 is the fruit thief.
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [Out2] = fruitThief([false false false true false true true], [false false true false false true true], [false false false true false true true], [false false false true false true true])
% 	Out2 => Suspect #2 is the fruit thief.
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [Out3] = fruitThief([false true false true true false], [false true false true true false], [false true false true true false], [true true true true false true])
% 	Out3 => Suspect #4 is the fruit thief.
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: fruitMarket
%
% Test Cases:
% [cost1] = fruitMarket('Banana,Kiwi,Pinapple', ['BANA';'NAKK';'PINE'])
% 	cost1 => $10
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [cost2] = fruitMarket('Apple,Lemon,Mange', ['YXNDS';'PAQWR';'CCMCC';'APPLE'])
% 	cost2 => $29
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [cost3] = fruitMarket('Banana,Banana,Banana', ['CNDSB';'BSWWR';'BCMBS';'BDDDD'])
% 	cost3 => $6
% 		Output variable(s) should be identical to that produced by the solution file
%
