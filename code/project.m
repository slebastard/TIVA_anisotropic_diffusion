%-- TIVA - Project by Simon Lebastard --------------------------------%
%-- Comparison of the isotropic and anisotropic diffusion processes --%

% 1) Classic isotropic diffusion process

Irgb = imread('venice2.jpg');
[h,w,c]=size(Irgb);
Irgb=double(Irgb)./255;
I=Color2Grey(Irgb);

I_blurred_1=gaussian_convolution(I,2);
I_blurred_3=gaussian_convolution(I,5);

figure(1); clf(1);
imagesc(I); colormap(gray);
title('Original image');

figure(2); clf(2);
imagesc(I_blurred_1); colormap(gray);
title('Disparity Image for isotropic diffusion, kernel size 2');

figure(3); clf(3);
imagesc(I_blurred_3); colormap(gray);
title('Disparity Image for isotropic diffusion, kernel size 5');

I_an_blurred_1 = anisotropic(I,0.25,0.2,50);

figure(4); clf(4);
imagesc(I_an_blurred_1); colormap(gray);
title('Disparity Image for anisotropic diffusion, 50 iterations, lambda=0.25, kappa=0.2');



