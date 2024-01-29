# LABORATORIO 8
# EJERCICIO 2

# ====================================================================

load train.mat

filename = 'train.mat';
myVars = {'y','Fs'};
S = load(filename, myVars{:});

# ====================================================================
# DATA PLOT

t = (1:length(y))/Fs;
subplot(2,2,1);
plot(t,y);
xlabel('time [seconds]');
ylabel('amplitude');
title('Train whistle waveform');

# ====================================================================
# PERIODOGRAM

Y = fft(y);
Y(1) = [0];

n = length(y);
pow = abs(Y(1:n/2)).^2;
pmax = 1e6;
f = (1:n/2)/n*Fs;
f = f';
subplot(2,2,2);
plot([f; f],[0*pow; pow],'c-', f,pow,'b.','linewidth',2,'markersize',16)
axis([0 4000 0 pmax])
xticks([0:800:4000])
xlabel('frequency[cycles/second]')
ylabel('power')
title('Periodogram')

# We can clearly distinguish the first three peaks in frequency, in order to
# have a better look of the last three we will restrict the plot to a smaller
# region on the right, between 2000 and 4000 Hz

subplot(2,2,3);
plot([f; f],[0*pow; pow],'c-', f,pow,'b.','linewidth',2,'markersize',16)
axis([2000 4000 0 pmax/100])
xticks([2000:400:4000])
xlabel('frequency [cycles/second]')
ylabel('power')
title('Closer look to Periodogram')

# ====================================================================

# I estimate the frequencies to be close to:

# f1 ~ 705 Hz
# f2 ~ 887 Hz
# f3 ~ 1169-70 Hz
# f4 ~ 2115 Hz
# f5 ~ 2659 Hz
# f6 ~ 3511-12 Hz

# We can visualize how 705, 2115 and 3511 show a similar slope as
# 887 and 2659, therefore we can asume 705, 887 and 1169 are the
# fundamental tones and the last three peaks are the overtones.

freqs = [705, 2115, 3511, 887, 2659, 1169.5];
x = 1:6; 

subplot(2,2,4);

scatter(x,freqs,25,'b','*') ;
xlim([0 7]);
xticklabels({'','705', '2115', '3511', '887', '2659', '1170',''});
xlabel('frequencies [Hz]');
title('Frequencies` scatter plot');

P1 = polyfit(x(1:3),freqs(1:3),1);
fit1 = polyval(P1,x(1:3));
hold on;
plot(x(1:3),fit1,'r-.');

P2 = polyfit(x(4:5),freqs(4:5),1);
fit2 = polyval(P2,x(4:5));
hold on;
plot(x(4:5),fit2,'r-.');

