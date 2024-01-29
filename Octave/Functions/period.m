function [xtilde,m]= period(x,n,P)
%
% Genera la se�al 'xtilde'que consiste en P per�odos de la se�al x.
%-----------------------------------
xtilde = x'* ones(1,P);
xtilde = xtilde(:);
xtilde = xtilde';
m=min(n):min(n)+P*length(n)-1;