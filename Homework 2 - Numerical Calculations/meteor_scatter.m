%% ECE 8873 Homework 2.3
% Caitlyn Caggia

clear all; close all;

%% Constants
rEarth = 6371; % [km]
K = 1;
totalMeteorsPerSec = 158;
trailTime = 0.5; % [seconds]
dataRate = 1; % [kbps]
h = 100; % height above the surface of the Earth[km]

%% Part A

Rmax = 2*sqrt(2*K*rEarth*100);

sprintf('3A) Rmax = %2.2f km', Rmax)

%% Part B

R = Rmax/2; % radius of circle 1
r = R; % radius of circle 2
d = 500; % distance between centers of circles

d1 = (d^2 - r^2 + R^2) / (2*d);
d2 = d - d1;
overlap = findArea(R,d1) + findArea(r,d2);

SA = 4*pi*(rEarth+h)^2;
meteorsPerSec = overlap/SA * totalMeteorsPerSec;

sprintf('3B) Meteors Per Second: %2.2f', meteorsPerSec)

%% Part C

effDataRate = meteorsPerSec*trailTime*dataRate;

sprintf('3C) Effective Data Rate: %2.2f kbps', effDataRate)

%% Area Helper Function

function [area] = findArea(R,d)

area = R^2 * acos(d/R) - d*sqrt(R^2 - d^2);

end

