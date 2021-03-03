a = imread('cameraman.tif');
[m , n, l] = size(a);

b = a(1:2:end,1:2:end);

[p,q,r] = size(b);
c = zeros(m,n);

for i= 1:p
    for j=1:r
        for k=j*2:j*2+2
            c(2*i,k) = a(i,j);
        end
    end
end

for i=1:2:m
    for j=1:2:n
        c(i,j) = c(i+1,j);
    end
end

figure(1);
subplot(3,1,1); imshow(uint8(a));
subplot(3,1,2); imshow(uint8(b)); 
subplot(3,1,3); imshow(uint8(c));
