a = imread('cameraman.tif');
[m , n, l] = size(a);

mm = input('Size of mask: ');
nn=(mm-1)/2;
b=a;

for i=nn+1 : m-nn-1
    for j= nn+1 : n-nn-1
        for k=1:l
            b(i,j) = median(a(i-nn:i+nn, j-nn:j+nn), 'all');
        end
    end 
end

figure(1);
subplot(2,1,1); imshow(uint8(a));
subplot(2,1,2); imshow(uint8(b)); 
        