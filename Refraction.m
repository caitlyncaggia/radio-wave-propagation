%% ECE 8873: RF Propagaion in Earth and Space Environments
% Refraction
% Caitlyn Caggia - February 6, 2019

clear all; close all;

% Constants
eta0 = 377;
ep0 = 8.85e-12;
mu0 = (4*pi)*10^(-7);
Rearth = 6371e3; %km

% Given
muR = mu0;
erR = 1;
k = 4/3;
h = 0;

% Refractive Index
n = sqrt(muR*erR);

% Distance to the Horizon
Rmax = sqrt(2*Rearth*k*h);

% Launch Angle
psi2 = sqrt(psi1^2 + (2*h)/(Rearth*k));