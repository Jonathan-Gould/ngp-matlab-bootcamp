%% display hello world with disp
display("hello world")

%% add one plus one
1 + 1

%% subtract eighty minus thirteen
80 - 13

%% multiply twenty one times twenty
21 * 20

21 * 10

%% divide two by three
 

%% square root of 64
sqrt(64)

64^(1/2);

64^.5;

power(5,2);

%% calculate the square root of 65
sqrt(65)

%% convert 0 degrees Celsius to Fahrenheit
0 * 9/5 + 32

%% convert -30 degrees Celsius to Fahrenheit
-30 * 9/5 + 32

%% convert -40 degrees Celsius to Fahrenheit
-40 * 9/5 + 32

%% convert -50 degrees Celsius to Fahrenheit
-50 * 9/5 + 32

%% convert standard ambient temperature (25 degrees Celsius) to Fahrenheit
25 * (9/5) + 32

%% store standard ambient temperature (25 degrees Celsius) in a variable
% call the variable standard_ambient_temp_f

standard_ambient_temp_f = 25 * 9/5 +32

%% convert back to C
(standard_ambient_temp_f - 32) * 5 / 9

%% convert an arbitrary temperature in Celsius to Fahrenheit using variables
% I want to reuse the C to F formula so I don't have to type it over and
% over
% I want to do that using a variable that stores the temperature in F
temp_in_c = 3.14;

temp_in_f = temp_in_c * 9/5 + 32


%% store your name in a variable

my_name = "Jonathan"

%% display "Hello [name]!" using your name variable

display("Hello " + my_name + "!")

%% types of variables so far

% numbers (double)
temp_in_f = 75;

% strings
my_name = "Jonathan";

% logical
is_it_sunny_outside = false

%% check if one is equal to zero
1 == 0

%% store the result of "one is equal to zero" in a variable
is_one_equal_to_zero = (1 == 0)

%% other comparisons like < and >=

%% make an array of numbers, store it in the variable birth_years
birth_years = [2000, 2002, 2006, 2004, 1998]

%% access the first birth year
birth_years(1)
%% access the 1 + 2th element of birth_years
birth_years(1 + 2)

%% add the first and second elements of birth_years

birth_years(1) + birth_years(2)

%% find the biggest element of `array`
max(birth_years)
min(birth_years)

%% use other descriptive statsitics
mean
std

%% find which elements of `array` are bigger than 3


%% access the 3rd element of `array`
birth_years(3)

%% access the last element of `array`


%% index into the array using boolean indexing
birth_years([false true true true false])

%%

% TODO: do a paired comparison here

s = birth_years >  2005

young_birthdays = birth_years(s)

%% this is a section comment

% this is a normal comment
birth_years(birth_years > 2000)