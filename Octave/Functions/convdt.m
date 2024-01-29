function [y,ny]= convdt(x,nx,h,nh,dt);
  nyb = nx(1) + nh(1); nye = nx(length(x)) + nh(length(h));
  ny = [nyb:dt:nye];
  y=zeros(1,length(ny));
  [hf,nhf]=fold(h,nh);
  for l=1:length(ny);
    k=ny(l);
    [hk,nhk]=desplaz(hf,nhf,k);
    [xh,nxh]=multdt(x,nx,hk,nhk,dt);
    xh(1)=0.5*xh(1);
    xh(length(xh)) = 0.5*xh(length(xh));
    xh=dt*xh;
    yl=sum(xh);
    y(l)=yl;
  endfor
endfunction;