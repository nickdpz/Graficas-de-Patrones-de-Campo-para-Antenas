clear all;
close all;
theta = (0:.02:1)*pi;
phi   = (0:.02:1)*2*pi;
[Theta, Phi] = meshgrid(theta, phi);
%Log periodica Factor de forma
E0=(cos(0.5*pi.*cos(Theta)))./sin(Theta);
E1=(cos(0.75*pi.*cos(Theta))-cos(0.75*pi))./sin(Theta);
H= abs(E1.*exp((0.375i*pi).*sin(Theta).*cos(Phi-pi)+(0.375i*pi)+(0.5i*pi))...
       +E0.*exp((0.25i*pi).*sin(Theta).*cos(Phi)+(0.25i*pi)-(0.5i*pi))...
       +E0.*exp((0.5i*pi).*sin(Theta).*cos(Phi)+(0.5i*pi)-(0.5i*pi))...
       +E0.*exp((0.75i*pi).*sin(Theta).*cos(Phi)+(0.75i*pi)-(0.5i*pi))...
       +E0.*exp((1.5i*pi).*sin(Theta).*cos(Phi)+(1.5i*pi)-(0.5i*pi))...
       +E0.*exp((1.75i*pi).*sin(Theta).*cos(Phi)+(1.75i*pi)-(0.5i*pi))...
       +E0.*exp((2i*pi).*sin(Theta).*cos(Phi)+(2i*pi)-(0.5i*pi))...
       +E0);
X     =  H.*sin(Theta).*cos(Phi);
Y     =  H.*sin(Theta).*sin(Phi);
Z     =  H.*cos(Theta);
figure('Color','White')
surf(X,Y,Z);
view(3);
axis equal on;