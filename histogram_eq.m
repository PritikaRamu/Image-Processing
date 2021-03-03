a=imread('cameraman.tif');
a=double(a);
[m,n]=size(a);

hi = histcounts(a,256)/(m*n);
s=cumsum(hi);
figure(1); imshow(uint8(a));
figure(2);
subplot(2,1,1); plot(hi);
subplot(2,1,2); plot(s);

for i=1:m
    for j=1:n
        b(i,j)=s(a(i,j))*255;
    end
end
figure(3); imshow(b,[]);
