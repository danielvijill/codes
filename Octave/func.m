fundPeriod = pi/1000;
num_tsteps = 1000; 
num_periods = 4; 
tstep = num_periods * fundPeriod / num_tsteps; 

t = 0:tstep:(num_periods * fundPeriod); 
 msg = 2*cos(400*t)+4*sin(500*t+pi/3);
 carrier = cos(8000*pi*t);
 modulatedMsg = msg.*carrier;
 
f_s = num_tsteps / (fundPeriod*num_periods);
n = 2**16;
f = f_s*(-n/2:n/2-1)/n;

subplot(2,2,3);
plot(t, msg);
title("message Time dom");
grid on;

subplot(2,2,4);
plot(t, carrier);
title("carrier Time dom");
grid on;


subplot(2,2,1);
plot(t,modulatedMsg);
title("modulated time domain");
grid on;

y = abs(fft(modulatedMsg,n));
y = fftshift(y);
subplot(2,2,2);
stem(f, y);
title("fast fourier");
grid on;