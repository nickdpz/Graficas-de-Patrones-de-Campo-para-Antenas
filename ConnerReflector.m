clear all;
close all;
theta = (0:.02:1)*pi;
phi   = (0:.02:1)*2*pi;
[Theta, Phi] = meshgrid(theta, phi);
%Cornner Reflector Factor de forma
Eo=(cos(0.5*pi.*cos(theta)))./sin(theta);
H= abs(Eo.*exp(i*(0.5*pi).*sin(Theta).*cos(Phi))...
       +Eo.*exp(i*(0.5*pi).*sin(Theta).*cos(Phi-0.5*pi)+(i*pi))...
       +Eo.*exp(i*(0.5*pi).*sin(Theta).*cos(Phi-pi))...
       +Eo.*exp(i*(0.5*pi).*sin(Theta).*cos(Phi-1.5*pi)+(i*pi)));
X     =  H.*sin(Theta).*cos(Phi);
Y     =  H.*sin(Theta).*sin(Phi);
Z     =  H.*cos(Theta);
figure('Color','White')
surf(X,Y,Z);
axis equal off;