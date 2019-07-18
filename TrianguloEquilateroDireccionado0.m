clear all;
close all;
theta = (0:.02:1)*pi;
phi   = (0:.02:1)*2*pi;
[Theta, Phi] = meshgrid(theta, phi);
%Log periodica Factor de forma
E0=1;
H= abs(E0.*exp(1i*(pi/(sqrt(3))).*sin(Theta).*cos(Phi-0.5*pi))...
       +E0.*exp(1i*(pi/sqrt(3)).*sin(Theta).*cos(Phi+(pi/6)))...
       +E0.*exp(1i*(pi/sqrt(3)).*sin(Theta).*cos(Phi+(5*pi/6))));
X = H.*sin(Theta).*cos(Phi);
Y = H.*sin(Theta).*sin(Phi);
Z = H.*cos(Theta);
figure('Color','White')
surf(X,Y,Z);
view(3);
axis equal on;