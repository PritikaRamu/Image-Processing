a=double(imread(('cameraman.tif')));

b=a.^input('Gamma value: ');
bb=255*b/max(b(:));

figure(1);
subplot(2,1,1); imshow(uint8(a));
subplot(2,1,2); imshow(uint8(bb));