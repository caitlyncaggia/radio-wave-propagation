%% ECE 8873: RF Propagaion in Earth and Space Environments
% Radar Range Equation
% Caitlyn Caggia - March 15, 2019

% Constants
Pt = 1; % transmit power [Watts]
G = 1; % gain [linear]
f = 10e6; % frequency [Hz]
lambda = 3e8 / f ; % wavelength [m]
rcs = 1; % target radar cross section [m^2]
R = 1000; % range [m]
kb = 1.38e-23; % Boltzmann's constant
Bn = 1; % noise bandwidth [Hz]
L = 1; % other losses [linear]

Ts = Ta + Tr + LrTe; % system temperature [K]% 
% antenna + RF electronics + receiver

SNR = ( Pt*G^2*lambda^2*rcs ) / ( (4*pi)^3*R^4*kb*Ts*Bn*L ); 