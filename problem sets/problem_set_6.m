% J Gould, C Burgess
% updated 260806

% data is here: https://github.com/Jonathan-Gould/ngp-matlab-bootcamp

% Suggested reading: Functional imaging with cellular
% resolution reveals precise microarchitecture in visual cortex
% Ohki et al., 2005


%%                              Problem set 6
% We will be using flouresence_data.mat for this problem set.

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


%% Initial data processing:
% Calculate the dF/F for each trace, using an F0 of the 30th percentile of
% the trace.
% `quantile(Fluo_traces, .3, ?)` will operate over either rows or columns


%% Visual response
% Visualize a neuron's dFF trace and the visual stimulation onsets to
% observe whether it is visually responsive. Now do this for some other 
% traces.


%% Functions
% Put your code from the previous problem into a function, and repeat the
% analysis.


%% Define a metric to quantify how visually responsive a neuron is
% Maybe put this metric in a function?


%% Apply your metric to all of the neurons. Which neuron is most responsive?



%% Do some neurons respond to some directions of stimulation and not others?



%% What does an average response look like?



%% Do some neurons respond to similar kinds of stimulations?
% Does this tuning continuously vary, or are there groups?



%% Feel free to explore your own analyses here!

