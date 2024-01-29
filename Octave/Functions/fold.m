function [y,n]=fold(x,n)
%implements y(n) = x(-n)
%----------------
%[y,n]=sigfold(x,n)
%
y = fliplr(x); n=-fliplr(n);