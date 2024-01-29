n=0:1:40; % index linear space from 0 to 40
xn=sin(0.1*pi*n); % function evaluating

stem(n,xn,'b','filled','markersize',4); % stem-plot
xlabel('n');  ylabel('x(n)'); % plot y and x labels
title('Stem Plot of sin(0.1\pi n)'); % Title plotpublish