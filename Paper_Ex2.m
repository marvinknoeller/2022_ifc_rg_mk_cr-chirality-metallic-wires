clear all
clc
close all
folder = fileparts(which(mfilename));
% Add that folder plus all subfolders to the path.
addpath(genpath(folder));
%%
Example2
%%
Example2_Gold
%%
% If necessary, one might already link to the precomputed files
Example2_PlotStructures
%%
Example2_FrequencyScan
%%
Example2_FrequencyScan_Gold