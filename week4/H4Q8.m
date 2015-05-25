im1 = imread('digital-images-week4_quizzes-frame_1.jpg');
I1 = im2double(im1);
im2 = imread('digital-images-week4_quizzes-frame_2.jpg');
I2 = im2double(im2);

block1 = I1(65:96,81:112);
imshow(block1);

min = 999;
row = 100;
col = 100;

totalrow = 288/2;
totalcol = 352/2;

for i = 1:totalrow-31
    for j = 1:totalcol-31
        block2 = I2(i:i+31,j:j+31);
        s = mae(block1, block2);
        if (s<min)
           min = s;
           row = i;
           col = j;   
        end
    end
end

display(row);
display(col);
display(min*255);
imshow(I2(row:row+31,col:col+31));
