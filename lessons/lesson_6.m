clc; clear;

% data is here: https://github.com/Jonathan-Gould/ngp-matlab-bootcamp

load("/Users/jgould/Documents/MATLAB/NGP_Matlab_Bootcamp/data/lesson_6_data.mat");

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

figure;
plot(Fluorescence);
xlabel('samples')
ylabel('flourescence (mV)')
title('Single-neuron flourescence over time')


figure;
plot(Lick_full);
xlabel('samples')
ylabel('lick variable (V)')
title('Licking over time')

%% Normalize the Fluorescence data
% Delta F over F (dF/F) - each point in the fluorescence trace should have
% the F0 subtracted, then divided. In this case let's set the F0 as the 
% 30th percentile of the entire Fluorescence trace

F0 = prctile(Fluorescence, 30);

dFF = (Fluorescence - F0) / F0;


%% Mark the times of the Ensure events using `xline`

figure;
plot(dFF);

hold on;
for i = 1:size(Ensure_idx, 1)
    xline(Ensure_idx(i));
end
hold off;


%% Plot the change in fluorescence around the first Ensure reward
% how long before/after each ensure reward do you want to look?

figure;
hold on;
for event_n = 1:size(Ensure_idx, 1)
    event_t = Ensure_idx(event_n);
    
    dFF_slice = dFF(event_t-3*Sampling_rate : event_t + 5*Sampling_rate);
    
    plot(dFF_slice);
end
hold off;
xline(3*Sampling_rate + 1);
xlabel("time (ms)")
ylabel("dF/F")


%% Plot the change in fluorescence around ensure availability for all trials
% how long before/after each ensure reward do you want to look?
Lick_idx = find(Lick_full);

events = Lick_idx;

figure;
hold on;
for event_n = 1:size(events, 1)
    event_t = events(event_n);

    dFF_slice = dFF(event_t-3*Sampling_rate : event_t + 5*Sampling_rate);

    plot(dFF_slice);
end
hold off;
xline(3*Sampling_rate + 1);
xlabel("time (ms)")
ylabel("dF/F")

%%

plot_dFF_aligned_to_events(dFF, Lick_idx);


%%

function plot_dFF_aligned_to_events(dFF, events)

figure;
hold on;
for event_n = 1:size(events, 1)
    event_t = events(event_n);

    dFF_slice = dFF(event_t-3*Sampling_rate : event_t + 5*Sampling_rate);

    plot(dFF_slice);
end
hold off;
xline(3*Sampling_rate + 1);
xlabel("time (ms)")
ylabel("dF/F")

end

%% Plot the change in fluorescence around licks

function responses = quantify_responses(dFF, events, Sampling_rate)
responses = nan(size(events));
for event_n = 1:size(events, 1)
    event_t = events(event_n);

    pre_window = -3*Sampling_rate:0;
    post_window = 1:5 * Sampling_rate;

    pre_average = mean(dFF(pre_window + event_t));
    post_average = mean(dFF(post_window + event_t));
    responses(event_n) = post_average - pre_average;
end
end
%% Quantify how the fluorescence changes in response to the first Ensure reward
quantify_responses(dFF, events, Sampling_rate)

%% Quantify how the fluorescence changes in response to all Ensure rewards


%% Quantify how the fluorescence changes in response to all lick events

