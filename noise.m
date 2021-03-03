a = imread('AT3_1m4_01.tif');
b = imread('AT3_1m4_02.tif');
c = imread('AT3_1m4_03.tif');
d = imread('AT3_1m4_04.tif');
e = imread('AT3_1m4_05.tif');
f = imread('AT3_1m4_06.tif');
g = imread('AT3_1m4_07.tif');
h = imread('AT3_1m4_08.tif');
i = imread('AT3_1m4_09.tif');
j = imread('AT3_1m4_10.tif');

avg_img = (a+b+c+d+e+f+g+h+i+j)/10;

figure(2);
imshow(avg_img,[]);


