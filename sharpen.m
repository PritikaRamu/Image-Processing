a=double(imread('cameraman.tif'));
[m,n,l]=size(a);
mm=input('Sharpen value: ');
msk=[-1,-1,-1;-1,-1,-1;-1,-1,-1];
msk(2,2)=mm+7;
b=a;
for i=2:m-1
    for j=2:n-1
        for k=1:l
            b(i,j,k)=sum(sum(a(i-1:i+1,j-1:j+1,k).*msk));
        end
    end
end
figure(1);
subplot(2,1,1); imshow(uint8(a));
subplot(2,1,2); imshow(uint8(b));