function [C]=Cmat(F)
%Calcula o tensor de "deformação" de cauchy à direita.
C=F'*F;
end