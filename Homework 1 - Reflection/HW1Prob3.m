%% ECE 8873 - Homework 1, Problem 3
% Caitlyn Caggia

clear all; close all;

% Given Values
epR = 2.5;
sigma = 0.0005;
f = 3e9;

% Constants
eta0 = 377;
ep0 = 8.85e-12;
mu0 = (4*pi)*10^(-7);

%% Part A

% Calculate Angles
thetai = linspace(0,90,500);
thetat = asind(1./sqrt(epR).*sind(thetai));

% Calculate Reflection Coefficients
omega = 2*pi*f;
eta = sqrt(mu0/(ep0*2.5 - j*sigma/omega));
gammaTE = (eta.*cosd(thetai) - eta0.*cosd(thetat)) ./ ...
    (eta.*cosd(thetai) + eta0.*cosd(thetat));
gammaTM = (-eta0.*cosd(thetai) + eta.*cosd(thetat)) ./ ...
    (eta0.*cosd(thetai) + eta.*cosd(thetat));

%% Part B Calculations

% New Values
sigmab = 4; 
epRb = 81;

% Calculate Angles
thetai = linspace(0,90,500);
thetat = asind(1./sqrt(epRb).*sind(thetai));

% Calculate Reflection Coefficients
omegab = 2*pi*f;
etab = sqrt(mu0/(ep0*2.5 - j*sigmab/omegab));
gammaTEb = (etab.*cosd(thetai) - eta0.*cosd(thetat)) ./ ...
    (etab.*cosd(thetai) + eta0.*cosd(thetat));
gammaTMb = (-eta0.*cosd(thetai) + etab.*cosd(thetat)) ./ ...
    (eta0.*cosd(thetai) + etab.*cosd(thetat));

%% Generate Plots
figure
plot(thetai, abs(gammaTE), thetai, abs(gammaTM))
legend('TE Polarization (Perpendicular)','TM Polarization (Parallel)')
title('Problem 3, Part a')

figure
plot(thetai, abs(gammaTEb), thetai, abs(gammaTMb))
legend('TE Polarization (Perpendicular)','TM Polarization (Parallel)')
title('Problem 3, Part b')