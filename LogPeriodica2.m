clear all;
close all;
theta = (0:.02:1)*pi;
phi   = (0:.02:1)*2*pi;
[Theta, Phi] = meshgrid(theta, phi);
%Log periodica Factor de forma
% Ee=(cos(0.65*pi.*cos(Theta))-cos(0.65*pi))./sin(Theta);
% Ed=(cos(0.227*pi.*cos(Theta))-cos(0.227*pi))./sin(Theta);
% Ec=(cos(0.245*pi.*cos(Theta))-cos(0.245*pi))./sin(Theta);
% Eb=(cos(0.384*pi.*cos(Theta))-cos(0.384*pi))./sin(Theta);
% Ea=(cos(0.5*pi.*cos(theta)))./sin(theta);
Ea=1;
Eb=1;
Ec=1;
Ed=1;
Ee=1;
H= abs(Ea+Eb.*exp(1i*(0.5*pi).*sin(Theta).*cos(Phi-pi)+(1i*0.5*pi)+(1i*pi))...
       +Ec.*exp(1i*(0.8840*pi).*sin(Theta).*cos(Phi-pi)+1i*(0.884i*pi))...
       +Ed.*exp(1i*(1.1804*pi).*sin(Theta).*cos(Phi-pi)+1i*(1.1804i*pi)+(1i*pi))...
       +Ee.*exp((0.65i*pi).*sin(Theta).*cos(Phi)-(0.65i*pi)+(1i*pi)));
X     =  H.*sin(Theta).*cos(Phi);
Y     =  H.*sin(Theta).*sin(Phi);
Z     =  H.*cos(Theta);
figure('Color','White')
surf(X,Y,Z);
view(3);
axis equal on;
