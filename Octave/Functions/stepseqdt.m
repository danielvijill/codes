function [x,n] = stepseqdt(n0,n1,n2,dt)
   n = [n1:dt:n2]; x = [(n-n0) >= 0];
