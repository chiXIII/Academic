%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Micaiah Smith-Pierce
% GT Email     : mcsp3@gatech.edu
% Homework     : HW11 original
% Course       : CS1371
% Section      : B01
% Collaboration: I worked on the homework assignment alone, using
%                only course materials.
%
% Files to submit:
%	ABCs_numericalMethods.m
%	ABCs_plotting.m
%	crimeStats.m
%	hw11.m
%	integrals.m
%	physics.m
%	roots.m
%	stockExchange.m
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
% Part of this homework are m-files called "ABCs_plotting.m" and "ABCs_numericalMethods.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_plotting.m
%	ABCs_numericalMethods.m
%
% ABCs File Testing:
%	ABCs_hw11_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW11_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topics:
%
%	Plotting
%	Numerical Methods
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
%% Function Name: physics
%
% Setup:
%	load physicsTest.mat
%
% Test Cases:
% physics(times1, velocity1, 1)
% 		Output plot(s) should be identical to that produced by solution file
% 
% physics(times2, velocity2, 4)
% 		Output plot(s) should be identical to that produced by solution file
% 
% physics(times3, velocity3, 2)
% 		Output plot(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: stockExchange
%
% Setup:
%	load NYSE.mat
%
% Test Cases:
% [data1] = stockExchange(stocks1)
% 	data1 =>  
%   Columns 1 through 3                                                         
%                          1                         2                         3
%                     524.44                    503.81                    514.82
%   Columns 4 through 6                                                         
%                          4                         5                         6
%                      527.4                    518.97                    502.93
%   Columns 7 through 9                                                         
%                          7                         8                         9
%                     508.35                    516.41                    528.73
%   Columns 10 through 12                                                       
%                         10                        11                        12
%                     528.95                    504.73                    529.12
%   Columns 13 through 15                                                       
%                         13                        14                        15
%                     528.72                    514.56                    524.01
%   Columns 16 through 18                                                       
%                         16                        17                        18
%                     504.26                    512.65                    527.47
%   Columns 19 through 21                                                       
%                         19                        20                        21
%                     523.77                    528.78                    519.67
%   Columns 22 through 24                                                       
%                         22                        23                        24
%                     501.07                    525.47                    528.02
%   Columns 25 through 27                                                       
%                         25                        26                        27
%                     520.36                    522.73                    522.29
%   Columns 28 through 30                                                       
%                         28                        29                        30
%                     511.77                    519.66                    505.14
% 
% [data2] = stockExchange(stocks2)
% 	data2 =>  
%   Columns 1 through 3                                                         
%                          1                         2                         3
%                      28.38                     28.27                     30.65
%   Columns 4 through 6                                                         
%                          4                         5                         6
%                       31.9                     32.67                     28.65
%   Columns 7 through 9                                                         
%                          7                         8                         9
%                      30.84                     30.35                     28.06
%   Columns 10 through 12                                                       
%                         10                        11                        12
%                      29.69                     28.81                     31.97
%   Columns 13 through 15                                                       
%                         13                        14                        15
%                      32.81                     30.64                     28.83
%   Columns 16 through 18                                                       
%                         16                        17                        18
%                      31.01                     29.31                     31.27
%   Columns 19 through 21                                                       
%                         19                        20                        21
%                      31.45                     31.74                     30.25
%   Columns 22 through 24                                                       
%                         22                        23                        24
%                      28.42                     29.14                     32.57
%   Columns 25 through 27                                                       
%                         25                        26                        27
%                      28.76                     32.13                     37.07
%   Column 28                                                                   
%                         28                                                    
%                      30.69                                                    
% 
% [data3] = stockExchange(stocks3)
% 	data3 =>  
%   Columns 1 through 3                                                         
%                          1                         2                         3
%                     221.64                    154.43                    151.07
%   Columns 4 through 6                                                         
%                          4                         5                         6
%                     159.62                    150.05                    158.17
%   Columns 7 through 9                                                         
%                          7                         8                         9
%                     163.38                    158.69                    150.84
%   Columns 10 through 12                                                       
%                         10                        11                        12
%                        154                     152.6                       158
%   Columns 13 through 15                                                       
%                         13                        14                        15
%                     154.31                    159.11                    151.82
%   Columns 16 through 18                                                       
%                         16                        17                        18
%                     152.64                    151.46                    151.36
%   Columns 19 through 21                                                       
%                         19                        20                        21
%                     158.69                     155.8                     155.5
%   Columns 22 through 24                                                       
%                         22                        23                        24
%                     151.45                    158.53                    156.22
%   Columns 25 through 27                                                       
%                         25                        26                        27
%                     153.51                    155.13                    154.02
%   Columns 28 through 30                                                       
%                         28                        29                        30
%                     150.76                     152.4                    151.23
%   Column 31                                                                   
%                         31                                                    
%                     151.84                                                    
%
%--------------------------------------------------------------------------------
%% Function Name: crimeStats
%
% Test Cases:
% crimeStats([1994,1995,2013], 'Population', 'Type 1')
% 		Output plot(s) should be identical to that produced by solution file
% 
% crimeStats([1994,1995,2013, 2002, 1998], 'Robbery', 'Type 2')
% 		Output plot(s) should be identical to that produced by solution file
% 
% crimeStats([1994,1995,2013, 2002, 1998 1995 2001], 'Burglary', 'Type 3')
% 		Output plot(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: roots
%
% Test Cases:
% [out1] = roots([1 2 3 4 5], [-3 -2 -1 0 1], 1, 5)
% 	out1 =>      4
% 
% [out1] = roots([1 10 100], [1 18 34], -5, 5)
% 	out1 =>                       0.51
% 
% [out1] = roots([30 40 50 60], [-16 5 10 15], 20, 40)
% 	out1 =>                      36.33
%
%--------------------------------------------------------------------------------
%% Function Name: integrals
%
% Setup:
%	load integrals_student.mat
%
% Test Cases:
% [area1] = integrals(int1, int2)
% 	area1 =>                      199.5
% 		Output plot(s) should be identical to that produced by solution file
% 
% [area2] = integrals(int3, int4)
% 	area2 =>         2600
% 		Output plot(s) should be identical to that produced by solution file
% 
% [area3] = integrals(int4, int3)
% 	area3 =>         2600
% 		Output plot(s) should be identical to that produced by solution file
% 
% [area4] = integrals(int5, int6)
% 	area4 =>                     2221.5
% 		Output plot(s) should be identical to that produced by solution file
%
