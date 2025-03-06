clearvars
close all

img_init = imread("lab-1/lena.png");
img = double(rgb2gray(img_init));

figure, imagesc(img), colormap('gray'), colorbar;

q = 256;
k = 32;

img_cript = mod(img+k,q);
figure, imagesc(img_cript), colormap('gray'), colorbar;

figure, subplot(2,1,1), histogram(img,128), grid, xlabel('intensity'),ylabel('no of pixels'),title('histogram - original image');
subplot(2,1,2), histogram(img_cript,128), grid, xlabel('intensity'),ylabel('no of pixels'),title('histogram - encrypted image');
