clc; clear;

% data is here: https://github.com/Jonathan-Gould/ngp-matlab-bootcamp

%% ----------------------- Lesson 6 -----------------------

% This dataset contains the following 5 variables:

% -Sampling_rate: the samples per second that the data was acquired at

% -Fluorescence: a photometry trace recorded from mouse lateral hypothalamus

% -Ensure_full: a trace showing when the solenoid regulating the flow of 
% ensure was open (0=closed, 5=open)

% -Ensure_idx: the times (in samples) when the Ensure solenoid opened
% (derived from Ensure_full)

% -Lick_full: a trace showing when the mouse's tongue broke an IR beam
% (0=no lick, 1=lick)

%% Plot each variable to inspect the data


%% Normalize the Fluorescence data
% Delta F over F (dF/F) - each point in the fluorescence trace should have
% the F0 subtracted, then divided. In this case let's set the F0 as the 
% 30th percentile of the entire Fluorescence trace


%% Mark the times of the Ensure events using `xline`


%% Plot the change in fluorescence around the first Ensure reward
% how long before/after each ensure reward do you want to look?


%% Plot the change in fluorescence around ensure availability for all trials
% how long before/after each ensure reward do you want to look?


%% Plot the change in fluorescence around licks


%% Quantify how the fluorescence changes in response to the first Ensure reward


%% Quantify how the fluorescence changes in response to all Ensure rewards


%% Quantify how the fluorescence changes in response to all lick events

