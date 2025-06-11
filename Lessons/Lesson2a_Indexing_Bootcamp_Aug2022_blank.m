%[text] # Lesson 2a: Indexing
%[text] ## Indexing with Vectors
%[text] 
%[text] Indexing into matrices in MATLAB is one of the most important things to be able to do in order to properly handle your data. Lets test this in the example below, while we decide what kind of dessert to eat later. 
desserts = ["cake","ice cream sandwich","cookies","pudding","muffins","cannoli","ice cream sundae","milkshake","apple pie","cream puffs","fudge","fruit tart","cheesecake","brownie","frozen yogurt","cinnamon roll"];
lactose_content = ["N","Y","N","Y","N","Y","Y","Y","N","Y","Y","Y","Y","N","Y","N"];

%%
%[text] Above, `desserts` contains a list of different dessert options, and `lactose_content` contains a list of Y's and N's corresponding to whether the dessert contains lactose (Y) or not (N). We have a friend who's lactose intolerant, so we need to use the information in both of these arrays  in order to decide what dessert she can have. 
%[text] First we need to find a way to isolate only those items within `lactose_content` that are equal to Y. This can be done in MATLAB by using boolean logic we discussed in the previous lesson. 
%figure out which items in lactose_content are equal to Y. Assign this to a
%variable, 'lactose'

lactose = lactose_content == "Y";
%%
%[text] Check out what `lactose` looks like. It outputs a logical array of 1's and 0's, based on whether or not the item in `lactose_content` is consistent with our query (== "Y").
%[text] Now we know which positions in `desserts` correspond to desserts which contain lactose. How do we output only those desserts our lactose intolerant friend can eat? 
%use the new information about which positions contain lactose as a way to
%output the non-lactose desserts

desserts(lactose==0) %[output:21a9c08e]
desserts(lactose ~= 1)

desserts(lactose_content == "N") %[output:53f4b79b]
%[output:478047c6]
desserts(~lactose) %[output:8b343ef1]
%%
%[text] Great! Our friend is gonna be so happy when she sees that there are still 6 desserts on this menu that she can indulge in. 
%[text] Lets learn about more practical arithmetic cases for indexing. We'll create a random vector to use as a dataset. (reference: [http://bechtel.colorado.edu/~crimaldi/teaching/cven5343/Matlab%20Indexing.pdf](http://bechtel.colorado.edu/~crimaldi/teaching/cven5343/Matlab%20Indexing.pdf))
v = [16 5 9 4 2 11 7 14];
%%
%[text] The location we use to index can be a single value: 
%extract the 3rd element
v(3) %[output:1287af7a]
%%
%[text] Or it can, itself, be a vector: 
 %extract the 1st, 5th, 6th elements
v([1 5 6]) %[output:1ce5171d]
%%
%[text] You can use MATLAB's colon notation to extract a range of values: 
%extract the 3rd through 7th elements
3:7 %[output:093dbe45]
v(3:7) %[output:84c5a49c]
v([3 4 5 6 7]) %[output:047d7078]
%%
%[text] By assigning an indexed subset of v to a new variable, we can extract and swap the halves of v: 
%swap the first four and last four elements

temp = v(1:4) %[output:8c7c37a2]
v2(1:4) = v(5:8) %[output:44d95403]
v2(5:8) = temp;

%%
%[text] MATLAB includes the operator `end` to extract the last element of a vector: 
 %extract the last element
v(end) %[output:628fe981]
%%
%[text] This can be used in a range: 
%extract the last 4 elements 
v(end-3:end) %[output:60bc4181]
%%
%[text] Or it can be used in arithmetic: 
%extract the 5th through second-to-last element
v(5:end-1) %[output:973d0d5e]
%%
%[text] You can use the colon operator to do a lot of interesting alterations to the data: 
%extract all odd elements of the data
v(1:2:end) %[output:65cdf041]

%reverse the order of the data
v(end:-1:1) %[output:439ad4ee]

%%
%[text] If you include a vector on the right side of the equals sign, you can replace elements of a vector: 
%replace the 2nd, 3rd, and 4th elements of the vector v
v2 = v;
v2([2,3,4]) = 0;
v2(2:4) = 0;
%%
%[text] ## Working With Matrices
%[text] Below, I create a 5-by-10 matrix, using variables which each contain an array. The actual numbers in the array aren't important, i just picked random integers. 
row1 = [4,7,2,8,5,7,9,3,2,8];
row2 = [5,7,2,8,5,3,8,9,2,8];
row3 = [6,3,8,2,6,7,9,2,0,3];
row4 = [6,9,2,8,0,4,1,5,7,2];
row5 = [1,4,8,3,9,0,3,2,6,7];

big_matrix = [row1;row2;row3;row4;row5];
%%
%[text] Now that we have this array, we can practice indexing into matrices. *Indexing* simply means extracting particular values of interest, at specific positions within the matrix. We can index into MATLAB matrices using row,column syntax as shown below: 
%index into the big_matrix from above
big_matrix(1,1) %[output:51fc1346]
big_matrix(2,2) %[output:809726eb]

big_matrix(3,1) %[output:6ed849f7]

%%
%[text] The above syntax extracts the value in the 3rd row and 7th column of `big_matrix`. The row and column inputs can also be vectors: 
big_matrix([1 2],[1 2]) %[output:327df39a]
%[text] If we don't know how long a certain matrix is, we can use the keyword `end` to obtain the value in the last row or column of a matrix. Try this below, to obtain the value in the 4th row and last column of `big_matrix`, and assign it to the variable `y`: 
%use end to get the value in the 4th row and last column of big_matrix
y = big_matrix(4, end) %[output:7a425c95]
%%
%[text] We can also use something like `end-1` to tell MATLAB to obtain the second-to-last value. Try this syntax below, to obtain the value in the third-to-last row and 6th column, and assign it to the variable `z`: 
%get the value in the 3rd to last row and 6th column
y = big_matrix(4, end - 1) %[output:2361bccf]
%[text] A single `:` in the row or column index is shorthand for "1:end" or "all." Using this, we can extract an entire row or column: 
%extract the third row

big_matrix(3, :) %[output:83ded309]
%extract the fourth column
big_matrix(:, 4) %[output:4abff3d3]
%%
%[text] MATLAB is designed to work well with matrices. You can add a scalar value to all elements of a matrix - try this below: 
%add 1 to each value in big_matrix
big_matrix + 1 %[output:9905cb51]
%%
%[text] This can also be done with other arithmetic operations, like subtraction or division. Try this below:
%test out some math on the matrix
big_matrix - 100 %[output:318171d9]
big_matrix/10 %[output:2adf3b9c]
%%
%[text] You can also add together any two matrices of the same size:
%add two matrices together 
big_matrix + big_matrix %[output:56a14663]
%%
%[text] We can also perform statistical operations on matrices, including `min()`, `max()`, `mean()`, etc. This will output a vector of the apropriate value (minimum, maximum, or mean) for each column of the matrix.
%get the minimum value for each column of the matrix

min(big_matrix(:)) %[output:31206aca]
max(big_matrix(:)) %[output:4652812c]

mean(big_matrix, 'all') %[output:1942e373]

%[text] ## 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 
%[text] 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":23.7}
%---
%[output:21a9c08e]
%   data: {"dataType":"matrix","outputData":{"columns":6,"header":"1×6 string array","name":"ans","rows":1,"type":"string","value":[["cake","cookies","muffins","apple pie","brownie","cinnamon roll"]]}}
%---
%[output:53f4b79b]
%   data: {"dataType":"matrix","outputData":{"columns":6,"header":"1×6 string array","name":"ans","rows":1,"type":"string","value":[["cake","cookies","muffins","apple pie","brownie","cinnamon roll"]]}}
%---
%[output:478047c6]
%   data: {"dataType":"matrix","outputData":{"columns":6,"header":"1×6 string array","name":"ans","rows":1,"type":"string","value":[["cake","cookies","muffins","apple pie","brownie","cinnamon roll"]]}}
%---
%[output:8b343ef1]
%   data: {"dataType":"matrix","outputData":{"columns":6,"header":"1×6 string array","name":"ans","rows":1,"type":"string","value":[["cake","cookies","muffins","apple pie","brownie","cinnamon roll"]]}}
%---
%[output:1287af7a]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"9"},"version":0}
%---
%[output:1ce5171d]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"ans","rows":1,"type":"double","value":[["16","2","11"]]}}
%---
%[output:093dbe45]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"ans","rows":1,"type":"double","value":[["3","4","5","6","7"]]}}
%---
%[output:84c5a49c]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"ans","rows":1,"type":"double","value":[["9","4","2","11","7"]]}}
%---
%[output:047d7078]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"ans","rows":1,"type":"double","value":[["9","4","2","11","7"]]}}
%---
%[output:8c7c37a2]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"temp","rows":1,"type":"double","value":[["16","5","9","4"]]}}
%---
%[output:44d95403]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"v2","rows":1,"type":"double","value":[["2","11","7","14"]]}}
%---
%[output:628fe981]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"14"},"version":0}
%---
%[output:60bc4181]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"ans","rows":1,"type":"double","value":[["2","11","7","14"]]}}
%---
%[output:973d0d5e]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"ans","rows":1,"type":"double","value":[["2","11","7"]]}}
%---
%[output:65cdf041]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"ans","rows":1,"type":"double","value":[["16","9","2","7"]]}}
%---
%[output:439ad4ee]
%   data: {"dataType":"matrix","outputData":{"columns":8,"name":"ans","rows":1,"type":"double","value":[["14","7","11","2","4","9","5","16"]]}}
%---
%[output:51fc1346]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"4"},"version":0}
%---
%[output:809726eb]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"7"},"version":0}
%---
%[output:6ed849f7]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"6"},"version":0}
%---
%[output:327df39a]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":2,"type":"double","value":[["4","7"],["5","7"]]}}
%---
%[output:7a425c95]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"y","rows":"1","value":"2"},"version":0}
%---
%[output:2361bccf]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"y","rows":"1","value":"7"},"version":0}
%---
%[output:83ded309]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"ans","rows":1,"type":"double","value":[["6","3","8","2","6","7","9","2","0","3"]]}}
%---
%[output:4abff3d3]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"ans","rows":5,"type":"double","value":[["8"],["8"],["2"],["8"],["3"]]}}
%---
%[output:9905cb51]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"ans","rows":5,"type":"double","value":[["5","8","3","9","6","8","10","4","3","9"],["6","8","3","9","6","4","9","10","3","9"],["7","4","9","3","7","8","10","3","1","4"],["7","10","3","9","1","5","2","6","8","3"],["2","5","9","4","10","1","4","3","7","8"]]}}
%---
%[output:318171d9]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"ans","rows":5,"type":"double","value":[["-96","-93","-98","-92","-95","-93","-91","-97","-98","-92"],["-95","-93","-98","-92","-95","-97","-92","-91","-98","-92"],["-94","-97","-92","-98","-94","-93","-91","-98","-100","-97"],["-94","-91","-98","-92","-100","-96","-99","-95","-93","-98"],["-99","-96","-92","-97","-91","-100","-97","-98","-94","-93"]]}}
%---
%[output:2adf3b9c]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"ans","rows":5,"type":"double","value":[["0.4000","0.7000","0.2000","0.8000","0.5000","0.7000","0.9000","0.3000","0.2000","0.8000"],["0.5000","0.7000","0.2000","0.8000","0.5000","0.3000","0.8000","0.9000","0.2000","0.8000"],["0.6000","0.3000","0.8000","0.2000","0.6000","0.7000","0.9000","0.2000","0","0.3000"],["0.6000","0.9000","0.2000","0.8000","0","0.4000","0.1000","0.5000","0.7000","0.2000"],["0.1000","0.4000","0.8000","0.3000","0.9000","0","0.3000","0.2000","0.6000","0.7000"]]}}
%---
%[output:56a14663]
%   data: {"dataType":"matrix","outputData":{"columns":10,"name":"ans","rows":5,"type":"double","value":[["8","14","4","16","10","14","18","6","4","16"],["10","14","4","16","10","6","16","18","4","16"],["12","6","16","4","12","14","18","4","0","6"],["12","18","4","16","0","8","2","10","14","4"],["2","8","16","6","18","0","6","4","12","14"]]}}
%---
%[output:31206aca]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"0"},"version":0}
%---
%[output:4652812c]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"9"},"version":0}
%---
%[output:1942e373]
%   data: {"dataType":"not_yet_implemented_variable","outputData":{"columns":"1","name":"ans","rows":"1","value":"4.9000"},"version":0}
%---
