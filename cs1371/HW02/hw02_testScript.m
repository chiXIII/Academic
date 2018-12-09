%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Homework 2 Test Script
%   This is an example of a test script designed to show you how to test
%   your code. In future homeworks, you can create this yourself.
%
% Instructions
%   The following commented lines of code show you how to test your code
%   against the solution code and to compare the outputs using isequal()
%   
%   Uncomment the section that you want to test and run the script
%   If the match variable, which is the output of isequal() is a logical 1,
%   which is a true, that means that your code's output matches the 
%   solution code's output for that test case.
%
%   Remember that you can (and should) test your code with more than the
%   sample test cases given!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
%% Function Name: fallTime
%
% Test Cases:
% [time1] = fallTime(5)
% [time1_soln] = fallTime_soln(5)
% match1 = isequal(time1, time1_soln)
% 
% [time2] = fallTime(20)
% [time2_soln] = fallTime_soln(20)
% match2 = isequal(time2, time2_soln)
% 	
% [time3] = fallTime(50)
% [time3_soln] = fallTime_soln(50)	
% match3 = isequal(time3, time3_soln)
%--------------------------------------------------------------------------------
%% Function Name: cartDist
%
% Test Cases:
% [out1] = cartDist(4, 5, 7, 9)
% [out1_soln] = cartDist_soln(4, 5, 7, 9)
% match1 = isequal(out1, out1_soln)
%
% [out2] = cartDist(4, 3, -7, -10)
% [out2_soln] = cartDist_soln(4, 3, -7, -10)
% match2 = isequal(out2, out2_soln)
%
% [out3] = cartDist(0, 0, 0, 0)
% [out3_soln] = cartDist_soln(0, 0, 0, 0)	
% match3 = isequal(out3, out3_soln)
%--------------------------------------------------------------------------------
%% Function Name: timeDilation
%
% Test Cases:
% [time1] = timeDilation(11, 1000000)
% [time1_soln] = timeDilation_soln(11, 1000000)
% match1 = isequal(time1, time1_soln)
%  
% [time2] = timeDilation(500, 2222222)
% [time2_soln] = timeDilation_soln(500, 2222222)
% match2 = isequal(time2, time2_soln)
% 
% [time3] = timeDilation(100, 5000000)
% [time3_soln] = timeDilation_soln(100, 5000000)
% match3 = isequal(time3, time3_soln)
%--------------------------------------------------------------------------------
%% Function Name: spaceTime
%
% Test Cases:
% [years1] = spaceTime(1, 228e9, 6.39e23)
% [years1_soln] = spaceTime_soln(1, 228e9, 6.39e23)
% match1 = isequal(years1, years1_soln)
%
% [years2] = spaceTime(1, 108e9, 4.87e24)
% [years2_soln] = spaceTime_soln(1, 108e9, 4.87e24)
% match2 = isequal(years2, years2_soln)
%
% [years3] = spaceTime(7, 57.9e9, 3.3e23)
% [years3_soln] = spaceTime_soln(7, 57.9e9, 3.3e23)
% match3 = isequal(years3, years3_soln)
% 	
% [years4] = spaceTime(5000, 7.573e13, 1e21)
% [years4_soln] = spaceTime_soln(5000, 7.573e13, 1e21)
% match4 = isequal(years4, years4_soln)
% 	
%--------------------------------------------------------------------------------
%% Function Name: clockHands
%
% Test Cases:
% [out1, out2] = clockHands(6, 45, 10)
% [out1_soln, out2_soln] = clockHands_soln(6, 45, 10)
% match1a = isequal(out1, out1_soln)
% match1b = isequal(out2, out2_soln)
% match1 = match1a & match1b
%
% [out3, out4] = clockHands(4, 45, -30)
% [out3_soln, out4_soln] = clockHands_soln(4, 45, -30) 	
% match2a = isequal(out3, out3_soln)
% match2b = isequal(out4, out4_soln)
% match2 = match2a & match2b
%
% [out5, out6] = clockHands(1, 10, -134)
% [out5_soln, out6_soln] = clockHands_soln(1, 10, -134)
% match3a = isequal(out5, out5_soln)
% match3b = isequal(out6, out6_soln)
% match3 = match3a & match3b
