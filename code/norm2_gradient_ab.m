function output = norm2_gradient_ab( img, ab, or )
%GRADIENT Summary of this function goes here
%   Detailed explanation goes here
[w,h,~] = size(img);
if ( ab>0 && ab<w && or > 1 && or < h)
    output = sqrt((img(ab, or) - img(ab+1, or))^2 + (img(ab, or-1) - img(ab, or+1))^2);
else
   output = 0; 
end
end

