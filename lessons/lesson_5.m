clc; clear; close all;

%% Load data again


%% MATLAB executes one line at a time


%% for loops


%% row slice indexing, review


%% per-mouse averages (rows)

% this is how we loop over rows
for i = [1 2 3]
    row = mouse_weights(i,:);
    disp("Row average: " + mean(row, 'omitmissing'))
end

%% per-day averages (columns)

for i = 1:size(mouse_weights,2)
    column = mouse_weights(:, i);
    disp("Column average: " + mean(column));
end


%% Use a for loop to plot the weights of all of the mice over time.




%% Plot the weights of all of the mice over time, but color the odd lines differently



%% Use a for loop to estimate a sampling distribution
% Use a for loop to estimate the sampling distribution of the mean of the
% first mouse's weight.


%% Use a for loop to estimate another sampling distribution
% Use a for loop to estimate the sampling distribution of the maximum of the
% first mouse's weight.