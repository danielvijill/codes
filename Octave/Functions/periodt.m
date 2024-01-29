function [xtilde,m]= periodt(x,n,P,dt)
%
% Genera la señal 'xtilde' que consiste en P períodos de la señal x.
%-----------------------------------
xtilde = x'* ones(1,P);
xtilde = xtilde(:);
xtilde = xtilde';
m = min(n):dt:min(n)+(P*length(n)-1)*dt;
