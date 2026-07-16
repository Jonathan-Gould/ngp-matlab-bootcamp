clc; clear; close all;

%% make a vector of numbers, store it in the variable `birth_years`
birth_years = [2000, 2002, 2006, 2004, 1998]


%% access the first birth year

birth_years(1)

%% access the element after the second element of birth_years

birth_years(2)

%% access the last element of birth_years

birth_years(end)

%% add the first and second elements of birth_years

birth_years(1) + birth_years(2)

%% find the biggest value in birth_years

max(birth_years)

%% find the smallest value in birth_years

min(birth_years)

%% use other descriptive statistics
mean(birth_years)
std(birth_years)

%% compare the elements of `birth_years` to 2001
% which positions have a bigger value?
% save the result in a variable

birth_years > 2001

%% compare the elements of `birth_years` to 2000; which *values* are bigger?

birth_years(2:4)

birth_years(birth_years > 2001)

birth_years([false true true true false])

%% make a names vector holding the names corresponding to each birth year
names = ["Jonathan", "Brendan", "Carrie", "Dennis", "Marcelle"]
%% index into `names` using information from `birth_years`

names([birth_years > 2001])

names(birth_years > 2001)

names(2:4)

names([2, 3, 4])

names([false true true true false])

%% clear your programming palette
clc; clear; close all;
