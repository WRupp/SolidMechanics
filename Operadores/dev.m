function [A_dev]=dev(A)
%Calcula a parte desviadora de um tensor
trA=A(1,1)+A(2,2)+A(3,3);
A_dev=A-(1/3)*trA*eye(size(A));
if (trace(A_dev)>=1e-15)
    error('Erro na parte desviadora')
end
end