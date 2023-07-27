clc
clear all
close all
i=imread('sayed2.png');
subplot(2,4,1); imshow(i);
title('Original Image');
g=rgb2gray(i);
subplot(2,4,2); imshow(g); title('Gray Image');
f=fspecial('laplacian',0.05);
im=imfilter(g,f);
subplot(2,4,3); imshow(im); title('Laplacian ');
s=edge(g,'sobel');
subplot(2,4,4); imshow(s); title('Sobel');
p=edge(g,'prewitt');
subplot(2,4,5); imshow(p); title('Prewitt');
r=edge(g,'roberts');
subplot(2,4,6); imshow(r); title('Roberts');
[BW,thresh,gv,gh]=edge(g,'sobel',[],'horizontal');
[BW1,thresh1,gv1,gh1]=edge(g,'sobel',[],'vertical');
subplot(2,4,7); imshow(BW); title('Sobel Horizontal');
subplot(2,4,8);
imshow(BW); title('Sobel Vertical');
