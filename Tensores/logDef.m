function [ eLog ] = logDef(F)
%Tensor de Deformacao logaritmica
V=Vmat(F);
[avetor,avalor]=eig(V);
n=size(F,2);
eLog=zeros(n);
for k=1:n
    na=avetor(:,k);
    N =prodT(na,na);
    eLog=eLog+log(avalor(k,k))*N;	
end
end

