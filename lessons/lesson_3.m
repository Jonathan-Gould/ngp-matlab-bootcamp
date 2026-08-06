%% dataset
% Jordan is food restricting a set of mice.
% These are the weights of mouse jmc43 over the first week of food
% restriction.

mouse_jmc43_weight = [27.5 24 25 23 22.5 24.5 24.5 24.5 23]; % in grams
days_from_start = [-1 0 1 2 3 4 5 6 7]; % in days


%% calculate the mean and median weight for the mouse

mean_weight = mean(mouse_jmc43_weight)

median_weight = median(mouse_jmc43_weight)

%% `plot` the weight of mouse_jmc43 over time

plot(mouse_jmc43_weight)

%% add x variable

plot(days_from_start, mouse_jmc43_weight)

%% annotating a MATLAB plot
% annotate the plot with a title, x-label, and y-label

figure;
plot(days_from_start, mouse_jmc43_weight);
xlabel("days from start of food restriction");
ylabel("weight (g)");
title("Mouse jmc43 weight over time");


%% scatterplot
% make a scatter plot of the baseline and final weights of three of Jordan's mice.
% the `scatter` command may be useful!
baseline_weights = [27.5 29 28.5];
final_weights = [24.5 24.5 23.5];

colors = [[40, 134, 235]; [47, 235, 40]; [94, 32, 61]];

figure;
scatter(baseline_weights, final_weights, [20, 40, 80] * 2, colors/255, 'filled');
xlim([27 29.5]);
ylim([23 25]);
xlabel("baseline weight")
ylabel("final weight")
title("Relationship between baseline and food restricted weights")

%% `histogram`
% we can also use MATLAB to generate random data
% what distribution does the randn function generate?

random_numbers = randn(1,1000);

fig = figure;
histogram(random_numbers, 100);
xlabel("bins");
ylabel("number of occurances");
title("Histogram of a normal random variable")

xticks([-1 0 1 2])

exportgraphics(fig, "histogram.png")
exportgraphics(fig, "histogram.svg", "ContentType", "vector")

%% Save your figure
% exportgraphics(fig, "histogram.png")
