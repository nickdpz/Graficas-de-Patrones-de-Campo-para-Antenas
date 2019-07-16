clear all;
close all;
tetha = 0:0.01:2*pi;
e0=(cos(0.5*pi.*cos(tetha)))./sin(tetha);
%r= abs(2*cos(0.5*pi.*(cos(tetha))));%dos antenas desfase electrico0
%r= abs(2*cos(0.5*pi.*(cos(tetha)+1)));%dos antenas desfase electrico pi
%r= abs(2*cos(pi.*cos(tetha))+1);%tres antenas sin desfase electrico
%r= abs(2*e0.*cos(pi.*cos(tetha))+e0);%tres antenas
%r= abs(2*(cos(0.5*pi.*cos(tetha))+cos(1.5*pi.*cos(tetha))));%cuatro antenas
%r= abs(4*(cos(0.5*pi.*cos(tetha))).^2);%tres antenas binomial
r=abs(8*(cos(0.5*pi.*cos(tetha))).^3);%cuatro antenasbinimial
figure(1);
polarplot(tetha,r);