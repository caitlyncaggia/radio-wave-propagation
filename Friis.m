%% ECE 8873: RF Propagaion in Earth and Space Environments
% Friis Transmission Equation
% Caitlyn Caggia - February 6, 2019

clear all; close all;

% Inputs
Pt = 1;
Gt = 1;
Pr = 1;
Gr = 1;
f = 1e9;
r = 10;

c = 3e8;
lambda = c/f;

% Calculate Received Power
Pr = (Pt*Gt*Gr*lambda^2) / (4*pi*r^2); % linear

% Calculate Max Distance
r = sqrt( (Pr*4*pi) / (Pt*Gt*Gr*lambda^2) ); % linear
