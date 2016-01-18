function actualized_img = anisotropicDiff( img, lambda, kappa )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[w,h] = size(img);
actualized_img = zeros(size(img));

for ab = 1:w
    for or = 1:h
        dif_coef = compute_coef(img, ab, or, kappa);
        fin_diff = compute_difference(img, ab, or);
        actualized_img(ab,or) = img(ab,or) + lambda*(dif_coef(1)*fin_diff(1) + dif_coef(2)*fin_diff(2) + dif_coef(3)*fin_diff(3) + dif_coef(4)*fin_diff(4));
    end
end

end

