%% ECE 8873 - Homework 3.2
% Caitlyn Caggia

%% Initalization
% Constants
dt = 0.1; % timestep
q = 1; % charge (normalized)
m = 1; % mass (normalized)
E = 1; % E field
B = [0,0,1]; % B field
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

% Generate Plots
plot(x,y);
xlabel('X Position [m]');
ylabel('Y Position [m[');
title('Particle Position');
grid on;