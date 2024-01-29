% LABORATORIO 3
% EJERCICIO 2

%==============================================================================

% Defining first sequence
n = [-20:20];
x1 = zeros(1, length(n)); x1(21:25) = 1.0;
x1;

subplot(3,1,1);
stem(n,x1);
title('x[n]');

% Defining second sequence
% with alpha = 0.8
h1 = ((0.8).^n).*(escalon(0,-20,20)-escalon(7,-20,20));

subplot(3,1,2);
stem(n,h1);
title('h[n]');

% Constructing the convolution
[y3,n3] = convm(x1,n,h1,n);

subplot(3,1,3);
stem(n3,y3);
xlim([-20,20])
title('y[n]=x[n]*h[n]');