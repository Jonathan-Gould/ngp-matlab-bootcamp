clc; clear; close all;

%% Loading data
% use the `load` function for the file "mouse_restriction_weights.mat"

% method 1: drag and drop
% method 2: find the file in MATLAB's explorer
% method 3: load based on file location
load("/Users/jgould/Downloads/mouse_restriction_weights.mat")
mouse_weights = table2array(mouse_weights)


%% Matrix shape
size(mouse_weights)

size(mouse_weights, 1)

size(mouse_weights, 2)

%% Matrix transpose
normal_size = size(mouse_weights)
transpose_size = size(mouse_weights')

mouse_weights_transposed = mouse_weights';

%% Matrix positional indexing

mouse_weights(1,1)

mouse_weights(2,1)

mouse_weights(1,3)

mouse_weights(3,6)

%% Matrix slices, row

mouse_weights(1, :)

%% Matrix slices, column

mouse_weights(:,3)

%% Operations on a whole matrix
mouse_weights - mean(mouse_weights)

%% Operations along matrix axes
% Average the whole matrix.

column_means = mean(mouse_weights)

whole_matrix_mean = mean(mouse_weights, "all", "omitmissing")
column_means = mean(mouse_weights, 1, "omitmissing")
row_means = mean(mouse_weights, 2, "omitmissing")


%% Max

whole_matrix_max = max(mouse_weights, [], "all", "omitmissing")

column_max = max(mouse_weights, [], 1)
row_max = max(mouse_weights, [], 2)


%% Plot

plot(mouse_weights', '.-')

%%
plot(mouse_weights, '.-')

%% Subtraction, axis 1

mouse_weights - mouse_weights(:, 1)

%% Subtraction, axis 2

mouse_weights - mouse_weights(1, :)

%% Subtraction, whole array

mouse_weights - mean(mouse_weights, 'all', 'omitmissing')
