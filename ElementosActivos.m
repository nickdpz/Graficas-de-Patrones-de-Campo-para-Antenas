clear all;
theta = 0:0.01:2*pi;
r = abs((cos(2*pi.*cos(theta))-1)./sin(theta));
%r=abs(cos(2*pi.*cos(theta))-1)./sin(theta);%2 landa
%r= abs((cos(1.5*pi*cos(tetha)))./sin(theta));% 1.5 landa
%r=abs((cos(4*pi.*cos(tetha))-1)./sin(theta)); % 4 landa
%r=abs((cos(pi*cos(tetha))-1)./sin(tetha));%landa


figure(1);
polarplot(theta,r,'m-');