a=imread('cameraman.tif');
[m,n] = size(a);
b=a;
figure(1);
for k=0:7
    for i=1:m
        for j=1:n
            if bitand(2.^k,a(i,j))==0
                b(i,j) = 0;
            else
                b(i,j) = 255;
            end
        end
    end
    subplot(2,4,8-k); imshow(uint8(b));
end
    