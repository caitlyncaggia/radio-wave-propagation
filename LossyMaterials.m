%% ECE 8873: RF Propagaion in Earth and Space Environments
% Calculate epsilon effective, wavenumber, loss, skin depth in lossy
% materials
% Caitlyn Caggia - February 6, 2019

clear all; close all;

% Given
f = 200e6;
z = 0.1;
sigma = 0.027;
epsilonR = 10-j*1.42;

% Constants
epsilon0 = 8.85e-12;
mu = 4*pi*10^-7;

% Calculate Epsilon Effective
omega = 2*pi*f;
epsilonEff = epsilonR*epsilon0 - j*sigma/omega;

% Calculate Wavenumber
k = omega*sqrt(mu*epsilonEff);
alpha = -imag(k);
beta = real(k);

% Loss Factor
weakened = exp(-alpha*z);

% Skin Depth
skindepth = 1/alpha;