function [tau] = chebloc(a,b,k)
%定义k个chebyshev nodes
tau=zeros(1,k);
for i=1:k
    tau(i)=(b-a)/2*cos((2*k-2*i+1)*pi/(2*k))+(b+a)/2;
end
end