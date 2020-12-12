%% ECE 8873: RF Propagaion in Earth and Space Environments
% Reflection and Transmission Coefficient Calculations
% Caitlyn Caggia - February 6, 2019

clear all; close all;

% Constants
eta0 = 377;
ep0 = 8.85e-12;
mu0 = (4*pi)*10^(-7);

% Given Values
epR1 = 1;
epR2 = 1;
mu1 = mu0; 
mu2 = mu0;
sigma = 0;
f = 3e9;

thetai = 0;

% Calulate Epsilon Effective
omega = 2*pi*f;
epEff1 = ep0*epR1 - j*sigma/omega;
epEff2 = ep0*epR2 - j*sigma/omega;

% Calcualte Eta
eta1 = sqrt(mu0/epEff1);
eta2 = sqrt(mu0/epEff2);

% Calculate Wavenumbers
k1 = omega * sqrt(mu1*epEff1);
k2 = omega * sqrt(mu2*epEff2);

% Calculate Transmission Angle (Generalized Snell's Law)
thetat = asind((k1/k2).*sind(thetai));

% Calculate Critical Angle
thetac = asind( k2/k1 );

% Calculate Brewster Angle
thetab = atand( k2/k1 );

% Calculate Reflection Coefficients
gammaTE = (eta2.*cosd(thetai) - eta1.*cosd(thetat)) ./ ...
    (eta2.*cosd(thetai) + eta1.*cosd(thetat));
gammaTM = (-eta1.*cosd(thetai) + eta2.*cosd(thetat)) ./ ...
    (eta1.*cosd(thetai) + eta2.*cosd(thetat));

% Calculate Transmission Coefficients
tauTE = 1 + gammaTE;
tauTM = 1 + gammaTM;

