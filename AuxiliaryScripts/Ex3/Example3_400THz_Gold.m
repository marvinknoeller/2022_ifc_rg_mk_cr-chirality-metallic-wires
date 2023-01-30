%% Gold, 400 THz Random radius, random height, random rotation

clear all
close all
clc
folder = fileparts(which(mfilename));
% Add that folder plus all subfolders to the path.
addpath(genpath(folder));

given_frequency = 400; %Frequency in THz

lambda_point = physconst('LightSpeed')./given_frequency * 1e-6;%.4;%.4112;
material = "gold";

NumberOfSamples = 100;

parpool(32)
for numS = 1 : NumberOfSamples
    
    
    rng('shuffle')
    radiusp = 1/3*rand(1);    %in *100% of the wavelength
    heightp = 2/3*rand(1);     %in *100% of the wavelength
    
    %-------------------------------------------------------
    %% Variables for the scattering problem
    if material == "silver"
        lambda_eps = geteps(lambda_point);
    else
        lambda_eps = geteps_gold(lambda_point);
    end
    Var.eps_rel = lambda_eps;
    Var.mu_rel = 1;
    Var.kappa = 1;
    %% Variables for the optimization
    
    aa = 1;
    bb = 0.11;
    Var.N = 5;
    rho = .2;
    Var.aa = aa * rho;
    Var.bb = bb * rho;
    
    Var.n = 40; %number of nodes
    Var.M = 21; %number of points in each subsegment including first, last point
    %% Initial guess of curve
    rng(1234)
    tt = linspace(0,1,Var.n);
    kappa2 = 2*pi/(lambda_point*1e-6);
    height = lambda_point * 1000 * heightp *1e-9 * kappa2;
    radius = lambda_point* 1000 * radiusp *1e-9 * kappa2;
    
    x0 = radius*cos(8*pi*tt);
    y0 = radius*sin(8*pi*tt);
    z0 = height* tt - height/2;
    
    pcurve = [x0;y0;z0];
    
    rng('shuffle')
    alphaMult = (-3+6*rand(1));
    alphahandle =@(t)alphaMult*pi*t;
    [~,~,coefs,~,ts] = splinepoints(pcurve,Var.M);
    [p_in_between,der_p,derder_p,tt] = allpoints(coefs,ts,Var.n,Var.M);
    alpha = alphahandle(ts);
    FreeformMetalBFGS(Var,pcurve,1,alpha,strcat('Samples',num2str(given_frequency),'Gold','/','SampleNo',num2str(numS)));
end






