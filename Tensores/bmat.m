function [b]=bmat(F)
%Calcula o tensor de "deforma��o" de cauchy � esquerda.
b=F*F';
end