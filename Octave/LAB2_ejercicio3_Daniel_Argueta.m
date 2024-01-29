% LABORATORIO 2
% EJERCICIO 3

%==============================================================================
% (a)

n1 = [0:25];
x1 = zeros(1, length(n1));

for m = 0:10;
  x1 = x1+(m+1).*(impulso(2.*m,0,25)-impulso(2.*m+1,0,25));
endfor

subplot(2,3,1); 
stem(n1,x1,'b'); 
title('(a)');
ylabel('x_1[n]');
xlabel('n');

%==============================================================================
% (b)

n2 = [-20:20];
x2 = (n2.^2).*(escalon(-5,-20,20)-escalon(6,-20,20)) + 10.*impulso(0,-20,20) + 20.*((0.5).^n2).*(escalon(4,-20,20)-escalon(10,-20,20));

subplot(2,3,2);
stem(n2,x2,'b');
title('(b)');
ylabel('x_2[n]');
xlabel('n');

%==============================================================================
%(c)

n3 = [0:20];
x3 = ((0.9).^n3).*cos((0.2).*pi.*n3 + pi./3);

subplot(2,3,3);
stem(n3,x3,'b');
title('(c)');
ylabel('x_3[n]');
xlabel('n');


%==============================================================================
% (d)

n4 = [0:100];
x4 = 10.*cos((0.0008).*pi.*(n4.^2));

subplot(2,3,4);
stem(n4,x4,'b');
title('(d)');
ylabel('x_4[n]');
xlabel('n');



%==============================================================================
% (e)

% Constructing function using for loops

n5_0 = [0:3]; %original time domain
x5_0 = [2,1,2,3]; %original signal

x5_1 = zeros(1,length(x5_0)); %prop empty signal
n5_1 = zeros(1,length(n5_0)); %prop td

% first loop iterations
x5_3 = x5_0;
n5_3 = n5_0;

for k = 1:4
  [x5_1,n5_1] = tshift(x5_0,n5_0,4.*k); %shifted signal
  [x5_3,n5_3] = suma(x5_3,n5_3,x5_1,n5_1); %adding shifted signal to last iteration
  
 endfor

subplot(2,3,5);
stem(n5_3,x5_3,'b');
title('(e)');
ylabel('x_5[n]');
xlabel('n');

% constructing function using periodic functions

x6 = [2,1,2,3];
n6 = [0,1,2,3];

[x6_1, n6_1] = period(x6,n6,5);

%subplot(2,3,6);
%stem(n6_1,x6_1,'b');
%title('(e)');
%ylabel('x_6[n]');
%xlabel('n');
