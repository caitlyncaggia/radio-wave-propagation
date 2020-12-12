%% ECE 8873: RF Propagaion in Earth and Space Environments
% HF Propagation
% Caitlyn Caggia - March 15, 2019

% Constants
Nemax = 1; % maximum electron density in ionosphere
hmax = 100; % height of Ne,max [km]
radE = 6371; % radius of the Earth [km]
f = ; % frequency [Hz]
wavelength = 3e8 / f; % wavelength [m]
fkHz = f/1e3; % frequency [kHz]
K  = 1; % kappa [1 = ignore refraction, 4/3 = standard refraction]
a = 0; % height of transmitter above ground [km]

% Critical Frequency
fcrit = sqrt(80.8*Nemax); % [kHz]

% Critical Angle
thetac = acosd(fcrit / fkHz); % [degrees]

% Silent Zone
rmax = sqrt(2*K*radE*a); % distance to the horizon [km]
rmin = 0; % distance of shortest ionosphere bounce [km]
silentZone = rmin - rmax; % [km]


% Maximum Usable Frequency
fmax = (radE + hmax) / sqrt(2*radE*hmax + hmax^2) * fcrit;