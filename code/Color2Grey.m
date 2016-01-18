function grey_img = Color2Grey( img )
%COLOR2GREY Summary of this function goes here
%   Detailed explanation goes here
[w,h,~] = size(img);
grey_img = zeros(w,h);
for ab=1:w
    for or=1:h
        grey_img(ab,or) = (1/3)*(img(ab, or, 1) + img(ab, or, 2) + img(ab, or, 3));
    end
end
end

