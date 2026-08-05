%% Hello world!
% Just like we did in class, display a message in the command window.
% This time, though, customize it; make MATLAB say hi to you specifically
% by storing your name in a variable and using that variable is your message.
% Feel free to have fun with it too. Can you get it to use emojis? What 
% about zalgo text?

disp("Hi Jonathan ✨");

%% Celsius to Fahrenheit
% Rzechorzek et al. (https://doi.org/10.1038/d41586-022-01654-7) report an 
% average human brain temperature of 38.5°C. Use MATLAB to convert this to 
% Fahrenheit and Kelvin; feel free to look up the formulas!

average_brain_temp_c = 38.5;

average_brain_temp_f = average_brain_temp_c * 9/5 + 32;
average_brain_temp_k = average_brain_temp_c + 273.15;


%% Mice in cages
% Emily has 32 transgenic mice, and she needs to split them evenly into 
% cages. If she has 13 cages, how many mice will be in each cage? How many 
% will be left over?

% Hint: You can solve this in several ways, but some helpful functions are 
% the floor and mod functions. You can learn more about them by typing 
% `help floor` and `help mod` in the command window, or by Googling them.

n_mice = 32;
n_cages = 13;

mice_per_cage = floor(n_mice / n_cages);
mice_left_over = n_mice - mice_per_cage * n_cages
mice_left_over = mod(n_mice, n_cages)


%% Flies in tubes
% You may have been able to do the last one in your head.
% MATLAB shines when you need to do more difficult math, so let's attempt a
% harder problem involving files.

% Tahrim has 1031 flies, and she wants to split them evenly into groups of 
% about 20 flies per tube. She reasons that she can use between 47 and 54 
% tubes. How many tubes should she use to have as few flies left over as 
% possible?

% Hint: You can reuse the logic from the last problem, but plug in numbers 
% between 47 and 54.

n_flies = 1031;
n_tubes = 49;

flies_per_tube = floor(n_flies / n_tubes);
flies_left_over = mod(n_flies, n_tubes);



%% Neuron density
% Alex has imaged a square plane of auditory cortex. His software counts 
% 132 neurons in the image. Please calculate the neuron density in his 
% sample. Use variables to keep track of your work.
% (Inspired by https://doi.org/10.1523/JNEUROSCI.1190-23.2023, figure 2B,
% right panel.)

number_of_neurons = 132;

scale_bar_length_um = 400;
scale_bar_length_px = 262;
image_height_px = 912;

% this will be the scale bar length in microns divided by the scale bar length in pixels
um_per_px = scale_bar_length_um / scale_bar_length_px;

% this will be the image height in pixels multiplied by our um_per_px conversion factor
image_side_length_um = image_height_px * um_per_px; 

% this will be the square of the image side length in microns
image_area = image_side_length_um ^ 2;


% this will be the number of neurons divided by the image area (in square microns)
neuron_density = number_of_neurons / image_area

% Bonus: convert this to neurons per mm^2.

neuron_density * (10 ^ 6)