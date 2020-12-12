%% ECE 8873 - Homework 3.4
% Caitlyn Caggia

%% Part A
% Position
radE = 6371; % Earth's radius [km]
r = radE; % we are on Earth's surface [km]
latitude = 64.8; % [degrees]
theta = 90 - latitude; % [degrees]

% Magnetic Field
B0 = 3.12e-5; % [T]
Br = -2*B0*(radE/r)^3*cosd(theta);
Btheta = -B0*(radE/r)^2*sind(theta);
Bphi = 0;

% Zenith Angle
azenith = atand(Btheta/Br);

sprintf('3A) Zenith Angle = %2.2f degrees', azenith)

%% Part B

inclination = 76.2295; % Inclination [degrees], pulled for 4/8/19
bzenith = 90 - inclination;

sprintf('3B) Zenith Angle = %2.2f degrees', bzenith)




