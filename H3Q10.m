% step 1
I = imread('digital-images-week3_quizzes-original_quiz.jpg');
idouble = im2double(I);

% step 2
h3 = [1/9,1/9,1/9;1/9,1/9,1/9;1/9,1/9,1/9];
resultLowPass = imfilter(idouble, h3, 'replicate');

% step 3: Downsampling
downsampled = resultLowPass(1:2:end, 1:2:end);

% step 4: Upsampling
padding(1:359,1:479) = 0.0;
padding(1:2:end,1:2:end) = downsampled(1:end,1:end);

% step 5:
filter = [0.25,0.5,0.25;0.5,1,0.5;0.25,0.5,0.25];
upsampled = imfilter(padding, filter);

% step 6:
squarederror = (idouble - upsampled).^2;
mse = sum(sum(squarederror))/(359*479);
psnr = 10*log10(1/mse);

disp(mse);
disp(psnr);
% psnr = 28.1753

