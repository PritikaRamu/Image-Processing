clear;
close all;
wrapImg = imread('cameraman.tif');
hidImg = imread('lena_gray_512.tif');
[r,c] = size(wrapImg);
bitPlanes = uint8(zeros(r,c,8));
count = 1;
for i = 1:3
    bitPlanes(:,:,count) = bitget(hidImg,i+5);
    count = count + 1;
end

for i = 1:5
    bitPlanes(:,:,count) = bitget(wrapImg,i+3);
    count = count + 1;
end

outImg = uint8(zeros(r,c));
for i = 1:r
    for j = 1:c
        for k = 1:8
            outImg(i,j) = outImg(i,j) + bitPlanes(i,j,k)*(2^(k-1));
        end
    end
end
imshow(outImg,[]);
figure(2);
imshow(bitget(outImg,3),[]);