function [xtilde,m]= period(x,n,P)
%
% Genera la señal 'xtilde'que consiste en P períodos de la señal x.
%-----------------------------------
xtilde = x'* ones(1,P);
xtilde = xtilde(:);
xtilde = xtilde';
m=min(n):min(n)+P*length(n)-1;