function [Eponto]=dtE(F,t)
% Calcula a derivada temporal de E
d=symL(F,t);
Eponto=F'*d*F;
end