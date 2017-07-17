function [gu]=gumat(F)
% Calcula o gradiente de deslocamento
gu=F-eye(size(F));
end
