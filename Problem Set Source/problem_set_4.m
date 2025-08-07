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


% SOLUTION {
load('problem_set_4_data.mat');
% SOLUTION }

% SOLUTION {
figure;
t = (1:size(Ensure_full,1))'/Sampling_rate;

ax1 = subplot(3,1,1);
plot(t,Fluorescence, 'k');

ax2 = subplot(3,1,2);
plot(t,Ensure_full);

ax3 = subplot(3,1,3);
plot(t,Lick_full);

linkaxes([ax1, ax2, ax3], 'x')

% SOLUTION }


%% ----------------------- PROBLEM 4.2 -----------------------
% Process the Fluorescence data

% Delta F over F (dF/F) - each point in the fluorescence trace should have
% the F0 subtracted, then divided. In this case lets set the F0 as the 30th
% percentile of the entire Fluorescence trace

% SOLUTION {
f0 = quantile(Fluorescence, .3);
dff = (Fluorescence - f0)/f0;
% SOLUTION }



%% ----------------------- PROBLEM 4.3 -----------------------
% Calculate the change in fluorescence around ensure availability
% how long before/after each ensure reward do you want to look?


% find dF/F values around each ensure

% SOLUTION {
bounds = [1; Ensure_idx; numel(Ensure_full)];
max_radius = min(diff(bounds))/2;

window = [max_radius max_radius];
traces = nan([length(Ensure_idx), sum(window)+1]);

for i = 1:numel(Ensure_idx)
    traces(i,:) = dff((Ensure_idx(i)-window(1)):(Ensure_idx(i) + window(2)));
end

figure;
subplot(2,1,1);
hold on;
plot(traces');
plot(mean(traces), 'k', 'LineWidth', 3);
hold off;

subplot(2,1,2);
hold on;
plot(quantile(traces, .1), 'k');
plot(quantile(traces, .5), 'k');
plot(quantile(traces, .9), 'k');
hold off;
% SOLUTION }

%% ----------------------- PROBLEM 4.4 ----------------------- 
%Demonstrate how the fluorescence changes in response to Ensure rewards








%% ----------------------- PROBLEM 4.5 ----------------------- 
% Demonstrate how lick rate changes in response to Ensure rewards



% SOLUTION {
bounds = [1; Ensure_idx; numel(Fluorescence)];
max_radius = min(diff(bounds))/2;

window = [max_radius max_radius];
traces = nan([length(Ensure_idx), sum(window)+1]);

for i = 1:numel(Ensure_idx)
    traces(i,:) = Lick_full((Ensure_idx(i)-window(1)):(Ensure_idx(i) + window(2)));

    kernel = normpdf(linspace(-10,10,100), 0, 1);
    kernel = kernel / sum(kernel);
    traces(i,:) = conv(traces(i,:), kernel,'same');
end


figure;
subplot(2,1,1);
hold on;
plot(traces');
plot(mean(traces), 'k', 'LineWidth', 3);
hold off;

subplot(2,1,2);
hold on;
plot(mean(traces), 'k');
hold off;
% SOLUTION }






