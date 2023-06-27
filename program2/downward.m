function [lambda1,lambda2] = downward(X1,X2,Lam)
lambda1=zeros(1,2);
lambda2=zeros(1,2);
D=[1,X2(2);X1(3),1];
E=[Lam(2)*(1-X2(4))-X2(6);Lam(1)*(1-X1(1))-X1(5)];
S=D\E;
lambda1(1)=Lam(1);
lambda2(2)=Lam(2);
lambda1(2)=S(1);
lambda2(1)=S(2);
end