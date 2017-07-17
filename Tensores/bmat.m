function [b]=bmat(F)
%Calcula o tensor de "deformação" de cauchy à esquerda.
b=F*F';
end