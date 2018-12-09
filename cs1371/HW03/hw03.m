%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Miciah Smith-Pierce
% GT Email     : mcsp3@gatech.edu
% Homework     : HW03 original
% Course       : CS1371
% Section      : B01
% Collaboration: I worked on the homework assignment alone, using
%                only course materials."
%
% Files to submit:
%	ABCs_strings.m
%	ABCs_vectors.m
%	airContour.m
%	coldWar.m
%	forecast.m
%	hw03.m
%	sweaterWeather.m
%	weatherStats.m
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
% Part of this homework are m-files called "ABCs_vectors.m" and "ABCs_strings.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_vectors.m
%	ABCs_strings.m
%
% ABCs File Testing:
%	ABCs_hw03_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW03_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Vectors and Strings
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
%% Function Name: weatherStats
%
% Test Cases:
% [out1] = weatherStats([45, 46, 48, 52, 53, 50, 47, 42], 'SUNNY')
% 	out1 => Today's weather was sunny, with a high temperature of 53 degrees and an average temperature of 48 degrees.
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out2] = weatherStats([20.5, 21.2, 24.6, 25.5, 29.3], 'COLD AND WINDY')
% 	out2 => Today's weather was cold and windy, with a high temperature of 29 degrees and an average temperature of 24 degrees.
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out3] = weatherStats([81, 84, 87, 86, 88, 90], 'HUMID')
% 	out3 => Today's weather was humid, with a high temperature of 90 degrees and an average temperature of 86 degrees.
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: sweaterWeather
%
% Test Cases:
% [woven1] = sweaterWeather('Tebs iet erasrpdsetri l h ie', 'h ettm owa  tie wae saltetm!')
% 	woven1 => The best time to wear a striped sweater is all the time!
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [woven2] = sweaterWeather('tcycrsmssetr', 'ak hita waes')
% 	woven2 => tacky christmas sweaters
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [woven3] = sweaterWeather('cl ete  wae ete', 'odwahr=setrwahr')
% 	woven3 => cold weather = sweater weather
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: airContour
%
% Test Cases:
% [change1] = airContour([1,2,3], [3,2,3])
% 	change1 =>      1
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [change2] = airContour([12,17,10,8], [2,12,11,3])
% 	change2 =>      0
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [change3] = airContour([8,13,14,10,20,8], [36,37,42,40,42,43])
% 	change3 =>      1
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: forecast
%
% Test Cases:
% [out1] = forecast('I dislike cold weather.', 'dislike', 'enjoy')
% 	out1 => I enjoy cold weather.
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out2] = forecast('CS1371 homework is the worst!', 'worst', 'best')
% 	out2 => CS1371 homework is the best!
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out3] = forecast('u(sic)ga won the National Championship.', 'won', 'lost')
% 	out3 => u(sic)ga lost the National Championship.
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: coldWar
%
% Test Cases:
% [word1] = coldWar('utymcg', -16, 20)
% 	word1 => enigma
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [word2] = coldWar('qvzk', 12, 45)
% 	word2 => cold
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [word3] = coldWar('msqhxsh', 10, -14)
% 	word3 => weather
% 		Output variable(s) should be identical to that produced by the solution file
%
