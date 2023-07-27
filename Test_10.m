clc
clear all
close all
i=imread('sayed2.png');
subplot(1,5,1)
imshow(i)
title('Original Image')
g=rgb2gray(i);
subplot(1,5,2)
imshow(g)
title('Gray Image')
c=imcrop(g,[25 30 20 25]);
subplot(1,5,3)
imshow(c)
title('Cropped Image')
m=mean2(c)
s=std2(c)
k=(checkerboard>0.8);
subplot(1,5,4); imshow(k); title('Image1');
k1=(checkerboard>0.5);
subplot(1,5,5); imshow(k1); title('Image2');
r=corr2(k,k1)
