%% ECE 8873: RF Propagaion in Earth and Space Environments
% Radar Cross Section Calculations
% Caitlyn Caggia - March 13, 2019

%% Sphere

% Constants
a = 1; % radius of sphere [m]
f = 10e3; % frequency [Hz]
lambda = 3e8 / f; % wavelength [m]
k = 2*pi/lambda; % wavenumber

% RCS for a Sphere
if lambda > 10*a % Rayleigh region
    rcs = k / lambda^4;
elseif lambda*10 < a % Optical region
    rcs = pi*a^2;
end

%% Raindrop

% Constants
D = 1; % diameter of sphere [m]
f = 10e3; % frequency [Hz]
lambda = 3e8 / f; % wavelength [m]
n = 1; % index of refraction of water in raindrop
k = abs( (n^2 - 1) / (n^2 + 1) ); % NOT wavenumber, typically k^2 = 0.93

% Rayleigh Scattering for Raindrop
sigma = (pi^5 / lambda^4) * abs(k)^2 * D^2;

% RCS for Rain: Marshall-Palmer Formula
rcs = (pi^5 / lambda^4) * abs(k)^2 * sum(D.^2);
% where sum is sum of all raindrops