function [x,t]=impulsodt(t0, t1, t2, dt)
  % Genera x(t) = delta(t -t0); t1 <= t <= t2 con frec. de muestreo 1/dt
  % ---------------------------
  % [x,t] = impulso(t0,t1,t2,dt)
  %
 t = [t1:dt:t2]; x = [(t - t0) == 0];