a = imread('cameraman.tif');
[m,n] = size(a);

b = ones(m,n);

for i=1:m
    for j=1:n
        if(a(i,j)>125)
            b(i,j) = 255;
        else
            b(i,j) = 0;
        end
    end
end

figure(1);
imshow(a);
figure(2);
imshow(b);