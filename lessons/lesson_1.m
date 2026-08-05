%% Display hello world with disp
% Green lines with a percent sign are comments. They are not executed as 
% code, but they can be used to explain what the code is doing.
% Let's write our first line of code in MATLAB!
% disp("hello world")

disp("hello world")

%% Add one plus one
% MATLAB can be used for addition, using the plus sign (+)
% Try adding one plus one.

1 + 1

%% Subtract eighty minus thirteen
% MATLAB can be used for subtraction, using the minus sign (-)
% Try subtracting eighty minus thirteen.

80 - 13

%% Multiply twenty one times twenty
% MATLAB can be used for multiplication, using the asterisk (*)
% Try multiplying twenty one times twenty.

21 * 20

%% Divide two by three
% MATLAB can be used for division, using the forward slash (/)
% Try dividing two by three.
2    / 3

%% Square root of 64
% MATLAB can be used to calculate the square root, using the sqrt() function
% Try calculating the square root of 64.
sqrt(64)

%% Square root of 64, alternate methods
% There are usually many ways to do the same thing in MATLAB.
% For example, you can calculate a square root by raising a 
% number to the power of one half. Try calculating the square 
% root of 64 using another method.

64^(1/2)

%% Compare two numbers using the greater than operator
% Try comparing if 5 is greater than 3 using the greater than operator (>). 
% This will return a value of true or false, unlike the numbers we have 
% been working with so far.

5 > 3

%% Compare two numbers using the less than than operator
% Try comparing if 5 is less than 3 using the less than operator (<).

5 < 3

%% Convert 0 degrees Celsius to Fahrenheit
% Our first practical application of MATLAB will be to convert temperatures 
% from Celsius to Fahrenheit. 
% Let's start by converting 0 degrees Celsius to Fahrenheit.

0*(9/5)+32

%% Convert -30 degrees Celsius to Fahrenheit
% Let's convert -30 degrees Celsius to Fahrenheit.

-30*(9/5)+32

%% Convert -40 degrees Celsius to Fahrenheit
% Now -40 degrees Celsius to Fahrenheit.

-40*(9/5)+32

%% Convert -50 degrees Celsius to Fahrenheit
% Now -50 degrees Celsius to Fahrenheit.
-50*(9/5)+32

%% Convert standard ambient temperature (25 degrees Celsius) to Fahrenheit
% Now 25 degrees Celsius to Fahrenheit.
25*(9/5)+32

%% Variables
% This is somewhat repetitive, isn't it?
% Let's store the temperature in a variable so we don't have to type the 
% formula over and over again. You can think of a variable as a named 
% bucket that can hold a value. We can put whatever we want in the bucket, 
% and whenever we want what's inside, we just name the bucket.


temperature_in_c = 25;


temperature_in_f = temperature_in_c * (9/5) + 32


%% Calculate the cost of housing mice for an experiment using variables
groups_needed = 4;
mice_per_group = 6;
cost_per_mouse_per_day = 1.5;
days_needed = 20;

mice_needed = groups_needed * mice_per_group;

cost_of_all_mice_per_day = mice_needed * cost_per_mouse_per_day;

experiment_cost = cost_of_all_mice_per_day * days_needed



%% Variables can be used to store text (strings)

a_number = 40;
a_string = "this is text"
forty_as_a_string = "40";
cool_variable = "😎";

%%

one_as_an_integer = 1;
forty_as_a_string = "40";

forty_as_a_string + one_as_an_integer

%% Store your name in a variable

my_name = "Jonathan"

%% Combine strings using the `+` operator

greeting_string = "Hello," + " " + my_name + "!";

%% display "Hello [name]!" using your name variable

disp(greeting_string)


%% Types of varaibles so far
% to mention: nan, booleans, character vectors vs strings

% logical, string, integer, float (double)

a = 1;
%% clear your palette

clear;
clc;
close all;

%% get help from MATLAB's built-in help system

help sqrt