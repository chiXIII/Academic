%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Micaiah Smith-Pierce
% GT Email     : mcsp3@gatech.edu
% Homework     : HW09 original
% Course       : CS1371
% Section      : B01
% Collaboration: I worked on the homework assignment alone, using
%                only course materials.
%
% Files to submit:
%	ABCs_cellArrays.m
%	ABCs_highLevelFileIO.m
%	asciiGarden.m
%	celery.m
%	hw09.m
%	myCabbages.m
%	onions.m
%	shallots.m
%	veggieParty.m
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
% Part of this homework are m-files called "ABCs_highLevelFileIO.m" and "ABCs_cellArrays.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_highLevelFileIO.m
%	ABCs_cellArrays.m
%
% ABCs File Testing:
%	ABCs_hw09_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW09_DrillProblems.pdf",
% containing instructions for 6 drill problems that cover the
% following topic:
%
%	High Level File I/O
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
%% Function Name: shallots
%
% Test Cases:
% [layers1] = shallots({{{{{{{{{{'shallot'}}}}}}}}}})
% 	layers1 =>     10
% 
% [layers2] = shallots({{{'shallots'}}})
% 	layers2 =>      3
% 
% [layers3] = shallots({{{{{{'sHaLLoTs'}}}}}})
% 	layers3 =>      6
%
%--------------------------------------------------------------------------------
%% Function Name: myCabbages
%
% Setup:
%	load cabbages.mat
%
% Test Cases:
% [arr1] = myCabbages(cabbages1)
% 	arr1 =>  
%     'Savoy'         [ 3]    [ 1]
%     'Napa'          [ 2]    [ 2]
%     'Chinese'       [ 5]    [ 3]
%     'Total loss'    [10]    [22]
% 
% [arr2] = myCabbages(cabbages2)
% 	arr2 =>  
%     'Savoy'         [ 17]    [  0.99]
%     'Napa'          [ 29]    [  1.23]
%     'Tuscan'        [ 31]    [  1.58]
%     'Bok Choy'      [ 15]    [  1.89]
%     'Red'           [ 24]    [  3.11]
%     'Total loss'    [116]    [204.47]
% 
% [arr3] = myCabbages(cabbages3)
% 	arr3 =>  
%     'Tuscan'           [ 37]    [  0.98]
%     'Chinese'          [ 43]    [  1.22]
%     'Danish'           [ 48]    [   1.3]
%     'Gai Choy'         [ 40]    [  1.59]
%     'Baby Bok Choy'    [ 19]    [  1.64]
%     'Gonzales'         [ 24]    [  2.13]
%     'Red'              [ 31]    [  2.55]
%     'Green'            [ 29]    [  2.84]
%     'Total loss'       [271]    [458.41]
%
%--------------------------------------------------------------------------------
%% Function Name: onions
%
% Setup:
%	load onions_test.mat
%
% Test Cases:
% [pos1, layer1] = onions(arr1)
% 	pos1 =>      1     3
% 	layer1 =>      4
% 
% [pos2, layer2] = onions(arr2)
% 	pos2 =>      3     1
% 	layer2 =>      6
% 
% [pos3, layer3] = onions(arr3)
% 	pos3 =>      2     2
% 	layer3 =>      5
%
%--------------------------------------------------------------------------------
%% Function Name: asciiGarden
%
% Test Cases:
% asciiGarden('gar1.xlsx')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% asciiGarden('gar2.xlsx')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% asciiGarden('gar3.xlsx')
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: veggieParty
%
% Setup:
%	load dishRatings.mat
%
% Test Cases:
% [sorted1, ingredients1] = veggieParty(dishCA1, 'Yelp', 'ingredients.txt')
% 	sorted1 =>  
%     'Dish'                        'Michelin'    'Yelp'
%     'stuffing'                    [      82]    [  66]
%     'guacamole'                   [      73]    [  52]
%     'butternut squash ravioli'    [      82]    [  15]
% 	ingredients1 =>     'onions'    'celery'    'bread crumbs'
% 
% [sorted2, ingredients2] = veggieParty(dishCA2, 'Mom', 'ingredients.txt')
% 	sorted2 =>  
%     'Dish'              'Thrillist'    'Mom'    'Cafeteria Lady'
%     'giadiniera'        [       45]    [100]    [            15]
%     'mac and cheese'    [       51]    [ 87]    [            66]
%     'gnocchi'           [       64]    [ 64]    [            61]
%     'orzo salad'        [       96]    [ 36]    [            39]
%     'stuffing'          [       86]    [  7]    [            23]
% 	ingredients2 =>     'peppers'    'jalapeno'    'celery'    'carrot'    'onion'
% 
% [sorted3, ingredients3] = veggieParty(dishCA3, 'Gordon Ramsay', 'ingredients.txt')
% 	sorted3 =>  
%   Columns 1 through 3                                     
%     'Dish'                        'Thrillist'    'Grandma'
%     'margarita pizza'             [       71]    [     36]
%     'lentil shepherd's pie'       [       56]    [     69]
%     'butternut squash ravioli'    [       18]    [     34]
%     'broccoli penne'              [       63]    [     84]
%     'quinoa bowl'                 [       99]    [     60]
%     'asparagus carbonara'         [       26]    [     99]
%     'baked tomatoes'              [       92]    [     88]
%     'vegetarian posole'           [       22]    [     41]
%     'stuffing'                    [       20]    [     40]
%     'veggie stir-fry'             [       32]    [     30]
%     'ratatouille'                 [       32]    [      8]
%     'mac and cheese'              [       90]    [     41]
%     'mushroom bolognese'          [       71]    [     63]
%     'egplant parmesan'            [       32]    [     69]
%     'vegetable paella'            [        8]    [     76]
%     'chips and salsa'             [       17]    [     26]
%     'guacamole'                   [       22]    [     17]
%     'orzo salad'                  [       17]    [     54]
%     'tofu tacos'                  [       56]    [     16]
%     'vegetable risotto'           [       19]    [     39]
%   Columns 4 through 6                                     
%     'Gordon Ramsay'    'Yelp'    'Michelin'               
%     [           96]    [  16]    [      93]               
%     [           94]    [  96]    [      80]               
%     [           79]    [  75]    [      23]               
%     [           77]    [   4]    [      26]               
%     [           76]    [  81]    [      76]               
%     [           75]    [  10]    [      42]               
%     [           66]    [  71]    [      17]               
%     [           56]    [  22]    [      40]               
%     [           46]    [  11]    [      53]               
%     [           45]    [  55]    [      58]               
%     [           43]    [  69]    [      33]               
%     [           42]    [  83]    [      19]               
%     [           41]    [  18]    [      26]               
%     [           36]    [  47]    [      55]               
%     [           32]    [  52]    [      94]               
%     [           30]    [  75]    [      13]               
%     [           29]    [  90]    [      66]               
%     [           25]    [  68]    [      45]               
%     [           13]    [  17]    [       3]               
%     [            3]    [  67]    [      93]               
% 	ingredients3 =>     'tomatoes'    'pizza dough'    'garlic'    'basil'    'mozzarella'
%
%--------------------------------------------------------------------------------
%% Function Name: celery
%
% Test Cases:
% celery('Twinkle.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% celery('CarelessWhisper.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% celery('BeeMovie.txt')
% 		Output text file(s) should be identical to that produced by the solution file
%
