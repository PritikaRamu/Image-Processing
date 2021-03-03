a = double(imread('office_1.jpg'));
f = double(imread('office_4.jpg'));

[m,n,l]=size(a);
[p,q,r] = size(f);

b=zeros(m,n,1);

hi_1 = histcounts(a(:,:,1),256)/(m*n);
s_1 =cumsum(hi_1);

hi_2 = histcounts(a(:,:,2),256)/(m*n);
s_2 =cumsum(hi_2);

hi_3 = histcounts(a(:,:,3),256)/(m*n);
s_3 =cumsum(hi_3);

figure(1);
% subplot(3,1,1);plot(s_1);
% subplot(3,1,2);plot(s_2);
% subplot(3,1,3);plot(s_3);

 hif_1 = histcounts(f(:,:,1),256)/(p*q);
 sf_1 = cumsum(hif_1);
 sf_1 = transpose(sf_1);
 
 hif_2 = histcounts(f(:,:,2),256)/(p*q);
 sf_2 = cumsum(hif_2);
 sf_2 = transpose(sf_2);
 
 hif_3 = histcounts(f(:,:,3),256)/(p*q);
 sf_3 = cumsum(hif_3);
 sf_3 = transpose(sf_3);

% hif_2 =zeros(256,1);
% for i=1:p
%     for j=1:q
%         temp = f(i,j,2)+1;
%         hif_2(temp,1) = hif_2(temp,1)+1;
%     end
% end
% 
% hif_3 =zeros(256,1);
% for i=1:p
%     for j=1:q
%         temp = f(i,j,3)+1;
%         hif_3(temp,1) = hif_3(temp,1)+1;
%     end
% end

%sf_1=cumsum(hif_1/(p*q));
% sf_2=cumsum(hif_2/(p*q));
% sf_3=cumsum(hif_3/(p*q));

%figure(4);
% subplot(3,1,1);plot(sf_1);
% subplot(3,1,2);plot(sf_2);
% subplot(3,1,3);plot(sf_3);


output_map_1 = zeros(1,256);

for k=1:256
    temp = sf_1 - s_1(1,k);
    [arr,index] = min(abs(temp));
    output_map_1(1,k) = index;
end

output_map_2 = zeros(1,256);

for k=1:256
    temp = sf_2 - s_2(1,k);
    [arr,index] = min(abs(temp));
    output_map_2(1,k) = index;
end

output_map_3 = zeros(1,256);

for k=1:256
    temp = sf_3 - s_3(1,k);
    [arr,index] = min(abs(temp));
    output_map_3(1,k) = index;
end

final = zeros(m,n);
for i=1:m
    for j=1:n
        final(i,j,1) = output_map_1(a(i,j,1)+1);
        final(i,j,2) = output_map_2(a(i,j,2)+1);
        final(i,j,3) = output_map_3(a(i,j,3)+1);
    end
end

imshow(uint8(final));
figure(2);imshow(uint8(a));
figure(3);imshow(uint8(f));

% for i=1:m
%     for j=1:n
%         b(i,j,2)=sf_2(a(i,j,2)+1)*255;
%     end
% end
% 
% for i=1:m
%     for j=1:n
%         b(i,j,3)=sf_3(a(i,j,3)+1)*255;
%     end
% end
 %figure(5); imshow(uint8(f));