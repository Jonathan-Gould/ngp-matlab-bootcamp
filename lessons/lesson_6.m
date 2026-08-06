%% ----------------------- PROBLEM SET #4 -----------------------

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



plot(Fluorescence)



%% ----------------------- PROBLEM 4.2 -----------------------
% Process the Fluorescence data

% Delta F over F (dF/F) - each point in the fluorescence trace should have
% the F0 subtracted, then divided. In this case let's set the F0 as the 
% 30th percentile of the entire Fluorescence trace

F0 = quantile(Fluorescence, .3);
normalized_flouresence = (Fluorescence - F0) / F0;



%% ----------------------- PROBLEM 4.3 -----------------------
% Plot the change in fluorescence around ensure availability
% how long before/after each ensure reward do you want to look?





%% ----------------------- PROBLEM 4.4 ----------------------- 
% Demonstrate how the fluorescence changes in response to Ensure rewards






%% ----------------------- PROBLEM 4.5 ----------------------- 
% Demonstrate how lick rate changes in response to Ensure rewards










