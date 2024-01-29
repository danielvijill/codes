load sunspot.dat
t = sunspot(:,1)';
wolfer = sunspot(:,2)';
n = length(wolfer);

%plot(t,wolfer,'b');

c = polyfit(t,wolfer,1);
trend = polyval(c,t);
subplot(4,1,1);
plot(t,[wolfer;trend],'-',t,wolfer,'k.');
%xlabel('years');
%ylabel('Wolfer Index');
%title('Suspot index with linear trend');

y = wolfer - trend;
subplot(4,1,2);
plot(t,y);

Y = fft(y);
Y(1) = [0];
subplot(4,1,3);
plot(t,Y);

pow = abs(Y(1:n/2)).^2;
pmax = 20e6;
f = (1:n/2)/n;
subplot(4,1,4);
plot([f; f],[0*pow; pow],'c-', f, pow,'b.','linewidth',2,'markersize',16);
axis([0 .5 0 pmax]);
%xlabel('cycles/year');
%ylabel('power');
%title('Periodogram');





