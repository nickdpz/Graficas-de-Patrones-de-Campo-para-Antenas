
clear all;
clc;
theta = 0:0.01:2*pi;
%r=abs((cos(2*pi.*cos(theta))-1)./sin(theta));%2 landa
%r= abs((cos(1.5*pi*cos(theta)))./sin(theta));% 1.5 landa
%r=abs((cos(4*pi.*cos(theta))-1)./sin(theta)); % 4 landa
%r=abs((cos(pi.*cos(theta))+1)./sin(theta));%landa
r=abs((cos(0.5*pi.*cos(theta)))./sin(theta));% landa medios
figure('Color','White');
polarplot(theta,r,'LineWidth',2);