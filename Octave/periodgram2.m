load train.mat

filename = 'train.mat';
myVars = {'y','Fs'};
S = load(filename, myVars{:});

Y = fft(y);
Y(1) = [0];

n = length(y);
pow = abs(Y(1:n/2)).^2;
pmax = 1e6;
f = (1:n/2)/n*Fs;
f = f';
plot([f; f],[0*pow; pow],'c-', f,pow,'b.','linewidth',2,'markersize',16)
axis([2000 3600 0 pmax/100])
xticks([2000:10:3600])
xlabel('cycles/second')
ylabel('power')
title('Periodogram')

