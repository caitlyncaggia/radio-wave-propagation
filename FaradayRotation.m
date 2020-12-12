%% ECE 8873: RF Propagaion in Earth and Space Environments
% Faraday Rotation
% Caitlyn Caggia - March 13, 2019

% Constants
q = -1.6e-19; % charge of an electron [C]
B = -41.3768e-6; % magnetic field [T]
melec = 9.11e-31; % mass of an electron [kg]
ep0 = 8.854e-12; % permittivity of free space
w = 2 * pi * 1575e6; % frequency [rad/sec]
c = 3e8; % speed of light [m/s]

% Electron Density
Ne = 1;

% Faraday Angle
thetaF = ( q^3 * B * Ne ) / ( 2 * melec^2 * ep0 * w^2 * c );

sprintf('Faraday Rotation Angle: %2.2f', rad2deg(thetaF))