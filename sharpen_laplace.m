a=double(imread('cameraman.tif'));
[m,n,l]=size(a);
msk=ones(3,3);
msk(2,2)=-8;
b=a;
for i=2:m-1
    for j=2:n-1
        for k=1:l
            b(i,j,k)=sum(sum(a(i-1:i+1,j-1:j+1,k).*msk));
        end
    end
end
figure(1);
subplot(3,1,1); imshow(uint8(a));
subplot(3,1,2); imshow(b,[]);
subplot(3,1,3); imshow(a-b./200,[]);