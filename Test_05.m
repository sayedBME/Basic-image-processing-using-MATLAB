clc
clear all
close all
I=imread('sayed2.PNG');
s=input('Enter Scaling Factor');
subplot(1,4,1);
subimage(I)
title('Original Image');
j=imresize(I,s);
subplot(1,4,2); 
subimage(j)
title('Scaled Image');
% Rotation
K=imrotate(j,60);
subplot(1,4,3); subimage(K); title('Rotated Image 60deg');
R=imrotate(j,45);
subplot(1,4,4); subimage(R); title('Rotated Image 45deg');
