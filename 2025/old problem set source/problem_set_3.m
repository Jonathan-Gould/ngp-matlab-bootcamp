% Problem set 3
% C Burgess, K Furman, J Gould


%% ----------------------- REVIEW: TYPES OF DATA -----------------------

% Sometimes data is better organized not in a single line (array) but in a 
% series of arrays. For example, a timecourse of a response over many
% trials would be better organized with the timecourse across columns and
% each trial being in its own row.

% Here is an example matrix

Sample_matrix = [4 7 3 6 4 1 2; 6 3 1 3 6 3 4; 8 9 4 2 8 9 7]

% you can select different values to visualize/manipulate

Just_row_1 = Sample_matrix(1,:)

% we can perform operations on subsets of the data this way too

Sample_matrix(1,:) = Sample_matrix(1,:) + 1

% can perform functions on different elements of a matrix
% try finding the mean

Mean_1 = mean(Sample_matrix)

% now find the mean in the other dimension
Mean_2 = mean(Sample_matrix,2)

%% ----------------------- PROBLEM SET 3 -----------------------
% Import problem_set_3_data

% You can drag the .mat file into your Workspace
% You can also use the 'load' function (type 'help load' below to see how
% to use that function)

% SOLUTION {
clc;clear;close all;
load("problem_set_3_data.mat")
% SOLUTION }
 
% Data explanation:
% Columns: Time in seconds
% Rows: Trials
% Values: Distance travelled (cm)
% Mouse distance  data over 10s in response to a white noise tone across 60 trials
% each row is a different trial of the same experiment
% each column is one second of the 10 second trial

%% ----------------------- PROBLEM SET #3.1 -----------------------
% Analyses:

% Find the total distance travelled for each of the 60 trials
% SOLUTION {
distance_travelled = sum(Locomotion, 2);
% SOLUTION }

% Find the mean timecourse of the locomotor response
% SOLUTION {
mean_timecourse = mean(Locomotion, 1);
% SOLUTION }

% Plot how the locomotion changes across time (average of all trials)
% SOLUTION {
figure;
subplot(2,1,1);
plot(mean(Locomotion,2));
title('solution 1')

subplot(2,1,2);
plot(Locomotion');
title('solution 2')
% SOLUTION }

%% ----------------------- NOTE: USING FUNCTIONS FROM OTHERS -----------------------

% If you want error bars on a timeccourse plot it is actually easiest to
% use a function that was written by the Matlab community - this is NOT one
% of the functions already included with Matlab, you have to download it
% separately

% Fortunately many good functions have been made and uploaded 
% for use by anyone (https://www.mathworks.com/matlabcentral/fileexchange/) 

% These are some plotting functions I have found to be 
% particularly useful for neuroscience:

    % -Barwitherr (a bar plot function that makes putting error bars on much
    % easier)
    % -Shadederrorbar (a function to plot timecourses and lineplots with shaded
    % error bars)

%% ----------------------- REVIEW: FOR LOOPS -----------------------

% Loops allow you to run through a particular section of code a specific
% number of times or until some condition is met

% Here is a loop that will run 7 times (the length of Sample_matrix),
% taking the mean of the first column, then second,...etc. and saving it
% into a new variable Sample_matrix_mean

for i = 1:length(Sample_matrix)
    Sample_matrix_mean(i) = mean(Sample_matrix(:,i))
end

% For more info on loops:
% https://www.mathworks.com/help/matlab/matlab_prog/loop-control-statements.html

%% ----------------------- PROBLEM SET #3.2 -----------------------

% Analyses:

%use a for loop to subtract the mean of each trial from the
%individual values in that trial, then also divide each value by the mean

% SOLUTION {
answer1 = (Locomotion - mean(Locomotion,2)) ./ mean(Locomotion,2);


answer2 = nan * Locomotion;
for i = 1:size(Locomotion,1)
    trial = Locomotion(i,:);
    trial_mean = mean(trial);
    answer2(i,:) = (trial - trial_mean) / trial_mean;
end

answer3 = nan * Locomotion;
for i = 1:size(Locomotion,1)
    trial_mean = mean(Locomotion(i,:));
    for j = 1:size(Locomotion,2)
        answer3(i,j) = (Locomotion(i,j) - trial_mean) / trial_mean;
    end
end

assert(all(answer1 == answer2, 'all'));
assert(all(answer1 == answer3, 'all'));
% SOLUTION }

% plot the normalized data to see the normalized mean timecourse of
% locomotion






%% ----------------------- REVIEW: IF STATEMENTS -----------------------

% if statements allow you to execute an operation only if a specific
% expression is true

% in our sample matrix we would like to throw out all rows that don't have
% a value greater than or equal to 7

for i = 1:size(Sample_matrix,1)
    if max(Sample_matrix(i,:))>=7
        Sample_matrix(i,:) =   Sample_matrix(i,:) ;
    else
        Sample_matrix(i,:) = NaN;
end
end

% the second row has been changed to NaN ('Not a Number')
% we can remove NaNs from a matrix using the Matlab function rmmissing

Sample_matrix = rmmissing(Sample_matrix)

% Tip: Several times here we are performing operations that change our core 
% variable. If the code works smoothly there is no problem with this, but 
% if errors are hit and/or you need run this section of code multiple times 
% you will have to go back and re-run the code that generated this dataset or 
% reload the dataset. It can sometimes be beneficial to make a new variable
% each time you perform an operation on a variable.


% For more info on if statements:
% https://www.mathworks.com/help/matlab/ref/if.html

%% ----------------------- PROBLEM SET #3.3 -----------------------

% Analyses:

% Perform the same operations as you did above (subtracting and dividing by
% the mean) but only if the second timepoint in the trial is double digits.
% leave other trials unchanged


% SOLUTION {
answer2 = nan * Locomotion;
for i = 1:size(Locomotion,1)
    trial = Locomotion(i,:);
    if abs(trial(2)) >= 10
        trial_mean = mean(trial);
        answer2(i,:) = (trial - trial_mean) / trial_mean;
    else
        answer2(i,:) = trial;
    end

end

answer3 = nan * Locomotion;
for i = 1:size(Locomotion,1)
    trial_mean = mean(Locomotion(i,:));
    if abs(Locomotion(i,2)) >= 10
        for j = 1:size(Locomotion,2)
            answer3(i,j) = (Locomotion(i,j) - trial_mean) / trial_mean;
        end
    else
        for j = 1:size(Locomotion,2)
            answer3(i,j) = Locomotion(i,j);
        end
    end
end

assert(~all(answer1 == answer3, 'all'));
assert(all(answer2 == answer3, 'all'));

% SOLUTION }