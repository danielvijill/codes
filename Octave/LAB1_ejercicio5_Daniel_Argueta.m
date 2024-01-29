x=0.1:.1:5; %linear space
subplot(2,3,1);plot(x,x);title('plot of x'); % 2 rows, 3 columns and first plot
xlabel('x'); ylabel('y'); % axes labels
subplot(2,3,2);plot(x,x.^2);title('plot of x^2'); % 2 rows, 3 columns and second plot
xlabel('x'); ylabel('y'); % axes labels
subplot(2,3,3);plot(x,x.^3);title('plot of x^3'); % 2 rows, 3 columns and third plot
xlabel('x'); ylabel('y'); % axes labels
subplot(2,3,4);plot(x,cos(x));title('plot of cos(x)'); % 2 rows, 3 columns and fourth plot
xlabel('x'); ylabel('y'); % axes labels
subplot(2,3,5);plot(x,cos(2*x));title('plot of cos(2x)'); % 2 rows, 3 columns and fifth plot
xlabel('x'); ylabel('y'); % axes labels
subplot(2,3,6);plot(x,cos(3*x));title('plot of cos(3x)'); % 2 rows, 3 columns and sixth plot
xlabel('x'); ylabel('y'); % axes labels