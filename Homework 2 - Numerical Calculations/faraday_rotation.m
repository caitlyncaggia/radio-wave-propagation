%% ECE 8873 Homework 2.2
% Caitlyn Caggia

% constants
q = -1.6e-19; % charge of an electron [C]
B = -41.3768e-6; % magnetic field [T]
melec = 9.11e-31; % mass of an electron [kg]
ep0 = 8.854e-12; % permittivity of free space
w = 2 * pi * 1575e6; % frequency [rad/sec]
c = 3e8; % speed of light [m/s]

% electron density data
NeData =[100.00  0.82635E+11  0.184
  150.00  0.14078E+12  0.314
  200.00  0.32861E+12  0.732
  250.00  0.44495E+12  0.991
  300.00  0.36071E+12  0.804
  350.00  0.25405E+12  0.566
  400.00  0.17340E+12  0.386
  450.00  0.12000E+12  0.267
  500.00  0.85497E+11  0.190
  550.00  0.62894E+11  0.140
  600.00  0.47696E+11  0.106
  650.00  0.37175E+11  0.083
  700.00  0.29683E+11  0.066
  750.00  0.24206E+11  0.054
  800.00  0.20106E+11  0.045
  850.00  0.16970E+11  0.038
  900.00  0.14526E+11  0.032
  950.00  0.12589E+11  0.028
 1000.00  0.11029E+11  0.025
 1050.00  0.97563E+10  0.022
 1100.00  0.87046E+10  0.019
 1150.00  0.78259E+10  0.017
 1200.00  0.70844E+10  0.016
 1250.00  0.64527E+10  0.014
 1300.00  0.59102E+10  0.013
 1350.00  0.54406E+10  0.012
 1400.00  0.50312E+10  0.011
 1450.00  0.46721E+10  0.010
 1500.00  0.43551E+10  0.010
 1550.00  0.40738E+10  0.009
 1600.00  0.38228E+10  0.009
 1650.00  0.35978E+10  0.008
 1700.00  0.33953E+10  0.008
 1750.00  0.32122E+10  0.007
 1800.00  0.30460E+10  0.007
 1850.00  0.28946E+10  0.006
 1900.00  0.27563E+10  0.006
 1950.00  0.26294E+10  0.006
 2000.00  0.25127E+10  0.006];

Ne = sum(50000*NeData(:,2)); 

thetaF = ( q^3 * B * Ne ) / ( 2 * melec^2 * ep0 * w^2 * c );

sprintf('Faraday Rotation Angle: %2.2f', rad2deg(thetaF))
