%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; close all; clc;
addPath;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load default settings
loadParameters;
%% User settings
ke = 1e4;       % environmental stiffness
Kp = 1.0;      % proportional gain
Kd = 0.5;      % differential gain
%% run model
OPTION = 1;     % 1=PP || 2=PF || 3=FF
sim('mainModel');
plotSignals;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plotOperators(t,thm,ths);