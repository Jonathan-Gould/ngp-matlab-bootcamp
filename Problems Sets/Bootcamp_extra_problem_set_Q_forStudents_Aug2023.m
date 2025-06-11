% Problem set EXTRA
% C Burgess
% updated 240518

% Suggested reading: Functional imaging with cellular
% resolution reveals precise microarchitecture in visual cortex
% Ohki et al., 2005


% Many good functions have been made by the Matlab community and uploaded 
% for use by anyone (https://www.mathworks.com/matlabcentral/fileexchange/) 
% These are some plotting functions I have found to be 
% particularly useful for neuroscience:

% -Barwitherr
% -Shadederrorbar

%%                              Problem set #6
% Import extra_problem_set_data

% You can drag the .mat file into your Workspace
% You can also use the load function

% Data explanation:

% Processed two-photon imaging dataset from mouse visual cortex.
% 274 neurons' fluorescent activity was recorded as the mouse was shown
% visual stimuli in the form of 4 drifting visual gratings of different
% orientations. Each trial consists of a single presentation of a drifting 
% grating for 3s. 

% Data was acquired at ~16Hz. so every 16 data points = 1 second of time.

% You are given:
% -the neuron activity traces (Fluo_traces, 274 neurons
% recorded for 10000 samples), 
% -the onset time for each visual stimulus presentation(Visstim_onsets)
% -the identity of the visual grating that was shown
% at each of those onset times (Orientation_idx, 4 orientations at 180,
% 225, 270, 315 degrees)
% -the sampling rate (16 samples per second), 


%% Intial data processing:

% Calculate the dF/F for each trace, using an F0 of the 30th percentile of
% the trace.







%% Potential analyses:


% Visualize a neurons dFF trace and the visual stimulation onsets to
% observe whther it is visually responsive. Now do this for some other 
% traces.

% Are there neurons that are responsive to visual stimuli?

% Are there neurons that specifically respond to one or two of 
% the orientations but not the others?

% What does the timecourse of that average response look like?

% How many neurons significantly respond to any one stimulus?

%% space to work on analyses





