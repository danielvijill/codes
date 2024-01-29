function [y,ny]=convol(x,nx,h,nh)
  nyb = nx(1) + nh(1); nye = nx(length(x)) + nh(length(h));
  ny = [nyb:nye];
  y = zeros(1,length(ny));              
  [hf,nhf] = fold(h,nh);             
  for l=1:length(ny);                   
    k = ny(l);
    [hk,nhk] = desplaz(hf,nhf,k);        
    [xh,nxh] = mult(x,nx,hk,nhk);
    xh(1)=0.5*xh(1);
    xh(length(xh)) = 0.5*xh(length(xh));
    yl=sum(xh);                        
    y(l)=yl;
  end
endfunction