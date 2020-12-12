%% ECE 8873 - Homework 3.4
% Caitlyn Caggia

%% Initalization
% Constants
radE = 6371; % Earth's radius [km]
hstart = 4*radE; % [km]
hend = 100; % [km]

amirror = 90; % [degrees]
alpha = 0; % pitch angle [degrees]
Ek = 0; % electron energy level

latitude = 64.8;
theta = 90 - latitude;
r = radE;

dt = 0.1; % timestep
q = -1e-19; % charge (normalized)
m = 9.1e-31; % mass (normalized)
E = 0; % E field, part a = 0, part b = 1e3 Volts
B0 = 3.12e-5; % [T]
Br = -2*B0*(radE/r)^3*cosd(theta);
Btheta = -B0*(radE/r)^2*sind(theta);
Bphi = 0;
nsteps = 1000; % number of loop iterations

% Velocity
u = zeros(1,3); % previous velocity
x = zeros(1, length(nsteps));
y = zeros(1, length(nsteps));
v = zeros(1,3); % vector velocity

% Forces
fE = [0, q*E, 0];
fB = q*cross(v,B);

% Acceleration
a = [fB(1) , fE(2) + fB(2), 0]/m;

%% Calculation Loop
for i=2:nsteps
    
    % Update Forces
    fE = [0, q*E, 0];
    fB = q*cross(v,B);
    
    % Update Accleration
    a = [fB(1) , fE(2) + fB(2), 0]/m;
    
    % Update Velocity
    u = v;
    v = u + a*dt;
    
    % Update Position
    x(i) = x(i-1) + v(1)*dt + 0.5*a(1)*dt^2;
    y(i) = y(i-1) + v(2)*dt + 0.5*a(2)*dt^2;
    
    
end
