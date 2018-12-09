%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Micaiah Smith-Pierce
% GT Email     : mcsp3@gatech.edu
% Homework     : HW12 original
% Course       : CS1371
% Section      : B01
% Collaboration: I worked on the homework assignment alone, using
%                only course materials.
%
% Files to submit:
%	ABCs_recursion.m
%	deepestPath.m
%	hw12.m
%	lostWoods.m
%	palingrove.m
%	runeScape.m
%	sumtorial.m
%	treeFarm.m
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
% Part of this homework is an m-file called "ABCs_recursion.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_recursion.m

%
% ABCs File Testing:
%	ABCs_hw12_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW12_DrillProblems.pdf",
% containing instructions for 6 drill problems that cover the
% following topic:
%
%	Recursion
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
%% Function Name: sumtorial
%
% Test Cases:
% [sum1] = sumtorial(4)
% 	sum1 =>     10
% 
% [sum2] = sumtorial(14)
% 	sum2 =>    105
% 
% [sum3] = sumtorial(56)
% 	sum3 =>         1596
%
%--------------------------------------------------------------------------------
%% Function Name: palingrove
%
% Setup:
%	load groves.mat
%
% Test Cases:
% [newGrove1] = palingrove(grove1)
% 	newGrove1 =>  
%     'Maple'     'Apple'      'Apple'      'Maple' 
%     'Orange'    'Sequoia'    'Sequoia'    'Orange'
% 
% [newGrove2] = palingrove(grove2)
% 	newGrove2 =>  
%     'Cherry'
%     'Pine'  
%     'Maple' 
% 
% [newGrove3] = palingrove(grove3)
% 	newGrove3 =>  
%     'Redwood'      'Pine'    'Palm'      'Pine'    'Redwood'  
%     'Maple'        'Palm'    'Cherry'    'Palm'    'Maple'    
%     'Pineapple'    'Fig'     'Fig'       'Fig'     'Pineapple'
%
%--------------------------------------------------------------------------------
%% Function Name: deepestPath
%
% Test Cases:
% [out1] = deepestPath({{'tree'},{'tree',{{'tree'}}},'tree',{'tree','tree','tree'}})
% 	out1 => The deepest path is 4 cells deep.
% 
% [out2] = deepestPath({'tree',{'tree',{'tree',{'tree',{'tree',{'tree'}}}}}})
% 	out2 => The deepest path is 6 cells deep.
% 
% [out3] = deepestPath({{'tree',{{'tree','tree',{{{'tree'}},{{{'tree'}},'tree'}},'tree'}},'tree'},'tree'})
% 	out3 => The deepest path is 8 cells deep.
%
%--------------------------------------------------------------------------------
%% Function Name: treeFarm
%
% Test Cases:
% [tree1] = treeFarm(5, '!')
% 	tree1 =>  
%     !    
%    ! !   
%   ! ! !  
%  ! ! ! ! 
% ! ! ! ! !
% 
% [tree2] = treeFarm(10, '%')
% 	tree2 =>  
%          %         
%         % %        
%        % % %       
%       % % % %      
%      % % % % %     
%     % % % % % %    
%    % % % % % % %   
%   % % % % % % % %  
%  % % % % % % % % % 
% % % % % % % % % % %
% 
% [tree3] = treeFarm(35, 'w')
% 	tree3 =>  
%                                   w                                  
%                                  w w                                 
%                                 w w w                                
%                                w w w w                               
%                               w w w w w                              
%                              w w w w w w                             
%                             w w w w w w w                            
%                            w w w w w w w w                           
%                           w w w w w w w w w                          
%                          w w w w w w w w w w                         
%                         w w w w w w w w w w w                        
%                        w w w w w w w w w w w w                       
%                       w w w w w w w w w w w w w                      
%                      w w w w w w w w w w w w w w                     
%                     w w w w w w w w w w w w w w w                    
%                    w w w w w w w w w w w w w w w w                   
%                   w w w w w w w w w w w w w w w w w                  
%                  w w w w w w w w w w w w w w w w w w                 
%                 w w w w w w w w w w w w w w w w w w w                
%                w w w w w w w w w w w w w w w w w w w w               
%               w w w w w w w w w w w w w w w w w w w w w              
%              w w w w w w w w w w w w w w w w w w w w w w             
%             w w w w w w w w w w w w w w w w w w w w w w w            
%            w w w w w w w w w w w w w w w w w w w w w w w w           
%           w w w w w w w w w w w w w w w w w w w w w w w w w          
%          w w w w w w w w w w w w w w w w w w w w w w w w w w         
%         w w w w w w w w w w w w w w w w w w w w w w w w w w w        
%        w w w w w w w w w w w w w w w w w w w w w w w w w w w w       
%       w w w w w w w w w w w w w w w w w w w w w w w w w w w w w      
%      w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w     
%     w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w    
%    w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w   
%   w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w  
%  w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w 
% w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w w
%
%--------------------------------------------------------------------------------
%% Function Name: runeScape
%
% Setup:
%	load runescape_test.mat
%
% Test Cases:
% [out1] = runeScape(charStruct1, itemStruct1)
% 	out1 => bob needs 29185661 more experience points to use the rune platebody.
% 
% [out2] = runeScape(charStruct2, itemStruct2)
% 	out2 => ~epicKiller420~ needs 0 more experience points to use the yew longbow.
% 
% [out3] = runeScape(charStruct3, itemStruct3)
% 	out3 => bestPKerEver99 needs 87862910 more experience points to use the void mace.
% 
% [out4] = runeScape(charStruct4, itemStruct4)
% 	out4 => zezima needs 60593697735 more experience points to use the cabbage.
%
%--------------------------------------------------------------------------------
%% Function Name: lostWoods
%
% Setup:
%	load start.mat
%
% Test Cases:
% lostWoods('maze1.png', r1, c1)
% 		Output image(s) should be identical to that produced by solution file
% 
% lostWoods('maze2.png', r2, c2)
% 		Output image(s) should be identical to that produced by solution file
% 
% lostWoods('maze3.png', r3, c3)
% 		Output image(s) should be identical to that produced by solution file
% 
% lostWoods('maze4.png', r4, c4)
% 		Output image(s) should be identical to that produced by solution file
%
