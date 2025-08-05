%[text] # Lesson 2b: Plotting
%%
%[text] ## Plotting
%[text] As you can imagine, plotting your data is an essential skill as a scientist. To explore some facets of plotting, we'll use a dataset called response-times, consisting of the amount of time it took people to respond to a visual cue during an experiment.
%import responsetimes.txt and save it to the variable responseTimes


%uncomment the below line in order to load responseTimes
% responseTimes = importdata('responsetimes.txt');
%%
%[text] For this dataset, we have 1000 entries. Each entry is one trial where a human subject was asked to respond to a visual cue, and their response time is recorded in milliseconds (ms). Lets start by getting some basic stats on the dataset first: 
%%
%calculate the mean and median of the response times in the dataset

%[text] Now let's go ahead and plot the data. The most effective way to do this is through a histogram, which can be done easily with the MATLAB command `histogram().`
%%
%plot a histogram of the response times

%[text] So, using that simple command, MATLAB did its thing and just chose the sizes of the histogram bins and the size of the axes. But if we wanted a different degree of specificity here, we can choose our own number of bins sing the `nbins` argument to the `histogram()` function.
%%
%make the same histogram, but specify that you want 50 bins (bars)

%%
%[text] If, instead, we wanted to choose the size, rather than the number, of our bins, we can do that by defining the bin edges. This has to be done in an array format, where each entry in the array is the edge of one bin. an easy way to  create an evenly spaced array in MATLAB is using this colon notation: 
%[text] For our histogram bins, we're gonna want to choose bin edges based on the size of our data. What does it make sense to use as the minimum and maximum bins?
%use the minimum and maximium resopnse times to create a good bin range

%[text] lets try using this for our bin edges:
%%
%use bin_edges to define the edges of the bins in your plot

%%
%[text] OK, that's very hard to interpret. This is because we have one bin for each millisecond. Let's try it by keeping the bins evenly spaced, but with a wider size. 
%specify that you only want one new bin every 100 ms

%[text] That's a lot better. Let's make this even better by making a proper figure out of our plot, including the appropriate labels. 
%%
%Make a figure using these bin edges, and label it properly

%%
%[text] We can even add a line onto our plot to display the median by adding one more line to the code for our figure. 
%add a line to your figure at the median point

%[text] There are lots of different ways to specify the appearance of the line. Try a bunch and see what you come up with!
%%
%[text] 
%[text] There you go! You learned most of the basics of plotting in MATLAB. You can plot way more types of graphs than just histograms, and you'll generally use the same notation above like this: 
%[text] `%figure;`
%[text] `%command to plot goes here`
%[text] `%xlabel()`
%[text] `%ylabel()`
%[text] `%title()`
%[text] `%xline()`
%[text] `%yline()`
%[text] `%add any other things here that you might need to specify for your plot`
%[text] 
%[text] You can (and should) also try linking related plots together. lets try this with a more complex set of data from mine & Christian's work. 
%[text] The dataset is called Fluorescence\_data.mat. Lets load it now: 
%load the fluorescence data

%uncomment the below line to load the fluorescence data
load('Fluorescence_data.mat')
%[text] You may have noticed that it added a bunch of variables to your workspace, on the right. These variables are all behavioral data, collected from the same animal, during a single trial. On this setup, the mouse is head-fixed and trained that every time a visual stimulus is shown, it gets a food reward in the form of a drop of Ensure protein shake. The following variables are monitored:
%[text] - Each time there is a visual stimulus is displayed (Visual\_full)
%[text] - Each time it licks from the ensure spout (Lick\_full)
%[text] - Each time it gets an Ensure reward (Ensure\_full)
%[text] - Fluorescence of MCH neurons in the mouse brain, measured by fiber photometry \
%[text] Since all of those variables are collected simultaneously, over the same period of time, we'd like to plot them along the same axis. We can do that below.
%%
%plot all 4 above variables on the same axis for time

%uncomment the below section to view this example plot for the fluorescence
%data

% 
figure;
ax1 = subplot(4,1,1);
plot(Fluorescence, 'k' );
title('Fluorescence');
ax2 = subplot(4,1,2);
plot(Lick_full, 'm');
title('Licking');
ax3 = subplot(4,1,3);
plot(Visual_full, 'b');
title('Visual Stimulus');
ax4 = subplot(4,1,4);
plot(Ensure_full, 'r' );
title('Ensure');
linkaxes([ax1 ax2 ax3 ax4],'x');
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
%   data: {"layout":"onright","rightPanelPercent":19.4}
%---
