clc
clear all
close all
%Display the color image
I=imread('sayed2.PNG');
figure,
subplot(1,4,1);
subimage(I);
title('Original Image');
%Display Resized image by Bilinear method
B=imresize(I,5);
subplot(1,4,2);
subimage(B);
title('Bilinear Image');
%Display Resized image by Nearest method
C=imresize(I,5,'nearest');
subplot(1,4,3);
subimage(C);
title('Nearest Image');
%Display Resized image by Bicubic method
D=imresize(I,5,'Bicubic');
subplot(1,4,4);
subimage(D);
title('Bicubic Image');