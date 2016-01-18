function ani_blurred_img = anisotropic(img, lambda, kappa, tau)
%ANISOTROPIC Summary of this function goes here
%   Detailed explanation goes here
nb_iterations = tau;
ani_blurred_img = img;
    for k=1:nb_iterations
        ani_blurred_img = anisotropicDiff(ani_blurred_img, lambda, kappa);
    end
end

