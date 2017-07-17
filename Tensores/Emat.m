function [E]=Emat(F)
% Calcula o tensor de deformação de Green-st. Venant
E=(1/2)*(Cmat(F)-eye(size(F)));
end