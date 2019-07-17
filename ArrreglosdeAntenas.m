clear all;
close all;
theta = 0:0.01:2*pi;
e0=(cos(0.5*pi.*cos(theta)))./sin(theta);
%r= abs(2*cos(0.5*pi.*(cos(theta))));%dos antenas desfase electrico0
%r= abs(2*cos(0.5*pi.*(cos(theta)+1)));%dos antenas desfase electrico pi
%r= abs(2*cos(pi.*cos(theta))+1);%tres antenas sin desfase electrico
%r= abs(2*e0.*cos(pi.*cos(theta))+e0);%tres antenas
%r= abs(2*(cos(0.5*pi.*cos(theta))+cos(1.5*pi.*cos(theta))));%cuatro antenas
%r= abs(4*(cos(0.5*pi.*cos(theta))).^2);%tres antenas binomial
r=abs(8*(cos(0.5*pi.*cos(theta))).^3);%cuatro antenasbinimial
figure('Color','White');
polarplot(theta,r,'LineWidth',2);