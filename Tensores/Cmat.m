function [C]=Cmat(F)
%Calcula o tensor de "deforma��o" de cauchy � direita.
C=F'*F;
end