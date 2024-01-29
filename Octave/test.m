x = -10:0.1:10;
plot (x, sin (x));
title ("sin(x) for x = -10:0.1:10");
xlabel ("x");
ylabel ("sin (x)");
texto = strcat("pan ","", "blanco");
text (pi, 0.7, texto);
legend ("sin (x)");


x = 1:10;
y1 = x + randn(1,10);
%scatter(x,y1,25,'b','*')
P = polyfit(x,y1,1);
yfit = polyval(P,x);
%hold on;
%plot(x,yfit,'r-.');
%eqn = string(" Linear: y = " + P(1)) + "x + " + string(P(2));
%text(min(x),max(y1),eqn,"HorizontalAlignment","left","VerticalAlignment","top")