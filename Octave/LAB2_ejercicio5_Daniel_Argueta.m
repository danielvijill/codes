% LABORATORIO 2
% EJERCICIO 5

rate = 1/32;
%===========================================================================
% (a)

t1 = [-10:rate:5];
y1 = cos((2.*pi.*(0.8)).*t1);

subplot(2,2,1);
plot(t1,y1);
title('(a): coseno de 0.8 Hz')
xlabel('tiempo (s)')
ylabel('amplitud')

%===========================================================================
% (b)

t2 = [0:rate:15];
y2 = sin((2.*pi.*(0.5)).*t2);

subplot(2,2,2);
plot(t2,y2);
title('(b) Sinusoide de 0.5 Hz');
xlabel('tiempo (s)');
ylabel('amplitud');

%===========================================================================
% (c)

[y3,t3] = sumadt(y1,t1,y2,t2,rate);

subplot(2,2,3);
plot(t3,y3);
title('Suma de (a) y (b)');
xlabel('tiempo (s)');
ylabel('amplitud');

%===========================================================================
% (d)

[y4,t4] = multdt(y1,t1,y2,t2,rate);

subplot(2,2,4);
plot(t4,y4);
title('Producto de (a) y (b)');
xlabel('tiempo (s)');
ylabel('amplitud');

