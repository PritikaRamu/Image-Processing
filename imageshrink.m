clear;
close all;
inputImage = imread('cameraman.tif');
factor = input('By what factor to shrink: ');
[rows,cols] = size(inputImage);
outImage = inputImage(1:factor:rows, 1:factor:cols);
imshow(outImage,[]);