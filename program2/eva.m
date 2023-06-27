function [alpha,beta,delta] = eva(a,b,f,phil,phir,gl,gr,k)
%UNTITLED11 此处提供此函数的摘要
alpha=zeros(1,2);
beta=zeros(1,2);
delta=zeros(1,2);
G=P(a,b,phil,gl,phir,gr,k);
x=chebloc(a,b,k);
alpl=gl(x).*(G\phil(x));
alpr=gr(x).*(G\phil(x));
bel=gl(x).*(G\phir(x));
ber=gr(x).*(G\phir(x));
dell=gl(x).*(G\f(x));
delr=gr(x).*(G\f(x));
alpha(1)=chebint(alpl,a,b,k);
alpha(2)=chebint(alpr,a,b,k);
beta(1)=chebint(bel,a,b,k);
beta(2)=chebint(ber,a,b,k);
delta(1)=chebint(dell,a,b,k);
delta(2)=chebint(delr,a,b,k);
end