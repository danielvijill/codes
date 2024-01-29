[x,y]=meshgrid(-4.0:0.2:4.0,-4.0:0.2:4.0); % creating mesh grid
z=0.5*(-20*x.^2+x)+0.5*(-15*y.^2+5.*y); % creating function

subplot(2,2,1)
surfl(x,y,z); % creating the surface plot
axis([-4 4 -4 4 -400 0]) % establishing the axes
xlabel('x-axis'); ylabel('y-axis'); zlabel('z-axis'); % axes labels
title('Surface Plot'); % title plot

subplot(2,2,2)
contour3(x,y,z,15); % creating the contour plot
axis([-4 4 -4 4 -400 0]) % establishing the axes
xlabel('x-axis'); ylabel('y-axis'); zlabel('z-axis'); % axes labels
title('Contour map'); % title plot