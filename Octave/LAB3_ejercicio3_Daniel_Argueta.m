% LABORATORIO 3
% EJERCICIO 3

%==============================================================================

% Defining principal function 
n1 = [-15:15];
xn = ((0.5).^n1).*escalon(0,-15,15) + (2.^n1).*fold(escalon(0,-15,15),n1);
hn = escalon(0,-15,15);

%==================================================
% (a)

[y,ny] = convm(xn,n1,hn,n1);

% plots
subplot(2,4,1);
stem(ny,y,'g');
title('y[n]=x[n]*h[n]');

subplot(2,4,4);
stem(n1,xn);
title('x1[n]+x2[n]');
subplot(2,4,5);
stem(n1,hn);
title('h[n]=u[n]');

% =================================================
% (b)

% Defining functions
x1 = ((0.5).^n1).*escalon(0,-15,15);
x2 = (2.^n1).*fold(escalon(0,-15,15),n1);

% plots
subplot(2,4,2);
stem(n1,x1);
title('x1[n]');
subplot(2,4,3);
stem(n1,x2);
title('x2[n]');

% Constructing convolutions
[y1,ny1] = convm(x1,n1,hn,n1);
[y2,ny2] = convm(x2,n1,hn,n1);

% plots
subplot(2,4,6);
stem(ny1,y1);
title('y1[n]=x1[n]*h[n]');
subplot(2,4,7);
stem(ny2,y2);
title('y2[n]=x2[n]*h[n]');

% =================================================
% (c)

% Adding functions
[y3,ny3] = suma(y2,ny2,y1,ny1);

%plot
subplot(2,4,8);
stem(ny3,y3,'g');
title('y1[n]+y2[n]');