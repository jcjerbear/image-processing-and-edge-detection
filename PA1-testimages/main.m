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
figure(1)
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
% "trees_var010.tif", "trees_var025.tif") and salt-and-pepper noises 
% ("trees_salt004.tif", "trees_salt020.tif", "trees_salt050.tif"), create 
% various sizes of smoothing filters and apply them for several iterations 
% to generate smoothed images. Compare the result with the median filtering
% (several iterations) provided by MATLAB.

% read images
trees_var002 = imread('trees_var002.tif');
trees_var010 = imread('trees_var010.tif');
trees_var025 = imread('trees_var025.tif');
trees_salt004 = imread('trees_salt004.tif');
trees_salt020 = imread('trees_salt020.tif');
trees_salt050 = imread('trees_salt050.tif');

% apply different sizes smoothing filters on the trees_var images

% apply isotropic/anisotropic smoothing filters on trees_var002
% apply isotropic Gaussian smoothing filters with different sigma values
trees_var002_1_01 = imgaussfilt(trees_var002,2);
trees_var002_1_02 = imgaussfilt(trees_var002,4);
trees_var002_1_03 = imgaussfilt(trees_var002,8);
% apply anisotropic Gaussian smoothing filters with different sigma values
trees_var002_1_04 = imgaussfilt(trees_var002,[4 1]);
trees_var002_1_05 = imgaussfilt(trees_var002,[8 1]);
trees_var002_1_06 = imgaussfilt(trees_var002,[1 4]);
trees_var002_1_07 = imgaussfilt(trees_var002,[1 8]);

% apply isotropic/anisotropic smoothing filters on trees_var010
% apply isotropic Gaussian smoothing filters with different sigma values
trees_var010_1_01 = imgaussfilt(trees_var010,2);
trees_var010_1_02 = imgaussfilt(trees_var010,4);
trees_var010_1_03 = imgaussfilt(trees_var010,8);
% apply anisotropic Gaussian smoothing filters with different sigma values
trees_var010_1_04 = imgaussfilt(trees_var010,[4 1]);
trees_var010_1_05 = imgaussfilt(trees_var010,[8 1]);
trees_var010_1_06 = imgaussfilt(trees_var010,[1 4]);
trees_var010_1_07 = imgaussfilt(trees_var010,[1 8]);

% apply isotropic/anisotropic smoothing filters on trees_var025
% apply isotropic Gaussian smoothing filters with different sigma values
trees_var025_1_01 = imgaussfilt(trees_var025,2);
trees_var025_1_02 = imgaussfilt(trees_var025,4);
trees_var025_1_03 = imgaussfilt(trees_var025,8);
% apply anisotropic Gaussian smoothing filters with different sigma values
trees_var025_1_04 = imgaussfilt(trees_var025,[4 1]);
trees_var025_1_05 = imgaussfilt(trees_var025,[8 1]);
trees_var025_1_06 = imgaussfilt(trees_var025,[1 4]);
trees_var025_1_07 = imgaussfilt(trees_var025,[1 8]);

% use a median filter to filter out the noise
trees_var002_2 = medfilt2(trees_var002);
trees_var010_2 = medfilt2(trees_var010);
trees_var025_2 = medfilt2(trees_var025);

% show image
figure(2)
% random Gaussian noises(trees_var) images
% show the original trees_var002 image and the two being processed 
subplot(4,4,1)
imshow(trees_var002)
title('original')
% show the isotropic Gaussian smoothed trees_var002_1_XX images
subplot(4,4,2)
imshow(trees_var002_1_01)
title('isotropic Gaussian smoothed, \sigma=2')
subplot(4,4,6)
imshow(trees_var002_1_02)
title('isotropic Gaussian smoothed, \sigma=4')
subplot(4,4,10)
imshow(trees_var002_1_03)
title('isotropic Gaussian smoothed, \sigma=8')
% show the anisotropic Gaussian smoothed trees_var002_1_XX images
subplot(4,4,3)
imshow(trees_var002_1_04)
title('anisotropic Gaussian smoothed, \sigma_x=4, \sigma_y=1')
subplot(4,4,7)
imshow(trees_var002_1_05)
title('anisotropic Gaussian smoothed, \sigma_x=8, \sigma_y=1')
subplot(4,4,11)
imshow(trees_var002_1_06)
title('anisotropic Gaussian smoothed, \sigma_x=1, \sigma_y=4')
subplot(4,4,15)
imshow(trees_var002_1_07)
title('anisotropic Gaussian smoothed, \sigma_x=1, \sigma_y=8')
% show the median filter smoothed trees_var002_2 image
subplot(4,4,4)
imshow(trees_var002_2)
title('median filter')

% show image
figure(3)
% random Gaussian noises(trees_var) images
% show the original trees_var010 image and the two being processed 
subplot(4,4,1)
imshow(trees_var010)
title('original')
% show the isotropic Gaussian smoothed trees_var010_1_XX images
subplot(4,4,2)
imshow(trees_var010_1_01)
title('isotropic Gaussian smoothed, \sigma=2')
subplot(4,4,6)
imshow(trees_var010_1_02)
title('isotropic Gaussian smoothed, \sigma=4')
subplot(4,4,10)
imshow(trees_var010_1_03)
title('isotropic Gaussian smoothed, \sigma=8')
% show the anisotropic Gaussian smoothed trees_var010_1_XX images
subplot(4,4,3)
imshow(trees_var010_1_04)
title('anisotropic Gaussian smoothed, \sigma_x=4, \sigma_y=1')
subplot(4,4,7)
imshow(trees_var010_1_05)
title('anisotropic Gaussian smoothed, \sigma_x=8, \sigma_y=1')
subplot(4,4,11)
imshow(trees_var010_1_06)
title('anisotropic Gaussian smoothed, \sigma_x=1, \sigma_y=4')
subplot(4,4,15)
imshow(trees_var010_1_07)
title('anisotropic Gaussian smoothed, \sigma_x=1, \sigma_y=8')
% show the median filter smoothed trees_var010_2 image
subplot(4,4,4)
imshow(trees_var010_2)
title('median filter')

% show image
figure(4)
% random Gaussian noises(trees_var) images
% show the original trees_var025 image and the two being processed 
subplot(4,4,1)
imshow(trees_var025)
title('original')
% show the isotropic Gaussian smoothed trees_var025_1_XX images
subplot(4,4,2)
imshow(trees_var025_1_01)
title('isotropic Gaussian smoothed, \sigma=2')
subplot(4,4,6)
imshow(trees_var025_1_02)
title('isotropic Gaussian smoothed, \sigma=4')
subplot(4,4,10)
imshow(trees_var025_1_03)
title('isotropic Gaussian smoothed, \sigma=8')
% show the anisotropic Gaussian smoothed trees_var025_1_XX images
subplot(4,4,3)
imshow(trees_var025_1_04)
title('anisotropic Gaussian smoothed, \sigma_x=4, \sigma_y=1')
subplot(4,4,7)
imshow(trees_var025_1_05)
title('anisotropic Gaussian smoothed, \sigma_x=8, \sigma_y=1')
subplot(4,4,11)
imshow(trees_var025_1_06)
title('anisotropic Gaussian smoothed, \sigma_x=1, \sigma_y=4')
subplot(4,4,15)
imshow(trees_var025_1_07)
title('anisotropic Gaussian smoothed, \sigma_x=1, \sigma_y=8')
% show the median filter smoothed trees_var025_2 image
subplot(4,4,4)
imshow(trees_var025_2)
title('median filter')

% apply different sizes smoothing filters on the trees_salt images

% apply isotropic/anisotropic smoothing filters on trees_salt004
% apply isotropic wiener2 smoothing filters with different sigma values
trees_salt004_1_01 = wiener2(trees_salt004); % by default m&n are 3
trees_salt004_1_02 = wiener2(trees_salt004,[9 9]);
% apply anisotropic wiener2 smoothing filters with different sigma values
trees_salt004_1_03 = wiener2(trees_salt004,[3 9]);
trees_salt004_1_04 = wiener2(trees_salt004,[9 3]);

% apply isotropic/anisotropic smoothing filters on trees_salt020
% apply isotropic wiener2 smoothing filters with different sigma values
trees_salt020_1_01 = wiener2(trees_salt020); % by default m&n are 3
trees_salt020_1_02 = wiener2(trees_salt020,[27 27]);
% apply anisotropic wiener2 smoothing filters with different sigma values
trees_salt020_1_03 = wiener2(trees_salt020,[3 27]);
trees_salt020_1_04 = wiener2(trees_salt020,[27 3]);

% apply isotropic/anisotropic smoothing filters on trees_salt050
% apply isotropic wiener2 smoothing filters with different sigma values
trees_salt050_1_01 = wiener2(trees_salt050); % by default m&n are 3
trees_salt050_1_02 = wiener2(trees_salt050,[81 81]);
% apply anisotropic wiener2 smoothing filters with different sigma values
trees_salt050_1_03 = wiener2(trees_salt050,[3 81]);
trees_salt050_1_04 = wiener2(trees_salt050,[81 3]);

% use a median filter to filter out the noise
trees_salt004_2 = medfilt2(trees_salt004);
trees_salt020_2 = medfilt2(trees_salt020);
trees_salt050_2 = medfilt2(trees_salt050);

% show image
figure(5)
% salt-and-pepper noises(trees_salt) images
% show the original trees_salt004 image and the two being processed 
subplot(2,4,1)
imshow(trees_salt004)
title('original')
% show the isotropic wiener2 smoothed trees_salt004_1_XX images
subplot(2,4,2)
imshow(trees_salt004_1_01)
title('isotropic wiener2 smoothed, \sigma=3')
subplot(2,4,6)
imshow(trees_salt004_1_02)
title('isotropic wiener2 smoothed, \sigma=9')
% show the anisotropic wiener2 smoothed trees_salt004_1_XX images
subplot(2,4,3)
imshow(trees_salt004_1_03)
title('anisotropic wiener2 smoothed, \sigma_x=3, \sigma_y=9')
subplot(2,4,7)
imshow(trees_salt004_1_04)
title('anisotropic wiener2 smoothed, \sigma_x=9, \sigma_y=3')
% show the median filter smoothed trees_salt004_2 image
subplot(2,4,4)
imshow(trees_salt004_2)
title('median filter')

% show image
figure(6)
% salt-and-pepper noises(trees_salt) images
% show the original trees_salt020 image and the two being processed 
subplot(2,4,1)
imshow(trees_salt020)
title('original')
% show the isotropic wiener2 smoothed trees_salt020_1_XX images
subplot(2,4,2)
imshow(trees_salt020_1_01)
title('isotropic wiener2 smoothed, \sigma=3')
subplot(2,4,6)
imshow(trees_salt020_1_02)
title('isotropic wiener2 smoothed, \sigma=27')
% show the anisotropic wiener2 smoothed trees_salt020_1_XX images
subplot(2,4,3)
imshow(trees_salt020_1_03)
title('anisotropic wiener2 smoothed, \sigma_x=3, \sigma_y=27')
subplot(2,4,7)
imshow(trees_salt020_1_04)
title('anisotropic wiener2 smoothed, \sigma_x=27, \sigma_y=3')
% show the median filter smoothed trees_salt020_2 image
subplot(2,4,4)
imshow(trees_salt020_2)
title('median filter')

% show image
figure(7)
% salt-and-pepper noises(trees_salt) images
% show the original trees_salt050 image and the two being processed 
subplot(2,4,1)
imshow(trees_salt050)
title('original')
% show the isotropic wiener2 smoothed trees_salt050_1_XX images
subplot(2,4,2)
imshow(trees_salt050_1_01)
title('isotropic wiener2 smoothed, \sigma=3')
subplot(2,4,6)
imshow(trees_salt050_1_02)
title('isotropic wiener2 smoothed, \sigma=81')
% show the anisotropic wiener2 smoothed trees_salt050_1_XX images
subplot(2,4,3)
imshow(trees_salt050_1_03)
title('anisotropic wiener2 smoothed, \sigma_x=3, \sigma_y=81')
subplot(2,4,7)
imshow(trees_salt050_1_04)
title('anisotropic wiener2 smoothed, \sigma_x=81, \sigma_y=3')
% show the median filter smoothed trees_salt050_2 image
subplot(2,4,4)
imshow(trees_salt050_2)
title('median filter')

% save images to file
imwrite(trees_var002_1_01, 'trees_var002_1_01.bmp', 'bmp');
imwrite(trees_var002_1_02, 'trees_var002_1_02.bmp', 'bmp');
imwrite(trees_var002_1_03, 'trees_var002_1_03.bmp', 'bmp');
imwrite(trees_var002_1_04, 'trees_var002_1_04.bmp', 'bmp');
imwrite(trees_var002_1_05, 'trees_var002_1_05.bmp', 'bmp');
imwrite(trees_var002_1_06, 'trees_var002_1_06.bmp', 'bmp');
imwrite(trees_var002_1_07, 'trees_var002_1_07.bmp', 'bmp');
imwrite(trees_var002_2, 'trees_var002_2.bmp', 'bmp');

imwrite(trees_var010_1_01, 'trees_var010_1_01.bmp', 'bmp');
imwrite(trees_var010_1_02, 'trees_var010_1_02.bmp', 'bmp');
imwrite(trees_var010_1_03, 'trees_var010_1_03.bmp', 'bmp');
imwrite(trees_var010_1_04, 'trees_var010_1_04.bmp', 'bmp');
imwrite(trees_var010_1_05, 'trees_var010_1_05.bmp', 'bmp');
imwrite(trees_var010_1_06, 'trees_var010_1_06.bmp', 'bmp');
imwrite(trees_var010_1_07, 'trees_var010_1_07.bmp', 'bmp');
imwrite(trees_var010_2, 'trees_var010_2.bmp', 'bmp');

imwrite(trees_var025_1_01, 'trees_var025_1_01.bmp', 'bmp');
imwrite(trees_var025_1_02, 'trees_var025_1_02.bmp', 'bmp');
imwrite(trees_var025_1_03, 'trees_var025_1_03.bmp', 'bmp');
imwrite(trees_var025_1_04, 'trees_var025_1_04.bmp', 'bmp');
imwrite(trees_var025_1_05, 'trees_var025_1_05.bmp', 'bmp');
imwrite(trees_var025_1_06, 'trees_var025_1_06.bmp', 'bmp');
imwrite(trees_var025_1_07, 'trees_var025_1_07.bmp', 'bmp');
imwrite(trees_var025_2, 'trees_var025_2.bmp', 'bmp');

imwrite(trees_salt004_1_01, 'trees_salt004_1_01.bmp', 'bmp');
imwrite(trees_salt004_1_02, 'trees_salt004_1_02.bmp', 'bmp');
imwrite(trees_salt004_1_03, 'trees_salt004_1_03.bmp', 'bmp');
imwrite(trees_salt004_1_04, 'trees_salt004_1_04.bmp', 'bmp');
imwrite(trees_salt004_2, 'trees_salt004_2.bmp', 'bmp');

imwrite(trees_salt020_1_01, 'trees_salt020_1_01.bmp', 'bmp');
imwrite(trees_salt020_1_02, 'trees_salt020_1_02.bmp', 'bmp');
imwrite(trees_salt020_1_03, 'trees_salt020_1_03.bmp', 'bmp');
imwrite(trees_salt020_1_04, 'trees_salt020_1_04.bmp', 'bmp');
imwrite(trees_salt020_2, 'trees_salt020_2.bmp', 'bmp');

imwrite(trees_salt050_1_01, 'trees_salt050_1_01.bmp', 'bmp');
imwrite(trees_salt050_1_02, 'trees_salt050_1_02.bmp', 'bmp');
imwrite(trees_salt050_1_03, 'trees_salt050_1_03.bmp', 'bmp');
imwrite(trees_salt050_1_04, 'trees_salt050_1_04.bmp', 'bmp');
imwrite(trees_salt050_2, 'trees_salt050_2.bmp', 'bmp');

% QUESTION 03
% Try various filters to Sharpen color images, e.g., "peppers.png" and 
% "flower-glass.tif". Compare the results between sharpening on all RGBs 
% and on luminance alone.

% read images
peppers = imread('peppers.png');
flower_glass = imread('flower-glass.tif');

% sharpening on all RGBs
peppers_1 = imsharpen(peppers);
flower_glass_1 = imsharpen(flower_glass);

% sharpening on luminance
peppers_2 = peppers;
flower_glass_2 = flower_glass;

% show images
figure(8)
% show orginal peppers & all RGBs sharpened & luminance sharpened peppers
subplot(2,3,1)
imshow(peppers)
title('original')
subplot(2,3,2)
imshow(peppers_1)
title('RGBs sharpening')
subplot(2,3,3)
imshow(peppers_2)
title('luminance sharpening')
% show orginal flower-glass.tif & all RGBs sharpened & luminance sharpened
% flower-glass.tif
subplot(2,3,4)
imshow(flower_glass)
subplot(2,3,5)
imshow(flower_glass_1)
subplot(2,3,6)
imshow(flower_glass_2)

% save images to file
imwrite(peppers_1, 'peppers_1.bmp', 'bmp');
imwrite(peppers_2, 'peppers_2.bmp', 'bmp');
imwrite(flower_glass_1, 'flower_glass_1.bmp', 'bmp');
imwrite(flower_glass_2, 'flower_glass_2.bmp', 'bmp');

% QUESTION 04
% Edge detection. Try at least three different edge operators on one of 
% the noisy images and one of the smoothed images. Compare the results. 
% Write your own code to implement the "Canny edge operator" as outlined 
% in the Class Notes to generate good thin edges.







