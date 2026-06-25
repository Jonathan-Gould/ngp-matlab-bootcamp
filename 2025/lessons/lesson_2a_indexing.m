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


%%
%[text] Check out what `lactose` looks like. It outputs a logical array of 1's and 0's, based on whether or not the item in `lactose_content` is consistent with our query (== "Y").
%[text] Now we know which positions in `desserts` correspond to desserts which contain lactose. How do we output only those desserts our lactose intolerant friend can eat? 
%use the new information about which positions contain lactose as a way to
%output the non-lactose desserts

%%
%[text] Great! Our friend is gonna be so happy when she sees that there are still 6 desserts on this menu that she can indulge in. 
%[text] Lets learn about more practical arithmetic cases for indexing. We'll create a random vector to use as a dataset. (reference: [http://bechtel.colorado.edu/~crimaldi/teaching/cven5343/Matlab%20Indexing.pdf](http://bechtel.colorado.edu/~crimaldi/teaching/cven5343/Matlab%20Indexing.pdf))
v = [16 5 9 4 2 11 7 14];
%%
%[text] The location we use to index can be a single value: 
%extract the 3rd element

%%
%[text] Or it can, itself, be a vector: 
 %extract the 1st, 5th, 6th elements

%%
%[text] You can use MATLAB's colon notation to extract a range of values: 
%extract the 3rd through 7th elements

%%
%[text] By assigning an indexed subset of v to a new variable, we can extract and swap the halves of v: 
%swap the first four and last four elements

%%
%[text] MATLAB includes the operator `end` to extract the last element of a vector: 
%extract the last element

%%
%[text] This can be used in a range: 
%extract the last 4 elements 

%%
%[text] Or it can be used in arithmetic: 
%extract the 5th through second-to-last element

%%
%[text] You can use the colon operator to do a lot of interesting alterations to the data: 
%extract all odd elements of the data


%reverse the order of the data


%%
%[text] If you include a vector on the right side of the equals sign, you can replace elements of a vector: 
%replace the 2nd, 3rd, and 4th elements of the vector v

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

%%
%[text] The above syntax extracts the value in the 3rd row and 7th column of `big_matrix`. The row and column inputs can also be vectors: 
big_matrix([1 2],[1 2])
%[text] If we don't know how long a certain matrix is, we can use the keyword `end` to obtain the value in the last row or column of a matrix. Try this below, to obtain the value in the 4th row and last column of `big_matrix`, and assign it to the variable `y`: 
%use end to get the value in the 4th row and last column of big_matrix

%%
%[text] We can also use something like `end-1` to tell MATLAB to obtain the second-to-last value. Try this syntax below, to obtain the value in the third-to-last row and 6th column, and assign it to the variable `z`: 
%get the value in the 3rd to last row and 6th column

%[text] A single `:` in the row or column index is shorthand for "1:end" or "all." Using this, we can extract an entire row or column: 
%extract the third row

%extract the fourth column

%%
%[text] MATLAB is designed to work well with matrices. You can add a scalar value to all elements of a matrix - try this below: 
%add 1 to each value in big_matrix

%%
%[text] This can also be done with other arithmetic operations, like subtraction or division. Try this below:
%test out some math on the matrix

%%
%[text] You can also add together any two matrices of the same size:
%add two matrices together 

%%
%[text] We can also perform statistical operations on matrices, including `min()`, `max()`, `mean()`, etc. This will output a vector of the apropriate value (minimum, maximum, or mean) for each column of the matrix.
%get the minimum value for each column of the matrix


%[text] 
%[text] 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":23.7}
%---
