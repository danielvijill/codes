function [y,ny]=convm(x,nx,h,nh)
  % Genera la convolución de dos señales con
  % información sobre sus dominios en el tiempo
  % ---------------------------------
  % [y,ny] = conv(x,nx,h,nh)
  % [y,ny] = resultado de la convolución
  % [x,nx] = primera señal
  % [h,nh] = segunda señal
  %
 nyb = nx(1) + nh(1); nye = nx(length(x)) + nh(length(h));
 ny = [nyb:nye];
 y = conv(x,h);