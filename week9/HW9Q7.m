I = imread('Cameraman256.bmp');
idouble = im2double(I);
%imshow(idouble);

imwrite(idouble,'compressed.jpg','jpg', 'quality', 75);
idouble2 = im2double(imread('compressed.jpg'));
%imshow(idouble2);
squarederror = (idouble - idouble2).^2;
mse = sum(sum(squarederror))/(256*256);
psnr = 10*log10(1/mse);
display(psnr);

imwrite(idouble,'compressed.jpg','jpg', 'quality', 10);
idouble2 = im2double(imread('compressed.jpg'));
%imshow(idouble2);
squarederror = (idouble - idouble2).^2;
mse = sum(sum(squarederror))/(256*256);
psnr = 10*log10(1/mse);
display(psnr);