clc
clear all
close all
I=imread('sayed2.PNG');
subplot(1,4,1)
imshow(I)
title('Color Image');
c=imcomplement(I);
subplot(1,4,2)
imshow(c)
title('Complement of color Image')
r=rgb2gray(I);
subplot(1,4,3)
imshow(r)
title('Gray scale of color Image')
%Complement of Gray Image
b=imcomplement(r);
subplot(1,4,4)
imshow(b)
title('Complement of Gray Image')