% LABORATORIO 3
% EJERCICIO 1

%==============================================================================

% Defining the input x[n]

% with alpha = 0.6;
[x1,n1] = escalon(0,-50,50);
x2 = ((0.6).^n1).*x1;

subplot(3,1,1);
stem(n1,x2); %visualizing
title('x[n]');

% Defining the unit impulse response h[n]
[h2,n2] = escalon(0,-50,50);

subplot(3,1,2);
stem(n2,h2); %visualizing
title('h[n]');

% Constructing the convolution
[r3,n3] = convm(x2,n1,h2,n2);

subplot(3,1,3);
stem(n3,r3);
title('y[n]=x[x]*h[n]');