a = double(imread('cameraman.tif'));
[m,n] = size(a);

blur_msk = ones(5,5)/25;

b = ones(m,n);

for i = 3: m-2
    for j = 3: n-2
        b(i,j) = sum(sum(a(i-2:i+2, j-2:j+2).*blur_msk));
    end
end

subplot(3,1,1); imshow(a,[]);
%subplot(3,1,2); imshow(b,[]);
subplot(3,1,2); imshow(uint8(3*a-b));
subplot(3,1,3); imshow(8*a-b,[]);