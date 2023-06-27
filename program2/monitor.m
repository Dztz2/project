function S = monitor(a,b,f,phil,phir,gl,gr,k)
f0=eva(a,b,f,phil,phir,gl,gr,k);
p=P(a,b,phil,phir,gl,gr,k);
sigma=p\f0;
sigma0=chebf(k)*sigma;
S=abs(sigma0(k-1))+abs(sigma0(k)-sigma0(k-2));
end