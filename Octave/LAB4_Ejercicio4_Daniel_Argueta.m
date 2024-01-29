% LABORATORIO 4
% EJERCICIO 4

%==============================================================================

% (a)

% In a case in which a > b
a = 2;
b = 1;

t1 = [-10:1/4:10];
x1 = multdt(exp(-a.*t1),t1,escalondt(0,-10,10,1/4),t1,1/4);
h1 = multdt(exp(-b.*t1),t1,escalondt(0,-10,10,1/4),t1,1/4);

[y1,n1] = convdt(x1,t1,h1,t1,1/4);

subplot(5,3,1);
plot(t1,x1,"-");
title("xa(t)");
xlim([0,3]);

subplot(5,3,2);
plot(t1,h1,"-");
title("ha(t)");
xlim([0,3]);

subplot(5,3,3);
plot(n1,y1,"-");
title("ya(t)=xa(t)*ha(t)");
xlim([0,6]);

%==============================================================================

% (b)

T = 1;
t2 = [-4*T:1/32:4*T];
x2 = escalondt(0,-4*T,4*T,1/32) - escalondt(T,-4*T,4*T,1/32);
h2 = escalondt(0,-4*T,4*T,1/32) - escalondt(2*T,-4*T,4*T,1/32);

[y2, n2] = convdt(x2,t2,h2,t2,1/32);

subplot(5,3,4);
plot(t2, x2, "r-");
title("xb(t)");
xlim([0,2]);
ylim([0,2]);

subplot(5,3,5);
plot(t2, h2, "r-");
title("hb(t)");
xlim([0,2]);
ylim([0,2]);

subplot(5,3,6);
plot(n2, y2, "r-");
title("yb(t)=xb(t)*hb(t)");
xlim([0,3]);
ylim([0,2]);

%==============================================================================

% (c)

t3 = [0:1/32:2];
t3_2 = [0:1/32:4];
x3 = sin(pi*t3);
h3 = 2*escalondt(1,0,4,1/32) - 2*escalondt(3,0,4,1/32);

[y3, n3] = convdt(x3,t3,h3,t3_2,1/32);

subplot(5,3,7);
plot(t3, x3, "b-");
title("xc(t)");
xlim([0,2]);
ylim([-2,2]);

subplot(5,3,8);
plot(t3_2, h3, "b-");
title("hc(t)");
xlim([0,3]);
ylim([0,2]);

subplot(5,3,9);
plot(n3, y3, "b-");
title("yc(t)=xc(t)*hc(t)");
xlim([0,5]);
ylim([-2,2]);

%==============================================================================

% (d)

t4 = [-2:1/16:5];
t4_2 = [0:1/16:4];
x4 = a.*t4 + b;
h4 = (4/3).*escalondt(0,0,4,1/16) - (4/3).*escalondt(1,0,4,1/16);

[y4, n4] = convdt(x4,t4,h4,t4_2,1/16);

subplot(5,3,10);
plot(t4, x4, "r-");
title("xd(t)");
xlim([-1,2]);
# ylim([0,2]);

subplot(5,3,11);
plot(t4_2, h4, "r-");
title("hd(t)");
xlim([0,2]);
ylim([-2,2]);

subplot(5,3,12);
plot(n4, y4, "r-");
title("yd(t)=xd(t)*hd(t)");
xlim([-2,8]);
#ylim([0,2]);

%==============================================================================

% (e)

t5_1 = [0:1/64:40];
x5 = square(pi*t5_1); % Using the square function from signal package

t5_2 = [0:1/64:1];
h5 = exp(-(2).*t5_2).*escalondt(0,0,1,1/64);

[y5, n5] = convdt(x5,t5_1,h5,t5_2,1/64);

subplot(5,3,13);
plot(t5_1, x5);
title("xe(t)");
xlim([-10,50]);
ylim([-1,1]);

subplot(5,3,14);
plot(t5_2, h5);
title("he(t)");
xlim([0,1]);
ylim([0,1]);

subplot(5,3,15);
plot(n5, y5);
title("ye(t)=xe(t)*he(t)");
xlim([-10,50]);
ylim([-0.8,0.8]);

