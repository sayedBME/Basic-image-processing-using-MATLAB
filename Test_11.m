clc
clear all
close all
% Median Filters
i=imread('sayed2.png');
K = rgb2gray(i);
J= imnoise(K ,'salt & pepper',0.05);
f= medfilt2(J,[3,3]);
f1=medfilt2(J,[10,10]);
subplot(3,5,1); imshow(i); title('Original Image');
subplot(3,5,2); imshow(K); title('Gray Image');
subplot(3,5,3); imshow(J); title('Noise added Image');
subplot(3,5,4); imshow(f); title('3x3 Image');
subplot(3,5,5); imshow(f1); title('10x10 Image');
%Mean Filter and Average Filter
g=rgb2gray(i);
g1=fspecial('average',[3 3]);
b1 = imfilter(g,g1);
subplot(3,5,6); imshow(i); title('Original Image');
subplot(3,5,7); imshow(g); title('Gray Image');
subplot(3,5,8); imshow(b1); title('3x3 Image');
g2= fspecial('average',[10 10]);
b2=imfilter(g,g2);
subplot(3,5,9); imshow(b2); title('10x10 Image');
%Implementation of filter using Convolution
j=i(:,:,1); subplot(3,5,11); imshow(i); title('Original Image');
a=[0.001 0.001 0.001; 0.001 0.001 0.001; 0.001 0.001 0.001];
R=conv2(a,j);
subplot(3,5,12); imshow(R); title('Filtered Image');
b=[0.005 0.005 0.005; 0.005 0.005 0.005; 0.005 0.005 0.005];
R1=conv2(b,j);
subplot(3,5,13); imshow(R1); title('Filtered Image 2');
