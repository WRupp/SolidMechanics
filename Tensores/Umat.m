function [U]=Umat(F)
%Calcula o tensor de "estiramento"(stretching) de cauchy à direita.
C=Cmat(F);
[avetor,avalor]=eig(C);
n=size(F,2);
U=zeros(n);
for k=1:n
    na=avetor(:,k);
    U=U+sqrt(avalor(k,k))*prodT(na,na);	
end
end

