t = 0:0.01:2; % linspace
xt = sin(2*pi*t); % generating the function
plot(t, xt, 'b'); % plotting
xlabel('t [s]'); % x plot label
ylabel('Sin(t)'); % y plot label
title('Plot of sin(2\pi t)'); % Title plot