clc
clear all
close all
i= imread('sayed2.png');
g=rgb2gray(i);
subplot(1,3,1); imshow(i); title('Original Image');
subplot(1,3,2); imshow(g); title('Gray Image');
c=edge(g,'canny');
subplot(1,3,3); imshow(c); title('Canny output');