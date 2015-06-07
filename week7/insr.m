function ratio = isnr(image_original, image_noisy, image_restored)
%ISNR Summary of this function goes here
%   Detailed explanation goes here

  ratio = 10 * log10((norm(image_original - image_noisy, 'fro') ^ 2) / ( norm(image_original - image_restored, 'fro') ^ 2) );
end