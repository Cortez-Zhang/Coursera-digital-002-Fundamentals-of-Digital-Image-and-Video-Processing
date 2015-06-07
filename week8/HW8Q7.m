I = imread('Cameraman256.bmp');
idouble = im2double(I);
imshow(idouble);
e = entropy(idouble);
display(e);
