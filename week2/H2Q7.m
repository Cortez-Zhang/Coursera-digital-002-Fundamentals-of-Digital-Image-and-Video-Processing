I = imread('digital-images-week2_quizzes-lena.gif');
idouble = im2double(I);
h3 = fspecial('average', [3,3]);
h5 = fspecial('average', [5,5]);
new3 = imfilter(idouble, h3, 'replicate');
new5 = imfilter(idouble, h5, 'replicate');

squarederror = (idouble - new3).^2;
mse3 = sum(sum(squarederror))/(256*256);
psnr3 = 10*log10(1/mse3);

squarederror = (idouble - new5).^2;
mse5 = sum(sum(squarederror))/(256*256);
psnr5 = 10*log10(1/mse5);


