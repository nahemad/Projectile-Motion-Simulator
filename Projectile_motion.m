%Nahema Dumonteil
%Summer 2025
% Projectile Motion Animation 
clear;clc;close all
g=9.81;
v0=input('Enter an Initial Velocity (m/s): ');
x0=input('Enter an Initial horizontal position(m):');
y0=input('Enter an Initial Vertical position(m): ');
theta= input('Enter a launch angle (degrees): ');
theta=theta*pi/180;
vx=v0*cos(theta);
vy=v0*sin(theta);
tf=(vy+sqrt(vy^2+2*g*y0))/g; %calculate time it is in the air
%t=linspace(0,tf,100) %make a time vector 
t=0:.01:tf
%projectile motion equation to find x and y coordinates
x=x0+vx*t;
y=y0+vy*t-.5*g*t.^2;

figure %plot the projectiles

 hold on 
 
     axis([0 max(x)+1 0 max(y)+1])


for k=1:length(t)
    plot(x(1:k),y(1:k),'b')
     p=plot(x(k),y(k),'ro','MarkerFaceColor', 'r')
    pause(0.01);% add pauses so it looks like its moving 
     if k<length(t)
        delete(p)
     end
    
end




