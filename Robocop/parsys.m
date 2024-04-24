 clear all
 clc
 load matice.mat;
% close all
global R10 R21 RM2 g m1 m2 fi10 fi21 Deval
% zadani a vypocet rozmerovych a 
% hmotnostnich charakteristik

% constant mess lenght
R10=0;
R21=0.5;
RM2=0.4;
m1=15;
m2=8;
I1x=0.1;
I1y=0.05;
I1z=0.1;

I2x=0.08;
I2y=0.04;
I2z=0.08;

g=9.81;
% start position of leg
fi10 = -pi;
fi21 = -pi/2;
% vector of generalized variables
q=[fi10;fi21];

% start velocities of leg
dq=[0;0];

 % take symbolic form of D and put known variables inside
 Deval = eval(simD);
Dinv=inv(Deval);

% initial condition for second integrator
qic=Deval*q

