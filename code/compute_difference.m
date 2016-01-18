function differences = compute_difference( img, ab, or )
%COMPUTE_DIFFERENCE Summary of this function goes here
%   Detailed explanation goes here
[w,h,~] = size(img);
differences = zeros(4);
if(ab > 1)
    differences(1) = img(ab-1, or) - img(ab, or);
else
    differences(1) = 0;
end
if(ab < w)
    differences(2) = img(ab+1, or) - img(ab, or);
else
    differences(2) = 0;
end
if(or < h)
    differences(3) = img(ab, or+1) - img(ab, or);
else
    differences(3) = 0;
end
if(or > 1)
    differences(4) = img(ab, or-1) - img(ab, or);
else
    differences(4) = 0;
end

end

