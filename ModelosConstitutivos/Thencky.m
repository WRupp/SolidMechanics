function [Th]=Thencky(F,K,G)
% Calcula a tensao de hencky 
J=det(F);

elog=logDef(F);
[aVetor,aValor]=eig(elog);
somaAuto=trace(aValor);
Th=zeros(3);
for i=1:3
   na=aVetor(:,i);
   N =prodT(na,na);
   OI=(2*G*aValor(i,i)+(K-(2/3)*G)*(somaAuto));
   Th=Th+OI*N; 
end
Th=(1/J)*Th;

end