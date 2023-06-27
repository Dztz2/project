function [matrix] = P(a,b,phil,phir,gl,gr,k)
%UNTITLED6 此处提供此函数的摘要
matrix=zeros(k,k);
for i=1:k
    P(i,i)=1;
end
x=chebloc(a,b,k);
Il=ckb(k)*Ils(k)*ckf(k);
Ir=ckb(k)*Irs(k)*ckf(k);
for j=1:k
    for l=1:k
        P(j,l)=P(j,l)+phil(x(j))*Il(j,l)*gl(x(j))+phir(x(j))*Ir(j,l)*gr(x(j));
    end
end
end