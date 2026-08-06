clc; clear; close all;

%% Load data
% Load the file "campus19.mat" into your MATLAB workspace.
% You should see two variables: behavior_scores, and phenotype_groups.

% behavior_scores stores the scores of the Pavlovian conditioned approach
% across 126 mice over 5 trials.

load("/Users/jgould/Downloads/campus19.mat")

%% What is the shape of behavior_scores?
% Which axis corresponds to mice, and which corresponds to trials?

behavior_scores_shape = size(behavior_scores)

%% Slice the data to get the scores of mouse 1 over time

mouse_1_scores = behavior_scores(1,:)

%% Whole-matrix mean
% Average the whole matrix.

mean(behavior_scores, 'all', 'omitmissing')

%% Column mean
% Average the matrix along axis 1.
% What is the shape of the output? What does it represent?

mean(behavior_scores, 1, 'omitmissing')

%% Row mean
% Average the matrix along axis 2.
% What is the shape of the output? What does it represent?

mean(behavior_scores, 2, 'omitmissing')

%% Plot the PCA scores of mouse 1 over time

figure;
plot(mouse_1_scores);
xlabel("session #")
ylabel("PCA score")
title("Mouse 1 PCA scores over time")


%% Plot the PCA scores of mice 1 and 2 over time on the same figure.
% bonus: can you add a legend to distinguish the two mice?

figure;
plot(behavior_scores(1:2, :)');
xlabel("session #")
ylabel("PCA score")
title("Mouse 1 and 2 PCA scores over time")


%% Plot the weights of all of the mice over time in the same figure.

figure;
plot(behavior_scores(:, :)', '.-');
xlabel("session #")
ylabel("PCA score")
title("Mouse 1 and 2 PCA scores over time")

%% Show an average trendline
% Plot the weights of all of the mice over time in the same figure, and add bold line showing their mean at each timepoint.


%NOTE: you will need to write a "hold on;"

figure;
plot(behavior_scores(:, :)', '.-');
xlabel("session #")
ylabel("PCA score")
title("Mouse 1 and 2 PCA scores over time")

% hold on;

average_mouse_pca_score_per_day = mean(behavior_scores, 1, 'omitmissing');

plot(average_mouse_pca_score_per_day, 'LineStyle', '--', 'LineWidth', 50, 'Color', 'black')

%% Transpose the matrix and plot that instead.
% Interpret the graph. What is it showing?

figure;
plot(behavior_scores);

%%

