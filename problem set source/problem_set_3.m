%% Review
% In general, your template for a figure should look like this:

% figure;
% [plotting function]]
% xlabel('x-axis label')
% ylabel('y-axis label')
% title('title')

%% Dataset
% We're going to be using publicly available data from Campus et al. 
% (https://doi.org/10.7554/eLife.49041) to explore MATLAB's plotting 
% functionality.
% We're specifically going to be looking at the data in figure 2.

% These session and mouse_7_behavior_score variables are paired, meaning
% that the first element of session corresponds to the first element of
% mouse_7_behavior_score, and so on. Together, they describe the behavior
% score of mouse 7 across 5 sessions.

session = [1 2 3 4 5];
mouse_7_behavior_score = [-0.7697 -0.8375 0.1477 0.3545 0.5698]; % Pavlovian conditioned approach (PCA) in the paper


% These behavior_scores and lever_presses variables are also paired.
% They correspond to the behavior score and number of lever presses for
% 126 mice in the last of their 5 sessions.
behavior_scores = [-0.6370 0.6775 -0.5947 0.6486 -0.7392 0.6007 0.5698 -0.6860 -0.4484 -0.6772 0.7524 -0.7822 -0.4893 -0.8357 0.7007 0.7907 -0.7353 -0.7152 -0.6505 0.6069 0.7631 -0.7413 -0.4393 0.6903 0.5285 0.6049 0.5049 0.4909 0.6032 -0.7128 -0.3922 0.5436 -0.7433 -0.7035 -0.8006 0.7157 -0.7985 0.8950 -0.8672 0.6008 0.7448 -0.7688 0.5268 -0.7565 -0.5293 -0.7650 -0.6326 -0.8702 -0.6262 -0.5738 -0.6387 -0.6075 0.5735 0.8160 -0.6814 -0.8250 -0.8105 -0.6125 -0.6675 -0.6760 0.3277 -0.8947 0.8655 0.7098 0.9002 -0.8948 -0.6458 -0.7977 0.7079 0.7349 0.8287 0.8072 0.6195 0.7958 0.7834 0.5812 -0.6208 0.7882 0.7820 0.7982 -0.9072 0.8538 0.8692 0.7810 -0.5872 0.9007 -0.5882 -0.6940 0.7378 0.5894 -0.5852 -0.5873 0.3147 0.6521 0.7513 -0.4878 -0.8023 0.6692 -0.7160 0.9133 -0.7756 0.8325 0.7747 0.6732 0.6518 0.2018 -0.7712 0.6357 0.8228 0.6587 -0.6398 0.5073 -0.8973 -0.8292 0.7695 -0.7148 0.5687 0.5208 -0.5480 -0.3993 -0.4755 0.8372 -0.5977 -0.8247 -0.5132 -0.5973];
lever_presses = [ 0 46 2 52 0 41 44 0 3 4 79 2 2 0 71 89 0 6 0 26 81 1 0 41 46 29 37 35 36 0 0 59 0 5 1 51 0 84 0 19 36 0 29 0 0 0 3 0 2 0 0 0 30 61 3 0 4 1 0 0 20 0 62 106 81 0 0 1 62 59 55 41 30 82 66 34 0 56 97 51 0 79 71 63 6 89 0 0 38 29 3 1 25 42 43 0 3 47 1 84 1 49 54 36 32 33 0 73 85 29 0 40 0 4 63 0 38 41 0 0 2 73 0 1 1 0];


%% Line plot
% Create a line plot of mouse 7's behavior score across sessions. Label the
% axes and add a title. This will replicate a single trace in figure 2B.
% hint: the `plot` function may be useful here


%% Scatter plot
% Create a scatter plot of the relationship between a mouse's behavior score
% and the number of lever presses it made in the last session.
% Make sure to label the axes and add a title.
% Feel free to customize it as well!
% hint: the `scatterplot` function may be useful here



%% Histogram
% Create a histogram of the behavior scores across all 126 mice. Adjust the
% number of bins to make the histogram look nice. Make sure to label the
% axes and add a title.
% hint: the `histogram` function may be useful here
