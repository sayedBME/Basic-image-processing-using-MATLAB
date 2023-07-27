clc
clear all
close all
i=imread('sayed2.png');
subplot(1,6,1);imshow(i); title('Original Image');
l=im2double(i);
level=graythresh(l);
BW=im2bw(l,level);
subplot(1,6,2); imshow(BW); title('Image graythresh');
level1=0.2*BW;
subplot(1,6,3); imshow(level1); title('0.2 Slice');
level2=0.4*BW;
subplot(1,6,4); imshow(level2);title('0.4 Slice');
level3=0.6*BW;
subplot(1,6,5); imshow(level3);title('0.6 Slice');
level4=0.8*BW;
subplot(1,6,6); imshow(level4); title('0.8 Slice');
