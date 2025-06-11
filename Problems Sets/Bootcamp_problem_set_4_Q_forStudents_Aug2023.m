% Problem set 4
% C Burgess & K Furman
% updated 220725

% Suggested reading: Sensory Detection of Food Rapidly Modulates
% Arcuate Feeding Circuits
% Chen et al., 2015


% Many good functions have been made by the Matlab community and uploaded 
% for use by anyone (https://www.mathworks.com/matlabcentral/fileexchange/) 
% These are some plotting functions I have found to be 
% particularly useful for neuroscience:

% -Barwitherr
% -Shadederrorbar

%% ----------------------- PROBLEM SET #4 -----------------------

% Import Problem_set_4_data

% This dataset contains the following 5 variables:

% -Sampling_rate: the samples per second that the data was acquired at

% -Fluorescence: a photometry trace recorded from mouse lateral hypothalamus

% -Ensure_full: a trace showing when the solenoid regulating the flow of 
% ensure was open (0=closed, 5=open)

% -Ensure_idx: the times (in samples) when the Ensure solenoid opened
% (derived from Ensure_full)

% -Lick_full: a trace showing when the mouse's tongue broke an IR beam
% (0=no lick, 1=lick)

%% ----------------------- PROBLEM 4.1 -----------------------
% Plot each variable to inspect the data





%% ----------------------- PROBLEM 4.2 -----------------------
% Process the Fluorescence data

% Delta F over F (dF/F) - each point in the fluorescence trace should have
% the F0 subtracted, then divided. In this case lets set the F0 as the 30th
% percentile of the entire Fluorescence trace



%% ----------------------- PROBLEM 4.3 -----------------------
% Calculate the change in fluorescence around ensure availability
% how long before/after each ensure reward do you want to look?


% find dF/F values around each ensure








%% ----------------------- PROBLEM 4.4 ----------------------- 
%Demonstrate how the fluorescence changes in response to Ensure rewards








%% ----------------------- PROBLEM 4.5 ----------------------- 
% Demonstrate how lick rate changes in response to Ensure rewards










