% LABORATORIO 2
% EJERCICIO 2

%==============================================================================
% (a) Signal x[n] on figure 5

%Defining deltas near boundaries

[x1,n1] = impulso(-4,-4,46);
[x2,n2] = impulso(-3,-4,46);
[x3,n3] = impulso(-2,-4,46);
[x4,n4] = impulso(-1,-4,46);
[x5,n5] = impulso(0,-4,46);
[x6,n6] = impulso(43,-4,46);
[x7,n7] = impulso(44,-4,46);
[x8,n8] = impulso(45,-4,46);

%Setting a single function

[y1,n1]=suma(x1,n1,x2,n2);
[y2,n2]=suma(y1,n1,x3,n3);
[y3,n3]=suma(y2,n2,x4,n4);
[y4,n4]=suma(y3,n3,x5,n5);
[y5,n5]=suma(y4,n4,x6,n6);
[y6,n6]=suma(y5,n5,x7,n7);
[y7,n7]=suma(y6,n6,x8,n8);

% Attributing amplitudes to previously defined deltas

y7(1)= -1.0;
y7(2)= -0.5;
y7(3)= 0.5;
y7(4)= 1.0;
y7(5)= 1.0;
y7(6:48)= 1.0;
y7(50)= 0.5;

%==============================================================================
% (b) x[n-14]

[y8, n8] = tshift(y7,n7,14); %shifting

%==============================================================================
% (c) x[30-n]

[y9, n9] = fold(y7, n7); %folding
[y10, n10] = tshift(y9, n9, 30); %shifting by t=30

%==============================================================================
% (d) Suma de (a) y (b)

[y12, n12] = suma(y8,n8,y10,n10);

%==============================================================================

subplot(2,2,1);
stem(n7,y7);
title('x[n]');

subplot(2,2,2);
stem(n8, y8);
title('x[n-14]');

subplot(2,2,3);
stem(n10, y10);
title('x[30-n]');

subplot(2,2,4);
stem(n12,y12);
title('x[n-14]+x[30-n]');

