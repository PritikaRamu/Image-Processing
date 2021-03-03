a=double(imread('office_4.jpg'));
[m,n,l]=size(a);
msk=ones(3,3);
msk(2,2)=-8;

b=ones(m,n);
c=ones(m,n);

for i=2:m-1
    for j=2:n-1
            b(i,j,1)=sum(sum(a(i-1:i+1,j-1:j+1,1).*msk));
            b(i,j,2)=sum(sum(a(i-1:i+1,j-1:j+1,2).*msk));
            b(i,j,3)=sum(sum(a(i-1:i+1,j-1:j+1,3).*msk));
    end
end

c(:,:,1) = a(:,:,1)-(b(:,:,1)/2);
c(:,:,2) = a(:,:,2)-(b(:,:,2)/2);
c(:,:,3) = a(:,:,3)-(b(:,:,3)/2);


figure(1);
subplot(3,1,1); imshow(b(:,:,1),[]),title("R");
subplot(3,1,2); imshow(b(:,:,2),[]),title("G");
subplot(3,1,3); imshow(b(:,:,3),[]),title("B");
% figure(2);
% subplot(2,1,1);
% imshow(a(:,:,2),[]);
% subplot(2,1,2);
% imshow(c(:,:,2),[]);
figure(2);imshow(uint8(a));
figure(3);imshow(uint8(c));