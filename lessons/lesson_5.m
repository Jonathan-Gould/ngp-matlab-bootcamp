clc; clear; close all;

%% Load data again

load("/Users/jgould/Documents/MATLAB/NGP_Matlab_Bootcamp/data/mouse_restriction_weights.mat")

% mouse_weights = table2array(mouse_weights)


%% In the background, MATLAB executes one line at a time

x = 0;

x = x + 2;
x = x + 2;
x = x + 2;
x = x + 2;
x = x + 2;

%% for loops

x = 0;
disp("Loop starting!")
for i = ["M", "E", "O", "W", "!"]
    x = x + 2;
    disp(i)
end
disp("Loop ended!")

%% mouse weight for loop

for weight = mouse_weights(1,:)
    disp("MROW!")
end

%%

for i = 1:size(mouse_weights,2)
    disp(mouse_weights(1,i))
end

%% row slice indexing, review

mouse_weights(1,:)

%% per-mouse averages (rows)

for i = 1:size(mouse_weights,1)
    mouse_weight_slice = mouse_weights(i,:);
    mouse_mean_weight = mean(mouse_weight_slice, 'omitmissing');
    disp("Mouse " + i + " mean weight: " + mouse_mean_weight)
end

%% per-day averages (columns)

for i = 1:size(mouse_weights, 2)
    day_slice = mouse_weights(:,i);
    day_mean_weight = mean(day_slice, 'omitmissing');
    disp("Day " + i + " mean weight: " + day_mean_weight);
end

%% Use a for loop to plot the weights of all of the mice over time.
figure;

colors = ["magenta", "black", "#93E9BE"];

hold on;
for i = 1:size(mouse_weights, 1)
    mouse_weight_slice = mouse_weights(i,:);
    plot(mouse_weight_slice, 'LineWidth', 3, "Color", colors(i));
end
hold off;

xlabel("time (days)")
ylabel("weight (g)")
title("Mouse diet restriction responses");

%% if statements

if 5 == 4
    disp("Hit A.")
else
    disp("Hit B.")
end


%% Plot the weights of all of the mice over time, but color the odd lines differently
figure;
hold on;
for i = 1:size(mouse_weights,1)
    mouse_weight_slice = mouse_weights(i,:);
    even_mouse = mod(i,2) == 0;

    if mod(i,2) == 0
        plot(mouse_weight_slice, "LineWidth",3, 'Color', 'red');
    else
        plot(mouse_weight_slice, "LineWidth",3, 'Color', 'black');
    end
end
hold off;

%% Use a for loop to estimate a sampling distribution
% Use a for loop to estimate the sampling distribution of the mean of the
% first mouse's average weight.

% Code for a bootstrap sample of vector v.
% n = numel(v); 
% sample = randi(n, 1, n);
% v_sampled_with_replacement = v(sample);

mouse_1_weights = mouse_weights(1,:);
n = numel(mouse_1_weights);

n_samples = 1000;

bootstraped_mean_estimates = zeros(1,n_samples);

for i = 1:n_samples
    sample_idx = randi(n, 1, n);
    weights_sampled_with_replacement = mouse_1_weights(sample_idx);
    estimate = mean(weights_sampled_with_replacement, 'omitmissing');
    bootstraped_mean_estimates(i) = estimate;
end

figure;
histogram(bootstraped_mean_estimates, 50);
xline(mean(mouse_1_weights, 'omitmissing'), 'LineWidth', 3);

%% Use a for loop to estimate another sampling distribution
% Use a for loop to estimate the sampling distribution of the maximum of the
% first mouse's weight.

mouse_1_weights = mouse_weights(1,:);
n = numel(mouse_1_weights);

n_samples = 1000;

bootstraped_max_estimates = zeros(1,n_samples);

for i = 1:n_samples
    sample_idx = randi(n, 1, n);
    weights_sampled_with_replacement = mouse_1_weights(sample_idx);
    estimate = max(weights_sampled_with_replacement, [], "omitmissing");
    bootstraped_max_estimates(i) = estimate;
end

figure;
histogram(bootstraped_max_estimates, 50);
xline(max(mouse_1_weights, 'omitmissing'), 'LineWidth', 3);