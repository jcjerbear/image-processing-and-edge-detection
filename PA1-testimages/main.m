%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File Name: main.m
% Author: Jerry Chienyu Chen
% Environment: Matlab R2016b (may works fine with previous Matlab versions)
% Usage: In Matlab Command Window, type 'main'.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% QUESTION 01
% Write your own code to linearly stretch the gray scale on "dark.tif" 
% so that the image will have a better contrast than in the original image.
% Try histogram equalization for the same image.

% read image
dark = imread('dark.tif');

% write your own code to linearly stretch the gray scale on "dark.tif"
dark1 = imadjust(dark,[0.0,0.6],[0.0,1.0]);

% adjust the contrast using histogram equalization
dark2 = histeq(dark);

% show image
figure
% show the histogram and image of dark
subplot(3,2,1)
imshow(dark)
title('original')
subplot(3,2,2)
imhist(dark)
% show the histogram and image of dark1
subplot(3,2,3)
imshow(dark1)
title('linearly stretched')
subplot(3,2,4)
imhist(dark1)
% show the histogram and image of dark2
subplot(3,2,5)
imshow(dark2)
title('histeq')
subplot(3,2,6)
imhist(dark2)

% save images to file
imwrite(dark1, 'dark_1.bmp', 'bmp');
imwrite(dark2, 'dark_2.bmp', 'bmp');

% QUESTION 02
% Given images with random Gaussian noises ("trees_var002.tif", 
% "trees_var0010.tif", "trees_var025.tif") and salt-and-pepper noises 
% ("trees_salt004.tif", "trees_salt020.tif", "trees_salt050.tif"), create 
% various sizes of smoothing filters and apply them for several iterations 
% to generate smoothed images. Compare the result with the median filtering
% (several iterations) provided by MATLAB.



