clear all
clc
close all
folder = fileparts(which(mfilename));
% Add that folder plus all subfolders to the path.
addpath(genpath(folder));
%%
Example1
%%
% If necessary, one might already link to the precomputed files
Example1_PlotTubes
%%
Example1_FrequencyScan
%%
Example1_FrequencyScan_Gold