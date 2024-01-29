# LABORATORIO 8
# EJERCICIO 1

# ====================================================================

load elnino.dat

t = elnino(:,2)';
soindex = elnino(:,1)';
n = length(soindex);

c = polyfit(t,soindex,1);
trend = polyval(c,t);

y = soindex - trend;

Y = fft(y);
Y(1) = [0];

pow = abs(Y(1:n/2)).^2;
pmax = 80000;
k = 1:29;
pow = pow(k);
ypk = n./k(2:2:end); % Months per cycle
plot([k; k],[0*pow; pow],'c-',k,pow,'b.','linewidth',2,'markersize',16)
axis([0 max(k)+1 0 pmax])
set(gca,'xtick',k(2:2:end))
xticklabels = sprintf('%5.1f|',ypk);
set(gca,'xticklabel',xticklabels)
xlabel('months/cycle')
ylabel('power')
title('Periodogram')
text(13.5,73000, "first cycle")
text(3,19000, "second cycle")

# The first trend cycle as the problem mentions, is close to 12 months
# The second cycle seems to be about 36 months

# ====================================================================

