%% ECE 8873: RF Propagaion in Earth and Space Environments
% Rayleigh Criterion
% Caitlyn Caggia - March 15, 2019

% Constants
thetai = 0; % incident angle [degrees]
f = 10e6; % frequency [Hz]
lambda = 3e8 / f; % wavelength [m]

% Rayleigh Criterion
if sigmaZ < ( lambda/(8*cosd(thetai)) )
    % can consider object as smooth
else
    % object is rough
end
