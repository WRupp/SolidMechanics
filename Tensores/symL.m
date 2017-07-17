function [d]=symL(F,t)
%Calcula a parte simetrica do gradiente de velocidade
l=gradv(F,t);
d=(1/2)*(l+l');
end