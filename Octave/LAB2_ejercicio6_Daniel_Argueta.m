% LABORATORIO 2
% EJERCICIO 6

%==============================================================================
% (a)

t1 = [-4:1/32:10];
exp1=exp(i*(t1 + pi./4));
x1 = real(exp1).*escalondt(0,-4,10,1/32);

subplot(3,2,1);
plot(t1,x1);
title('1-6a, x_1(t)=cos(t+pi/4)u(t), no periodica');
xlabel('tiempo(s)');
ylabel('x_1[n]');

%==============================================================================
% (b)

t2 = [-10:10];
x2 = escalon(0,-10,10)+fold(escalon(0,-10,10),t2);

subplot(3,2,2);
stem(t2,x2);
title('1-6b, x_2[n]=u[n]+u[-n], no periodica');
xlabel('tiempo(s)');
ylabel('x_2[n]');

%==============================================================================
% (c)

t3 = [-9:10];
x3 = zeros(1,length(t3));

for k= -10:10;
  
  x3 = x3 + impulso(4.*k,-9,10)-impulso(4.*k-1,-9,10);
  
endfor
%

subplot(3,2,3);
stem(t3,x3);
title('(c) x_3[n], periodica');
xlabel('tiempo(s)');
ylabel('x_3[n]');

%==============================================================================
% (d)

t4 = [-10:1/32:10];
x4 = 2.*cos(10.*t4 + 1) - sin(4.*t4 -1);

subplot(3,2,4);
plot(t4,x4);
title('1-6d, x_4[n]=2cos(10t+1)-sen(4t-1), periodica');
xlabel('tiempo(s)');
ylabel('x_4[n]');

%==============================================================================
% (e)

t5 = [-40:1:80];
exp2 = exp(i*(4.*pi.*t5)./7);
exp3 = exp(i*(2.*pi.*t5)./5);
x5 = real(1 + exp2 - exp3);

subplot(3,2,5);
stem(t5,x5);
title('1-6e, 1+cos((4*pi/7)*n)-cos((2*pi/5)*n), periodica');
xlabel('tiempo(s)');
ylabel('x_5[n]');


