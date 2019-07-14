clear all;
close all;
theta = (0:.02:1)*pi;
phi   = (0:.02:1)*2*pi;
[Theta, Phi] = meshgrid(theta, phi);
%Log periodica Factor de forma
Ea=(cos(0.416*pi.*cos(Theta))-cos(0.416*pi))./sin(Theta);
Eb=(cos(0.3472*pi.*cos(Theta))-cos(0.3472*pi))./sin(Theta);
Ec=(cos(0.2893*pi.*cos(Theta))-cos(0.2893*pi))./sin(Theta);
Ed=(cos(0.6*pi.*cos(Theta))-cos(0.6*pi))./sin(Theta);
Ee=(cos(0.5*pi.*cos(theta)))./sin(theta);
H= abs(Ea.*exp(i*(0.5*pi).*sin(Theta).*cos(Phi)+(i*0.5*pi)+(i*pi))...
       +Eb.*exp(i*(0.916*pi).*sin(Theta).*cos(Phi)+(0.916*pi*i))...
       +Ec.*exp(i*(1.26*pi).*sin(Theta).*cos(Phi)+(i*1.26*pi)+(i*pi))...
       +Ed.*exp(i*(0.6*pi).*sin(Theta).*cos(Phi-pi)-(i*0.6*pi)+(i*pi))...
       +Ee);
X     =  H.*sin(Theta).*cos(Phi);
Y     =  H.*sin(Theta).*sin(Phi);
Z     =  H.*cos(Theta);
surf(X,Y,Z);
axis equal off;