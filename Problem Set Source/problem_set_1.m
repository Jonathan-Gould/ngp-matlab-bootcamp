% Problem set 1
% C Burgess, K Furman, J Gould

%% --------------------- COMMENTING YOUR CODE ------------------------

% all the text you see after a '%' is a comment, including this, meaning
% that it will not be evaluated as code when the script is run. 


% Comments are incredibly useful to others reading the code (or to you when
% you come back to your code and completely forget what you were doing). 


% It is best practice to comment on your code as you go, then revise once
% the code is done. When solving the problems below add comments explaining
% what you are doing and/or why.

% While a single '%' starts a comment, a double '%%' at the beginning
% of the line starts a new section (just like the title of this section)

%% ----------------- LIVESCRIPT VS. CODING IN THE EDITOR  -------------------

% While the live lessons are written in live scripts, when writing your own
% code from scratch (as you will be doing in these problem sets), it is 
% easier to just code it into the Editor. 


% When in the editor there are several ways to run code:
    % the "Run" button above will run everything you've written, above
    % and below your current line
    
    % "Run section" will run just the current section of code (between double percent 
    % signs breaks '%%')
    
    % highlighting a line or section and either (1) pressing F9 or 
    % (2) right-clicking and selecting "Evaluate Selection" will run
    % just the bit of code that you've highlighted.


%% ---------------------- PROBLEM SET #1.1 ----------------------

%% PART ONE - Import  the file problem_set_1_data

% You can click and drag the .mat file into your Workspace
% You can also use the 'load' function (type 'help load' below to see how
% to use that function)

clc; clear; close all;
load('problem_set_1_data.mat');

% Here is an explanation of what's in this dataset:
    % An array of numbers which are  annual salaries (in thousands of dollars)
    % A corresponding array of numbers that are years of post-secondary education




%% ---------------------- PART TWO: FUNCTIONS ----------------------
% you can use the inbuilt functions to get a better sense of your data 


% Do the following analyses:
% Calculate the range of salaries and years of education.

% Calculate the average salary of the dataset.


%% Use this space to work on these analyses

lowest_salary = nan;
highest_salary = nan;
% SOLUTION {
[lowest_salary, highest_salary] = bounds(salaries);
check_answer([lowest_salary, highest_salary], 'Q1.1')
% SOLUTION }


lowest_yr_of_ed = nan;
highest_yr_of_ed = nan;
% SOLUTION {
[lowest_yr_of_ed, highest_yr_of_ed] = bounds(year_of_ed);
check_answer([lowest_yr_of_ed, highest_yr_of_ed], 'Q1.2')
% SOLUTION }




average_salary = nan;
% SOLUTION {
average_salary = mean(salaries);
check_answer(average_salary, 'Q1.3')
% SOLUTION }


%% ------------------- PART THREE: Indexing intro ----------------------

% You can index an array based on the values from another array

% what is the fourth salary?



%% ---------------------- PROBLEM SET #1.2 ----------------------
fourth_salary = nan;
% SOLUTION {
fourth_salary = salaries(4);
check_answer(fourth_salary, 'Q2');
% SOLUTION }

%% Questions:

% Is the 10th salary less than 100?

tenth_salary_is_less_than_100 = nan;
% SOLUTION {
check_answer(tenth_salary_is_less_than_100, 'Q3.1')
% SOLUTION }



% Find all of the salaries over 100

salaries_over_100 = nan;

% Check that the above is correct. Are all the salaries over 100?

% Calculate the average salary of people with 0 years of post-secondary education
% now do the same for 2, 4, or 10 years of education
avg_salary_0yr = nan;
avg_salary_2yr = nan;
avg_salary_4yr = nan;
avg_salary_8yr = nan;


%% ----------------------- PART FOUR: ERRORS ----------------------

% If you try to run something that doesn't make sense, Matlab will tell you
% by printing an error message in your Command Window

%try finding the max of a variable that doesn't exist

% E1 = max(no_data)


%try finding the 23rd element of the salaries array

% Note that the error message provides useful information about why the
% code did not work, including (depending on the nature of the error) the
% line of the code that errored out, the name of the variable that caused
% the error, and the nature of the error itself







% SOLUTION {

function check_answer(answer, question_number)
switch question_number
    case 'Q1.1'
        hash = mlreportgen.utils.hash(num2str(answer));
        correct = hash == "524ebbe17c064289a92bf26e0cde3aa4";
    case 'Q1.2'
        hash = mlreportgen.utils.hash(num2str(answer));
        correct = hash == "e55e9eba96d6d6e818283296880f5005";
    case 'Q1.3'
        hash = mlreportgen.utils.hash(num2str(answer));
        correct = hash == "b5445938566cf8c1826cb7c30a1aa904";
    case 'Q2'
        hash = mlreportgen.utils.hash(num2str(answer));
        correct = hash == "9f61408e3afb633e50cdf1b20de6f466";
    case 'Q3.1'
        hash = mlreportgen.utils.hash(num2str(answer));
        correct = hash == "9f61408e3afb633e50cdf1b20de6f466";
    case 'Q3.2'
        hash = mlreportgen.utils.hash(num2str(answer));
        correct = hash == "9f61408e3afb633e50cdf1b20de6f466";
    case 'Q3.3'
        hash = mlreportgen.utils.hash(num2str(answer));
        correct = hash == "9f61408e3afb633e50cdf1b20de6f466";
end
if ~correct

    fprintf("log %s: hash was %s\n", question_number, hash)
    
    error("The given answer for does not appear to be correct.");
else
    fprintf("The given answer for %s is correct!\n", question_number)
end
end

% SOLUTION }
