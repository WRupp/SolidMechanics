function [V]=Vmat(F)
%Calcula o tensor de "estiramento"(stretching) de cauchy à esquerda.
b=bmat(F);
[avetor,avalor]=eig(b);
n=size(F,2);
V=zeros(n);
for k=1:n
    na=avetor(:,k);
    V=V+sqrt(avalor(k,k))*prodT(na,na);	
end
end