%% Hello world!
% Just like we did in class, display a message in the command window.
% This time, though, customize it; make MATLAB say hi to you specifically
% by storing your name in a variable and using that variable is your message.
% Feel free to have fun with it too. Can you get it to use emojis? What 
% about zalgo text?



%% Celsius to Fahrenheit
% Rzechorzek et al. (https://doi.org/10.1038/d41586-022-01654-7) report an 
% average human brain temperature of 38.5°C. Use MATLAB to convert this to 
% Fahrenheit and Kelvin; feel free to look up the formulas!

average_brain_temp_c = 38.5;

average_brain_temp_f = nan;
average_brain_temp_k = nan;


%% Mice in cages
% Emily has 32 transgenic mice, and she needs to split them evenly into 
% cages. If she has 13 cages, how many mice will be in each cage? How many 
% will be left over?

% Hint: You can solve this in several ways, but some helpful functions are 
% the floor and mod functions. You can learn more about them by typing 
% `help floor` and `help mod` in the command window, or by Googling them.

n_mice = 32;
n_cages = 13;

mice_per_cage = nan;
mice_left_over = nan;


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
n_tubes = nan;

flies_per_tube = nan;
flies_left_over = nan;



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
um_per_px = nan;

% this will be the image height in pixels multiplied by our um_per_px conversion factor
image_side_length_um = nan; 

% this will be the square of the image side length in microns
image_area = nan;


% this will be the number of neurons divided by the image area (in square microns)
neuron_density = nan; 

% Bonus: convert this to neurons per mm^2.