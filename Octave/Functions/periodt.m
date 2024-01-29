function [xtilde,m]= periodt(x,n,P,dt)
%
% Genera la se�al 'xtilde' que consiste en P per�odos de la se�al x.
%-----------------------------------
xtilde = x'* ones(1,P);
xtilde = xtilde(:);
xtilde = xtilde';
m = min(n):dt:min(n)+(P*length(n)-1)*dt;
