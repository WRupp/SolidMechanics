function [P]=piola(T,F)
%Calcula o primeiro tensor de Piola-Kirchhoff P partindo do
%tensor Tensao T

J=det(F);
Ft=F';
P=J*T/Ft;
end