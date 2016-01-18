function output = diffusion_function( input, kappa )
%DIFFUSION_FUNCTION Summary of this function goes here
%   Detailed explanation goes here
output = 1/(1+(input/kappa)^2);
end

