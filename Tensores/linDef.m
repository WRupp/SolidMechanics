function [ eLin ] = linDef( F )
% Tensor de deformacao linearizada
eLin=(1/2)*(gumat(F)+gumat(F)');
end

