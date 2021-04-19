%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; close all; clc;
addPath;            % load libary from /src folder
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load default settings
loadParameters;
%% User settings
ke = 1e4;           % environmental stiffness
Kp = 1.0;           % proportional gain
Kd = 0.5;           % differential gain
%% run model
OPTION = 1;         % 1=PP || 2=PF || 3=FF
sim('mainModel');   % edit mainModel.slx in /src folder 
                    % if changes to the model are needed

%% plotting
plotSignals;        % plots time-signals

% t    - simulation time
% ths  - angle slave device
% thm  - angle master device
% dths - angular velocity slave device
% dthm - angular velocity master device
% Fe   - environmental force
% Fh   - operator(-hand) force

%% simulation preview
plotOperators(t,thm,ths);   % plays tele-operator animations

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
