function [E]=Emat(F)
% Calcula o tensor de deforma��o de Green-st. Venant
E=(1/2)*(Cmat(F)-eye(size(F)));
end