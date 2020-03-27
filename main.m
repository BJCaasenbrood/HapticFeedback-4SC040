%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; close all; clc;
addpath('src');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load default settings
loadParameters;
%% User settings
ke = 1e3;       % environmental stiffness
Kp = 75.0;      % proportional gain
Kd = 0.12;      % differential gain
%% run model
OPTION = 1;     % 1=PP || 2=PF || 3=FF
sim('mainModel');
plotSignals;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

