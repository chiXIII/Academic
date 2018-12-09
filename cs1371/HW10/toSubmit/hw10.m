%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Micaiah Smith-Pierce
% GT Email     : mcsp3@gatech.edu
% Homework     : HW10 original
% Course       : CS1371
% Section      : B01
% Collaboration: I worked on the homework assignment alone, using
%                only course materials.
%
% Files to submit:
%	ABCs_structureArrays.m
%	ABCs_structures.m
%	birdNest.m
%	garfield.m
%	hw10.m
%	schrodingersCat.m
%	tomAndJerry.m
%	warriors.m
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
% Part of this homework are m-files called "ABCs_structures.m" and "ABCs_structureArrays.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_structures.m
%	ABCs_structureArrays.m
%
% ABCs File Testing:
%	ABCs_hw10_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW10_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Structures
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
%% Function Name: tomAndJerry
%
% Setup:
%	load tomTests.mat
%
% Test Cases:
% [newTom1] = tomAndJerry(tom1, new1, toRemove1)
% 	newTom1 =>  
%      Cleverness: 42         
%     Gullibility: 'near zero'
% 
% [newTom2] = tomAndJerry(tom2, new2, toRemove2)
% 	newTom2 =>  
%         Planning: 'Respectable'                           
%          Running: 'Speed of light'                        
%         Cuteness: 'Ehhh'                                  
%     MATLABskills: 'Better than Smith and Kantwon combined'
% 
% [newTom3] = tomAndJerry(tom3, new3, toRemove3)
% 	newTom3 =>  
%       Cleverness: 56                       
%               IQ: 140                      
%      Gullibility: 'Near zero'              
%         Sleeping: 'Always alert'           
%          Bravery: 'Enough'                 
%     Coordination: 'Amazing'                
%       Creativity: 'Some'                   
%        Endurance: 'Definition of greatness'
%          Fitness: 'Faster than Usain Bolt' 
%         Reflexes: 'Like a cat'             
%
%--------------------------------------------------------------------------------
%% Function Name: garfield
%
% Setup:
%	load ladyCats.mat
%
% Test Cases:
% [out1] = garfield(st1)
% 	out1 => Structure array should be identical to that produced by solution file
% 
% [out2] = garfield(st2)
% 	out2 => Structure array should be identical to that produced by solution file
% 
% [out3] = garfield(st3)
% 	out3 => Structure array should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: birdNest
%
% Setup:
%	load birdNest_test.mat
%
% Test Cases:
% [result1] = birdNest(rooms1)
% 	result1 => After an epic chase spanning 2 rooms, the cats found the bird in IC 114!
% 
% [result2] = birdNest(rooms2)
% 	result2 => After an epic chase spanning 1 rooms, the cats found the bird in IC 203!
% 
% [result3] = birdNest(rooms3)
% 	result3 => It was a stunning chase, but the bird escaped.
% 
% [result4] = birdNest(rooms4)
% 	result4 => After an epic chase spanning 90 rooms, the cats found the bird in IC 210!
%
%--------------------------------------------------------------------------------
%% Function Name: warriors
%
% Setup:
%	load warriorClans.mat
%
% Test Cases:
% [updatedClans1, result1] = warriors(clans1, 'Agility')
% 	updatedClans1 => Structure array should be identical to that produced by solution file
% 	result1 => Following the warrior code, fearless leader Bluestar led ThunderClan to victory against ShadowClan.
% 
% [updatedClans2, result2] = warriors(clans2, 'Courage')
% 	updatedClans2 => Structure array should be identical to that produced by solution file
% 	result2 => Following the warrior code, fearless leader Skystar led SkyClan to victory against ShadowClan.
% 
% [updatedClans3, result3] = warriors(clans3, 'Coolness')
% 	updatedClans3 => Structure array should be identical to that produced by solution file
% 	result3 => Following the warrior code, fearless leader The Spirit of The Warrior Code led StarClan to victory against RiverClan.
%
%--------------------------------------------------------------------------------
%% Function Name: schrodingersCat
%
% Setup:
%	load schrodinger_test.mat
%
% Test Cases:
% [str1] = schrodingersCat(arr1, start1)
% 	str1 => The dead cat was found at position (1,2) after 6 steps.
% 
% [str2] = schrodingersCat(arr2, start2)
% 	str2 => The dead cat was found at position (4,11) after 69 steps.
% 
% [str3] = schrodingersCat(arr3, start3)
% 	str3 => The dead cat was found at position (14,2) after 295 steps.
%
