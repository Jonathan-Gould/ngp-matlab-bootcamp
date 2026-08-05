clc; clear; close all;

%% make a vector of numbers, store it in the variable `mouse_weights`
mouse_weights = [30 27 34 29 31 28 32 33 30 29]


%% access the first mouse weight
% it will look like this: mouse_weights(1)

mouse_weights(1)


%% access the third mouse weight
% we can pattern-match off the previous section
% mouse_weights(?)

mouse_weights(3)

%% access the element after the third element of mouse_weights
% we don't have to just use numbers, we can use arithmetic expressions


mouse_weights(3 + 1)

%% variable as an index

idx = 5

mouse_weights(idx)

%% access the last element of mouse_weights
% the end keyword is a special keyword in MATLAB that refers to the last element of a vector

mouse_weights(end)

%%
mouse_weights(end - 1)



%% access the first and second elements of mouse_weights at the same time
% you can use a vector to index into another vector, like this: mouse_weights([1 2])

mouse_weights([1 2])

%%

mouse_weights([1 2 3 4 5 6 7 8 9 10])

%%

1:3
% is equal to
[1 2 3]

%%

mouse_weights(1:3)

%%

mouse_weights([1:3])

%%

vector_size = size(mouse_weights)

number_of_elements = numel(mouse_weights)

%%

mouse_weights(1:end)

%% find the biggest value in mouse_weights
% you can use the max function to find the maximum value in a vector

max(mouse_weights)

min(mouse_weights)

weight_range = max(mouse_weights) - min(mouse_weights)

%% find the average value in mouse_weights
% you can use the mean function to find the average value in a vector

mean(mouse_weights)

%% find the standard deviation of mouse_weights
% you can use the std function to find the standard deviation of a vector

std(mouse_weights)

%% do math on a whole vector at once
% you can do math on a whole vector at once, like this: mouse_weights - 30

mouse_weights - mean(mouse_weights)


%% convert the mouse_weights vector from grams to kilograms
% the conversion factor is 1 kilogram = 1000 grams, so we can divide the mouse_weights vector by 1000 to convert it to kilograms

mouse_weights_kg = mouse_weights / 1000

%% compare the elements of `mouse_weights` to 30
% this will return a logical array of the same size as `mouse_weights`

mice_over_average = mouse_weights > mean(mouse_weights)

%% clear your programming palette

clc; clear;