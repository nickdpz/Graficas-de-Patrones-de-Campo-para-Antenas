clear all;
close all;
theta = (0:.02:1)*pi;
phi   = (0:.02:1)*2*pi;
[Theta, Phi] = meshgrid(theta, phi);
%E0=(cos(0.5*pi.*cos(Theta)))./sin(Theta);
E0=1;
H= abs( E0.*exp(1i*(pi/(sqrt(2))).*sin(Theta).*cos(Phi-(pi/4)))...
       +E0.*exp(1i*(pi/sqrt(2)).*sin(Theta).*cos(Phi-(3*pi/4)))...
       +E0.*exp(1i*(pi/sqrt(2)).*sin(Theta).*cos(Phi+(pi/4)))...
       +E0.*exp(1i*(pi/sqrt(2)).*sin(Theta).*cos(Phi+(3*pi/4))));
X = H.*sin(Theta).*cos(Phi);
Y = H.*sin(Theta).*sin(Phi);
Z = H.*cos(Theta);
figure('Color','White')
surf(X,Y,Z);