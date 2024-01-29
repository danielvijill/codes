t = 0:0.01:2;
xt = sin(2*pi*t);
n = 0:1:40; % sample index from 0 to 40
xn = sin(0.1*pi*n); % Evaluate sin(0.1 pi n)

subplot(2,1,1); % Create subplot, two rows, one column and first plot
plot(t, xt, 'b'); 
xlabel('t [s]');
ylabel('Sin(2t)')
title('Plot of sin(2\pi t)');

subplot(2,1,2); % Create subplot, two rows, one column and second plot
Hs = stem(n*0.05, xn, 'b', 'filled','markersize',4); %Stem-plot with handle Hs
xlabel('n'); ylabel('x(n)'); % Label axis
title('Stem Plot of sin(0.1\pi n)'); % Title plot