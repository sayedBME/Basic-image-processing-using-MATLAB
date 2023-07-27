clc
clear all
close all
i=imread('sayed2.PNG');
subplot(1,5,1)
imshow(i) 
title('Original Image')
r=i(:,:,1);
subplot(1,5,2) 
imshow(r)
title('Red Component')
g=i(:,:,2);
subplot(1,5,3)
imshow(g)
title('Green Component')
b=i(:,:,3);
subplot(1,5,4)
imshow(b)
title('Blue Component')
rg=rgb2gray(i);
subplot(1,5,5)
imshow(rg)
title('Gray Image')
