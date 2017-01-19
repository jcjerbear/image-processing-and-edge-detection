# Image Processing & Edge Detection

**Objective**

In this assignment you will learn some early image processing and edge detection techniques in MATLAB. Use images specified below and others as your test images. Some of the details will be explained in the class.

**Assignment**

1. Write your own code to linearly _stretch_ the gray scale on "dark.tif" so that the image will have a better contrast than in the original image. Try histogram equalization for the same image.
2. Given images with random Gaussian noises ("trees_var002.tif", "trees_var0010.tif", "trees_var025.tif") and salt-and-pepper noises ("trees_salt004.tif", "trees_salt020.tif", "trees_salt050.tif"), create various sizes of _smoothing_ filters and apply them for several iterations to generate smoothed images. Compare the result with the _median_ filtering (several iterations) provided by MATLAB.
3. Try various filters to _Sharpen_ color images, e.g., "peppers.png" and "flower-glass.tif". Compare the results between sharpening on all RGBs and on luminance alone.
4. Edge detection. Try at least three different edge operators on one of the noisy images and one of the smoothed images. Compare the results.
Write your own code to implement the "Canny edge operator" as outlined in the Class Notes to generate good thin edges.

**Related Files**

Test Images: PA1-testimages.rar

MATLAB Sample Code: PA1-start-Matlab.zip