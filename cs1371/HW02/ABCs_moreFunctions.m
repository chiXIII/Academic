% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [A, B, C, D, E, F, G, H, I, J, K] = ABCs_moreFunctions(DNE)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABCs of Functions
%
% Directions: 
% Write the code to satisify the following directions. For each part, store
% your answer in the variable that is specified within the parentheses. 
%   Ex. Add 1 + 1. (GT)
% That means store the value of 1 + 1 in the variable GT. 


%% Part I. Function Headers. - True or False
% For the following function headers, answer
% true if they are valid, false otherwise.


% function myFunc = [in1 in2]
A = false;

% function out = myFunc
B = true;

% function [out two three] = myFunc(in)
C = true;

% function myFunc
D = true;

% function (out, two) = myFunc[in]
E = false;

%% Part II. Function Tracing
%   For this part, trace through the given code and figure out what values the
%   variables will have after the given commands are run. While you could copy
%   and paste the code in to the Command Window to run it, these are the exact
%   types of tracing questions asked on tests and you will not have the luxury
%   of running the code during a test!

%   Consider the following function and its helper function.

%   1   function pace = marathonRunner(miles,time)
%   2   pace = miles./time;
%   3   left = 1 - (mod(miles,26)/26);
%   4   speedUp(pace,5);
%   5   end
%   6
%   7   function speedUp(pace,amount)
%   8   pace = pace + amount;
%   9   end

%   The following code is written in the Command Window and runs without error:

%   >> mySpeed = marathonRunner(65,10);

%   Immediately after line 4 is run, identify the value of the following variables
%   in the marathonRunner function Workspace? Write DNE if a variable does not
%   exist in the marathonRunner Workspace.

% The value stored in 'pace'. (F) 
F = 6.5;

% The value stored in 'left'. (G)
G = 0.5;

% The value stored in 'amount'. (H)
H = DNE;


%   Consider the following function and its helper function. 
% 
%   1   function E = superFun(in1)
%   2   E = helper(in1);
%   3   end
%   4
%   5   function out3 = helper(in)
%   6   out3 = mod(in,2);
%   7   end

%   The following code is written in the Command Window and runs without error:

%   >> E = 4;
%   >> F = superFun(E*2);

%   Identify the value of the variable E in each of the following Workspaces.
%   Write DNE if E is not defined in a particular Workspace.

% The value of E in the Command Window workspace is:
I = 4;

% The value of E in the superFun function Workspace is:
J = 0;

% The value of E in the helper function Workspace is:
K = DNE;
end
