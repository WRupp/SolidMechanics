function [Tmr]=Tmooney(F,alpha,K)
%Calcula a tensao de mooney-Rivlin partindo dos parametros materiais
% alpha(1 e 2), K e o grad de mapeamento F

J=det(F);
b=bmat(F);
b_iso=J^(-2/3)*b;
trbi=trace(b_iso);
dbi=dev(b_iso);
dbi2=dev(b_iso^2);
Tmr=(1/J)*(2*(alpha(1)+alpha(2)*trbi) *dbi...
               -2*alpha(2)*dbi2+K*log(J)*eye(3));
end