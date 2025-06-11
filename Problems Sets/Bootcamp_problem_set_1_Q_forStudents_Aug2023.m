% Problem set 1
% C Burgess & K Furman
% Updated 220725 (KLF)

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


% Here is an explanation of what's in this dataset:
    % An array of numbers which are  annual salaries (x1000)
    % A corresponding array of numbers that are years of post-secondary education


clc; clear;
load('Bootcamp_problem_set_1_data.mat')

%% ---------------------- PART TWO: FUNCTIONS ----------------------
% you can use the inbuilt functions to get a better sense of your data 


% Do the following analyses:

% Calculate the range of salaries and years of education



% Calculate the average salary of the dataset


%% Use this space to work on these analyses

range_sal = max(salaries) - min(salaries);

range_yr_ed = max(year_of_ed) - min(year_of_ed);


average_salary = mean(salaries);
sum(salaries)/numel(salaries)

%% ------------------- PART THREE: Indexing intro ----------------------

% You can index an array based on the values from another array

% what is the fourth salary?



%% ---------------------- PROBLEM SET #1.2 ----------------------

fourth_salary = salaries(4);

%% Questions:

% Is the 10th salary less than 100?



% Find all of the salaries over 100
 
% Check that the above is correct. Are all the salaries over 100?

% Calculate the average salary of people with 0 years of post-secondary education
% now do the same for 2, 4, or 10 years of education



%% space to work on these analyses

tenth_salary = salaries(10);
tenth_salary_less_than_100 = tenth_salary < 100;


salaries_ov_100 = salaries(salaries > 100)



zero_edu = year_of_ed == 0;
sal_zero = salaries(zero_edu == 1);
mean(sal_zero)

two_edu = year_of_ed == 2;
sal_two = salaries(two_edu == 1);
mean(sal_two)

%% ----------------------- PART FOUR: ERRORS ----------------------

% If you try to run something that doesn't make sense, Matlab will tell you
% by printing an error message in your Command Window

%try finding the max of a variable that doesn't exist

% E1 = max(no_data)


%try finding the 23rd element of the salaries array

E2 = salaries(23)

% Note that the error message provides useful information about why the
% code did not work, including (depending on the nature of the error) the
% line of the code that errored out, the name of the variable that caused
% the error, and the nature of the error itself


























