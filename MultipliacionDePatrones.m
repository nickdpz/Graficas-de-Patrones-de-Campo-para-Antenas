clear all;% Cuatro antenas formando un cuadrado
close all;
theta = 0:0.01:2*pi;
%r = abs(2*cos((pi/2)*sqrt(2).*cos(theta-(pi/4)))+2*cos((pi/2)*sqrt(2).*cos(theta+(pi/4))));%Superposicion A \+45° B / -45°
%r = abs(exp(-1i*(1/sqrt(2))*pi.*cos((pi/4)-theta))+exp(-1i*(1/sqrt(2))*pi.*cos((pi/4)+theta))+exp(1i*(1/sqrt(2))*pi.*cos((pi/4)+theta))+exp(1i*(1/sqrt(2))*pi.*cos((pi/4)-theta)));% Fasores individuales
%r=abs(2*cos(0.5*pi*cos(theta+0.5*pi)).*(exp(0.5*i*pi.*cos(theta))+exp(-0.5*i*pi.*cos(theta))));%centros de fase eb=ea=2*cos(0.5*pi*cos(theta+0.5*pi))
r = abs(4.*cos((pi/2).*cos(theta+(pi/2))).*cos((pi/2).*cos(theta)));%centros de fase eb=ea=2*cos(0.5*pi*cos(theta+0.5*pi))

figure(1);
polarplot(theta,r);