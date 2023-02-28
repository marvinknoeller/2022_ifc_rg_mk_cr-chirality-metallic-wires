clear all
clc
close all
folder = fileparts(which(mfilename));
% Add that folder plus all subfolders to the path.
addpath(genpath(folder));
%% Remark: The following programs take a long time to run
% If necessary: Disable the parpool command in all scripts.
% If you want to resimulate the convergence of the highly em-chiral objects
% that are considered in the 3rd example of our paper, please consider the
% following command:
%
%   load('PrecomputedResults/ResultsEx3/Samples400/SampleNo61.mat')
%   FreeformMetalBFGS(Var,pp(:,:,1),0,alpha_in_between,'Resimulation',RVec(:,:,1),SVec(:,:,1),TVec(:,:,1));
%
%   In order to simulate the other examples, load a different file from the
%   provided precomputed files.
%%
Example3_400THz
%%
Example3_500THz
%%
Example3_600THz
%%
Example3_700THz
%%
Example3_400THz_Gold
%%
Example3_500THz_Gold
%%
% From here on, eventually change the path to the sample that you want to
% load. Here, the paths load the precomputed files that are used in the
% publication.
%% Plots 
Example3_PlotStructures
%%
Example3_frequencyScan400
%%
Example3_frequencyScan500
%%
Example3_frequencyScan600
%%
Example3_frequencyScan700
%%
Example3_frequencyScan400Gold
%%
Example3_frequencyScan500Gold