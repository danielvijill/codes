function [y,ny]=convm(x,nx,h,nh)
  % Genera la convoluci�n de dos se�ales con
  % informaci�n sobre sus dominios en el tiempo
  % ---------------------------------
  % [y,ny] = conv(x,nx,h,nh)
  % [y,ny] = resultado de la convoluci�n
  % [x,nx] = primera se�al
  % [h,nh] = segunda se�al
  %
 nyb = nx(1) + nh(1); nye = nx(length(x)) + nh(length(h));
 ny = [nyb:nye];
 y = conv(x,h);