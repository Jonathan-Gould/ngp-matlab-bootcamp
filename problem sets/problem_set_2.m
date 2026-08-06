%% Positional indexing 1
% Jake works in a primate lab. Here are the numbers of trials that monkey M
% has done over the last 7 days.
% Use linear indexing to retrieve the number of trials M did on day 4.

trials_per_day = [576 614 633 610 621 615 594];

trials_day_4 = trials_per_day(4)

%% Positional indexing 2
% Use linear indexing to retrieve the number of trials M completed on the 
% first and last days.

trials_first_day = trials_per_day(1)
trials_last_day = trials_per_day(end) % there are multiple ways to do this, can you think of more than one?

trials_last_day = trials_per_day(7)
trials_last_day = trials_per_day(numel(trials_per_day))
%% Positional indexing 3
% Use linear indexing to retrieve the number of trials M did on the first 3 
% days.
% Use the colon operator to do this in one line of code.

trials_first_three_days = trials_per_day(1:3)


%% Average productivity
% Jake needs 1500 trials to complete the experiment. Assuming these are 
% pretty average days, how many more days of recording should Jake plan on 
% to complete the experiment? Use the mean of the sample to estimate this.

trials_needed = 150000;

average_trials_per_day = mean(trials_per_day);


days_needed = (trials_needed - sum(trials_per_day)) / average_trials_per_day


%% Minimum productivity
% Jake's advisor thinks that's too optimistic. She says to recalculate the 
% number of days, but instead use the minimum of the sample.

min_trials_per_day = min(trials_per_day);


days_needed = (trials_needed - sum(trials_per_day)) / min_trials_per_day


%% Productivity variability
% Jake's other advisor likes his initial mean-based estimate, but she wants
% to know how variable it is. Calculate the standard deviation of the 
% sample and store it in a variable called trials_std. Then calculate an 
% upper and lower bound for the number of days needed to complete the 
% experiment.

trials_std = std(trials_per_day);

days_needed_lower = (trials_needed - sum(trials_per_day)) / (average_trials_per_day + trials_std/sqrt(numel(trials_per_day)));
days_needed_higher = (trials_needed - sum(trials_per_day)) / (average_trials_per_day - trials_std/sqrt(numel(trials_per_day)));
days_needed = [days_needed_lower days_needed_higher]

%% Operating on all of a vector at once

% The Hodgkin-Huxley model of the action potential is temperature 
% dependent. The Virginia Institute of Marine Science reports that longfin 
% inshore squid thrive at temperatures between 10°C and 14°C. 
% Convert these temperatures to Kelvin and store the result in a vector.
% Try to do this for the whole vector at once.

squid_temp_range_c = [10 14];

squid_temp_range_k = squid_temp_range_c + 273.15


%% Vector size
% Operating on a vector of two elements probably isn't much faster than 
% doing it one at a time, but what if we had a bigger vector?

% The variable below has the average monthly temperature in Ann Arbor, 
% Michigan, in Fahrenheit. Before proceeding, check the size of the vector 
% using the `size` function. Do you want to display the size in the command
% window? Or store it in a variable? Or both? It's up to you.

ann_arbor_average_temp_by_month_f = [24 26 36 48 59 69 73 71 63 51 40 29];

size(ann_arbor_average_temp_by_month_f)


%% Operating on all of a vector at once 2
% Now convert this vector to Celcius and store it in a new variable. 
% Like before, try to do this on the whole vector at once.
% Check the result; does it seem reasonable to you?

ann_arbor_average_temp_by_month_c = (ann_arbor_average_temp_by_month_f - 32) * 5/9