function [x,t]=escalondt(t0,t1,t2,dt)
% Genera x(t) = u(t -t0); t1 <= t <= t2 con frec. de 1/dt
% -------------------------------------------
% [x,t] = escalon(t0,t1,t2)
%
t = [t1:dt:t2]; x = [(t - t0) >= 0];