% LABORATORIO 3
% EJERCICIO 4

%==============================================================================

% Showing the code of the function elaborated:

% function [y,ny]=convol(x,nx,h,nh)
%   nyb = nx(1) + nh(1); nye = nx(length(x)) + nh(length(h));
%   ny = [nyb:nye];
%   y = zeros(1,length(ny));              
%   [hf,nhf] = fold(h,nh);             
%   for l=1:length(ny);                   
%     k = ny(l);
%     [hk,nhk] = desplaz(hf,nhf,k);        
%     [xh,nxh] = mult(x,nx,hk,nhk);
%     xh(1)=0.5*xh(1);
%     xh(length(xh)) = 0.5*xh(length(xh));
%     yl=sum(xh);                        
%     y(l)=yl;
%   end
%

%==============================================================================

% Defining functions from excercise 1
n1 = [-50:50];
x1 = ((0.8).^n1).*escalon(0,-50,50);
h1= escalon(0,-50,50);

% Constructing convolution using convol
[y,ny] = convol(x1,n1,h1,n1);;

% plotting
stem(ny,y);
title('y[n]=x[n]*h[n]');
xlabel('n');
xlim([-50 50]);