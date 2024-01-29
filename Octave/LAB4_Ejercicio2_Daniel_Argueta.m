% LABORATORIO 4
% EJERCICIO 2

%==============================================================================

% Constructing and plotting the signal

t = [-2:0.25:2];
x = escalondt(-1,-2,2,0.25)-escalondt(1+0.25,-2,2,0.25);

subplot(1,2,1);
stem(t,x,'m');
title('x(t)');

h = x;

% Computing the convolution

[y1,n1] = convdt(x,t,h,t,0.25);

subplot(1,2,2);
stem(n1,y1,'m');
title('y(t)=x(t)*h(t)');

% Tackling the problem via computational tools show us a very dull approach
% by computing on discrete intervals, still by closing the gaps via raising
% the sampling frequency we can get some approximation to the continuous case
% or we could just simply interpolate the results.
% 
% The advantage of using this tool is that we can flexibly manipulate code
% as much as we want to integrate other components the program has to offer.

