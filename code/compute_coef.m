function coefs = compute_coef( img, ab, or, kappa )
%COMPUTE_COEF Summary of this function goes here
%   Detailed explanation goes here
coefs = zeros(4);

grad_N = norm2_gradient_ab(img, ab, or);
coefs(1) = diffusion_function(grad_N, kappa);

grad_S = norm2_gradient_ab(img, ab - 1, or);
coefs(2) = diffusion_function(grad_S, kappa);

grad_E = norm2_gradient_or(img, ab, or);
coefs(3) = diffusion_function(grad_E, kappa);

grad_W = norm2_gradient_or(img, ab, or - 1);
coefs(4) = diffusion_function(grad_W, kappa);

end

