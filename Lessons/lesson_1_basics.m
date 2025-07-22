%[text] # Lesson 1: MATLAB basics
%[text] ## Hello World! 
%[text] 
%[text] Let's write our first line of code in MATLAB. We can make it come alive by using a command called `disp`, which will display a message onto the screen to the right.
% Command MATLAB to display the string "Hello World!" 


%%
%[text] Amazing! See? Coding is simple. 
%[text] 
%[text] You can also use MATLAB as a calculator to do simple math. Let's do some simple addition and subtraction below. 
%command MATLAB to add 3 + 19

%command MATLAB to subtract 91 - 28

%%
%[text] You can also do multiplication and division. Multiplication is symbolized by \*, and division by /.
%command MATLAB to multiply 6 x 13

%command MATLAB to divide 98 / 4

%%
%[text] Easy right? 
%[text] MATLAB will also follow the standard order of operations, PEMDAS. If we wanted to add the above two results, we can do that in one line: 
%multiply 6 by 13, and add 98 divided by 4, all in one line

%%
%[text] Or, we could save ourselves some time. Since we already typed those commands before, we can store our results in variables instead of re-writing the same equation over and over. 
%assign the value of 6 * 13 to the variable result1


%assign the value of 98 / 4 to  the variable result2

%%
%[text] You may notice that the variables `result1` and `result2` showed up in the side bar, titled Workspace. This is where MATLAB stores all your variables so you can keep track of them. You'll also notice that the value associated with each variable is the result of the math problem you assigned to it.
%[text]  In addition to being stored in the workspace, the variables `result1` and `result2` and their values also showed up on the sidebar of the live script. This seems redundant, since we also have those variables stored in the Workspace. MATLAB allows you to suppress output so it doesn't get in your way and clog up your windows. Trust me, this becomes handy when you're working with really complex data. 
%[text] In order to suppress the output of a line of code, you simply end it with a semicolon. Let's try below. 
%use a semicolon to suppress the output when you create result1 and result2

result1 = 6 * 13;
result2 = 24.5;

%%
%[text] When we used the semicolon, nothing popped up in our livescript. We'll keep using the semicolon from now on in order to keep our window clean. 
%[text] Now that we've stored these numbers in variables, we can use these to do math quicker: 
%create the variable total to hold the sum of result1 and result2

total = result1 + result2;
%%
%[text] You can see that the variable `total` showed up in the Workspace, and it's equal to 102.5, the same result we got earlier when we did the math manually. 
%[text] 
%[text] MATLAB also has a variety of built in functions, such as `abs()` to find the absolute value of something, or `sqrt()` to get the square root of something. Try these out below. 
%test out the abs() and sqrt() functions


%[text] 
%%
%[text] ## Variables
%[text] Variables are very helpful in coding - they prevent us from having to remember and type values over and over again, and they also allow us to update a value when we gain new information. For example, lets say we have a variable `apples`, which counts the number of apples in the fridge. 
%create the variable apples, and set it equal to 2
apples = 2;

%%
%[text] Now lets say I go to the store and buy 6 more apples. How can I tell MATLAB to change the value of the variable?
%add 6 to apples and display apples

%%
%[text] Notice that we can't just expect MATLAB to save the value of `apples + 6`. While it does know the answer, it does not know that we wan't to update the variable unless we explicitly tell it. MATLAB is very literal - it will do no more and no less than EXACTLY what you tell it to do. 
%add 6 to apples and update apples 

%[text] Let's run that above cell once more. 
%%
%[text] One problem now arises with our variable names - if we accidentally run that cell twice, we have an inaccurate value for our `apples` variable. This type of issue can happen quite easily, and often goes unnoticed. To protect against this, we'll want to choose a different variable name when we update apples - maybe one that accurately reflects the changes we made to the variable.
%redefine our apples variable, since we unintentionally messed it up

%create a new variable, apples_after_shopping, to reflect the new value for
%apples



%%
%[text] 
%[text] Lets say we had some friends over and wanted to make an apple pie. This would use 4 apples. How will we update the variable `apples` to reflect the new number of apples we have?
%update apples to reflect that we've lost 4 apples 

%%
%[text] A quick note: ***variable names are extremely important!!*** You want to always make sure the names of your variables make sense for the thing contained in them. Above, when the variable encoded the number of apples we had, we called it something intuitive: `apples`. However, if we had been lazy and called it ''`a`" or "`fkghdfjkh`", then no one reading the code we wrote would understand what the variable was referring to. Maybe if we came back to this code after not looking at it for a few months, WE might not even rememebr what it meant! 
%[text] Obviously `apples` is a trivial example, but imagine if we were working with data for different mouse behavior trials. We could call a variable "`behavior`," but how would we know what behavior we're talking about? or what mouse? or which day this trial was run on? A more suitable name is `Mouse43_locomotorBehavior_03042020`. Then, we know it is mouse number 43's locomotor behavior, from the March 4th 2020 trial. These variable names will truly save you hours of trouble later - get into the habit early.
%%
%[text] ## Variable Classes
%[text] So far we've only used variables to represent numbers, but we can actually use variables to represent several kinds of data in MATLAB. The data come in different pre-defined flavors, known as **classes**. Each class has different key ways to identify it and certain rules that it can follow. the function `class()` will allow you to determine the class of any variable. Let's test this with our variable `apples` from above. 
%display the class of the variable apples 

%%
%[text] The class of `apples` is `double`. This refers to a double-precision floating-point number. The details of what that means aren't important, just know that the class `double` refers to a numeric value.  If you're used to a programming language other than MATLAB, a `double` is the same thing as a `float`. 
%[text] There are also types of data which are not numeric, which store text as data. In MATLAB, there are two text data types, string arrays and character arrays. String arrays are created with double quotes, and character arrays Practice working with strings by creating two variables, one which contains your first name and one which contains your last name. 
%create the variables firstname and lastname


%%
%[text] Strings can be added to each other, or concatenated, using the function `strcat()`. The strings you want to concatenate go inside the parentheses. Try it below with your first and last name.
%concatenate your first and last name into one variable, fullname


%%
%[text] Oh, it didn't add a space between the first and last name! How can we fix that? 
%add a space between your first and last name


%[output:29d71998]
%%
%[text] This is a very useful  way of keeping track of data, such as the below case: 
mouse_number = "M44";
date = "04202020";
condition = "StimOff";
housing_room = "B603";
filename = strcat(mouse_number, "_", housing_room, "_", date, "_", condition);
disp(filename) %[output:8b8f5f71]
%%
%[text] Another common data class is `logical`, which represents a condition as either `true` or `false` using the numbers `1` or `0` respectively. 
%[text] Logical variables can be geenrated using logical operators, such as 
%[text] \< less than
%[text] \> greater than 
%[text] \<= less than or equal to
%[text] \>= greater than or equal to
%[text] == equal to
%[text] ~= not equal to
%[text] Pay particular attention to the == operator, which tests the logical condition of whether two items are equal to each other. Importantly, this is distinct from the = operator, which assigns a value to a variable. 
%generate boolean variables using logical operators
%[output:58c619d7] %[output:6974d057] %[output:94fe91b4] %[output:75d842b8] %[output:4ccb914a]

%%
%[text] Since these logical variables are coded as 0 or 1, you can also use mathematical operations on them. This is a way to check how many of your variables are true. for example, 

%[output:6580b5d2] %[output:06d8877b] %[output:29ce4b7a]
%%
%[text] We can also detect the class of variables in a logical way, by using is\* functions. For example, 
%check if the value 4 is numeric
%[output:728b0a61] %[output:31863432] %[output:2393cd75]

%[text] The above command asks MATLAB whether the value 4 is numeric, and MATLAB returns the logical value of 1, meaning TRUE. You can use this is\* command for a lot of different variable classes, outlined here: https://www.mathworks.com/help/matlab/ref/is.html
%%
%[text] ## Arrays and Matrices
%[text] 
%[text] In MATLAB, *all variables are arrays*, meaning that each variable can contain many elements at once. Above, when we created variables like `apples` which contained only a single variable, those were scalars. A scalar is actually still a type of array, a 1-by-1 array with 1 row and 1 column. 
%[text] Let's make an array with multiple elements below. in MATLAB, arrays with multiple elements are delineated by square brackets, and the elements inside can be separated by either a space or  comma.  
%create some arrays
%[output:86781fb1] %[output:88bd37b5] %[output:4750cf61] %[output:13b514ce] %[output:565203c3] %[output:6abf145b]

%%
%[text] By using a space or a comma to separate values in an array, we tell MATLAB to put each value in its own column. This means that the array `[1,2,3,4,5]` would be a 1-by-5 array, with 1 row and 5 columns. In order to add multiple rows, we can use a semicolon to create a multidimensional matrix. Try this below:
%create two_dim_matrix, which contains a two dimensional matrix

%[output:1b206d90]
%%
%[text] This means that the matrix `[1,2,3,4,5;6,7,8,9,10]` would be a 2-by-5 matrix, with 2 rows and 5 columns. 
%[text] Below, I create a 5-by-10 matrix, using variables which each contain an array. The actual numbers in the aray aren't important, i just picked random integers. 
row1 = [4,7,2,8,5,7,9,3,2,8] %[output:383531ca]
row2 = [5,7,2,8,5,3,8,9,2,8] %[output:20279e3f]
row3 = [6,3,8,2,6,7,9,2,0,3] %[output:6accb3b9]
row4 = [6,9,2,8,0,4,1,5,7,2] %[output:07d5d553]
row5 = [1,4,8,3,9,0,3,2,6,7] %[output:49573710]

big_matrix = [row1;row2;row3;row4;row5] %[output:9b3cc27d]
%%
%[text] Now that we have this array, we can practice indexing into matrices. *Indexing* simply means extracting particular values of interest, at specific positions within the matrix. We can index into MATLAB matrices using `(row,column)` syntax as shown below: 
%index into the big_matrix from above

%[output:503eadc8] %[output:7f2a60e8] %[output:13c1a580] %[output:2ed9ea98] %[output:27390a69] %[output:5ef7b657]
%%
%[text] You can also index for logical conditionals, such as "all values greater than 5." 
%[text] We can do this by first making a conditional statement to find out whether every value in `big_matrix` is greater than 5:
%locate those values in big_matrix which are greater than 5
%[output:6a424752]
%%
%[text] 
%[text] ## Functions
%[text] Lets quickly go over using Functions in MATLAB. We've already used a bunch of functions in this lesson so far. Can someone name a couple? 
% abs()
% sqrt()
% disp()
% strcat()
% min()
% isnumeric()
%[text] These are only a small fraction of the number of functions that exist in MATLAB to be used for tons of different things. When we use a function, the function comes before the parentheses, and inside the parentheses are the "arguments" for the function. Each function has a different amount of arguments it can take: some take only one argument, some take multiple, and some functions can take an infinite number of arguments -all of this depends on what you want to do with them. We'll cover a lot more functions throughout these lessons. 
%[text] If you ever need to know what a certain function does, you can simply type 
%help [function name]
%[text] into the command window. Lets try this with the `magic()` function
%[text] This is super helpful when you forget what function to use, or what arguments it takes (this happens a lot, even as an experienced MATLAB user)
%%
%[text] ## Cleansing your programming palate
%[text] As you can see, our workspace has become filled with all the variables we used  during the lesson, and our command window is now filled with the help documentation for magic(). As you get more and more into programming, it's gonna become really important to clear out your workspace and command window each time you start a new code. you can do this by typing the following commands into your command window, or at the top of each new code you write: 
%clear all %clears (i.e. deletes) all variables from your workspace to the right 
%close all %closes any figures you may have generated in your code
%clc %clears the command window of whatever is currently in it

%[text] This way, each time you start to write a new script, it starts fresh, wihtout worrying about any variables or plots you may have created before. 
%[text] 
%[text] Congratulations! You just learned a TON of fundamentals of MATLAB programming. Feel free to practice more if anything you learned was particularly interesting to you! 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":21.7}
%---
%[output:29d71998]
%   data: {"dataType":"text","outputData":{"text":" Gould Gould Gould Gould Gould Gould Gould\n","truncated":false}}
%---
%[output:8b8f5f71]
%   data: {"dataType":"text","outputData":{"text":"M44_B603_04202020_StimOff\n","truncated":false}}
%---
%[output:58c619d7]
%   data: {"dataType":"textualVariable","outputData":{"header":"logical","name":"ans","value":"   1\n"}}
%---
%[output:6974d057]
%   data: {"dataType":"textualVariable","outputData":{"header":"logical","name":"ans","value":"   0\n"}}
%---
%[output:94fe91b4]
%   data: {"dataType":"textualVariable","outputData":{"header":"logical","name":"ans","value":"   1\n"}}
%---
%[output:75d842b8]
%   data: {"dataType":"textualVariable","outputData":{"header":"logical","name":"ans","value":"   0\n"}}
%---
%[output:4ccb914a]
%   data: {"dataType":"textualVariable","outputData":{"header":"logical","name":"ans","value":"   1\n"}}
%---
%[output:6580b5d2]
%   data: {"dataType":"textualVariable","outputData":{"header":"logical","name":"yes","value":"   1\n"}}
%---
%[output:06d8877b]
%   data: {"dataType":"textualVariable","outputData":{"header":"logical","name":"no","value":"   0\n"}}
%---
%[output:29ce4b7a]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"3"},"version":0}
%---
%[output:728b0a61]
%   data: {"dataType":"textualVariable","outputData":{"header":"logical","name":"ans","value":"   1\n"}}
%---
%[output:31863432]
%   data: {"dataType":"textualVariable","outputData":{"header":"logical","name":"ans","value":"   0\n"}}
%---
%[output:2393cd75]
%   data: {"dataType":"textualVariable","outputData":{"header":"logical","name":"ans","value":"   1\n"}}
%---
%[output:86781fb1]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"array1","rows":1,"type":"double","value":[["1","2"]]}}
%---
%[output:88bd37b5]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"array2","rows":1,"type":"double","value":[["1","2","4","7"]]}}
%---
%[output:4750cf61]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"array2_and_a_half","rows":1,"type":"double","value":[["1","2","4","7"]]}}
%---
%[output:13b514ce]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"array3","rows":2,"type":"double","value":[["1","2"],["3","4"]]}}
%---
%[output:565203c3]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"array4","rows":3,"type":"double","value":[["1","2","3"],["4","5","6"],["7","8","9"]]}}
%---
%[output:6abf145b]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"ans","rows":1,"type":"double","value":[["1","2","3","4"]]}}
%---
%[output:1b206d90]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"two_dim_matrix","rows":2,"type":"double","value":[["10","20"],["30","40"]]}}
%---
%[output:383531ca]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"row1","rows":1,"type":"double","value":[["4","7","2","8","5","7","9","3","2","8"]]}}
%---
%[output:20279e3f]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"row2","rows":1,"type":"double","value":[["5","7","2","8","5","3","8","9","2","8"]]}}
%---
%[output:6accb3b9]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"row3","rows":1,"type":"double","value":[["6","3","8","2","6","7","9","2","0","3"]]}}
%---
%[output:07d5d553]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"row4","rows":1,"type":"double","value":[["6","9","2","8","0","4","1","5","7","2"]]}}
%---
%[output:49573710]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"row5","rows":1,"type":"double","value":[["1","4","8","3","9","0","3","2","6","7"]]}}
%---
%[output:9b3cc27d]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"big_matrix","rows":5,"type":"double","value":[["4","7","2","8","5","7","9","3","2","8"],["5","7","2","8","5","3","8","9","2","8"],["6","3","8","2","6","7","9","2","0","3"],["6","9","2","8","0","4","1","5","7","2"],["1","4","8","3","9","0","3","2","6","7"]]}}
%---
%[output:503eadc8]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"4"},"version":0}
%---
%[output:7f2a60e8]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"5"},"version":0}
%---
%[output:13c1a580]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"6"},"version":0}
%---
%[output:2ed9ea98]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"7"},"version":0}
%---
%[output:27390a69]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"7"},"version":0}
%---
%[output:5ef7b657]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"7"},"version":0}
%---
%[output:6a424752]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"ans","rows":23,"type":"double","value":[["6"],["6"],["7"],["7"],["9"],["8"],["8"],["8"],["8"],["8"]]}}
%---
