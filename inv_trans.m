a = imread('cameraman.tif');
[m,n] = size(a);

b = zeros(m,n);

for i = 1:m
    for j = 1:n
        b(i,j) = 255 - a(i,j);
    end
end

imshow(b,[]);