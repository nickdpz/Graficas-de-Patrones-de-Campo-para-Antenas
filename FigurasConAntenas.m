clear all;
close all;
theta = 0:0.01:2*pi;
%r = abs(exp(-1i*pi*cos((pi/2)-theta)) + exp(1i*pi*sqrt(2).*cos((pi/4)+theta)));%%% Triangulo rectangulo %%%%%
%r = abs(exp(-1i*pi*0.5*sqrt(2)*cos((pi/4)-theta))+exp(-1i*pi*0.5*sqrt(2)*cos((3*pi/4)-theta)));%%% Triangulo rectangulo desviado punto de fase %%%%%
%r = abs(exp(-1i*pi*cos(0.25*pi-theta))+exp(-1i*0.765*pi*cos(0.25*pi+theta)));% Trapecio tres antenas
%r = abs(exp(1i*(sqrt(3)/3)*pi.*cos(0.5*pi-theta))+exp(-1i*(sqrt(3)/3)*pi.*cos((pi/6)-theta))+exp(1i*(sqrt(3)/3)*pi.*cos((pi/6)+theta)));% Trapecio tres antenas
%r=abs(4*cos(0.5*pi.*cos(theta+0.5*pi)).*cos(0.5*pi.*cos(theta)));%multiplicacion de patrones
%r = abs( (20.*sin((20/2).*pi.*cos(theta)+10*pi)) ./ ((20/2).*pi.*cos(theta-pi)+10*pi));% 20 antenas segidas direcciondas con 90°
%r = abs( (20.*sin((20/2).*pi.*cos(theta)+5*pi)) ./ ((20/2).*pi.*cos(theta-pi)+5*pi));% 20 antenas segidas direcciondas con 60°
figure('Color','White');
polarplot(theta,r,'LineWidth',2);