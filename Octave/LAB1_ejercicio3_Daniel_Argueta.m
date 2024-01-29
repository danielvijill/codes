t = 0:0.01:2;
xt = sin(2*pi*t);
n = 0:1:40; % index linear space
xn = sin(0.1*pi*n); % function evaluating

plot(t, xt, 'b'); hold on; % Stem-Plot
Hs = stem(n*0.05, xn, 'b', 'filled'); %Stem-plot with handle Hs
set(Hs, 'markersize',4); hold off; % setting circle size

xlabel('t in seconds');  ylabel('x(t) and x(n)'); % plot y-label and plot x-label
title('Plot of sin(2\pi t) and its samples'); % Title Plot