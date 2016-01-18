function output = norm2_gradient_or( img, ab, or )
%GRADIENT Summary of this function goes here
%   Detailed explanation goes here
[w,h,~] = size(img);
if(ab > 1 && ab < w && or > 0 && or < h)
    output = sqrt((img(ab-1, or) - img(ab+1, or))^2 + (img(ab, or) - img(ab, or+1))^2);
else
    output = 0;
end
end

