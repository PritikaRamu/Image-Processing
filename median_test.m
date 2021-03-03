clear all 
close all

a = imread('cameraman.tif');
d = input('Size of mask: \n');
[m,n] = size(a);

b = a;

for i = (d-1)/2 + 1:m - (d-1)/2 -1
    for j = (d-1)/2 + 1:n - (d-1)/2 -1
        b(i,j) = median(a(i-1:i+1, j-1:j+1), 'all');
    end    
end

figure(1); imshow(b);
figure(2); imshow(a);