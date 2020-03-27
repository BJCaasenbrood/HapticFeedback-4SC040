clear; close all; clc;
%% load default settings
loadParameters;

%% User settings
ke = 0;
Kp = 1.0;
Kd = 0.1;
%% run model
OPTION = 2;
sim('mainModel');
plotSignals;


%% plot data

