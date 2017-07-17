function [T]=prodT(a,b)
%Calcula o produto tensorial entre dois vetores  a e b
% dada uma base ortonormal {e_i}
na=size(a);nb=size(b);
if (na==nb)
    T=zeros(na);
for i=1:na
    for j=1:na
        T(i,j)=a(i)*b(j);
    end
end
else
    error('Os vetores devem ter a mesma dimensao')
end
end