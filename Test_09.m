clc
clear all
close all
l=im2double(imread('sayed2.png'));
f1=fft(l);
f2=fftshift(f1);
subplot(1,5,1); imshow(abs(l)); title('Original Image');
subplot(1,5,2); imshow(abs(f1)); title('Frequency Spectrum');
subplot(1,5,3); imshow(abs(f2)); title('Centered Spectrum');
f3=log(1+abs(f2));
subplot(1,5,4); imshow(f3); title('log(1+abs(f2))');
l=fft2(f1);
l1=real(l);
subplot(1,5,5); imshow(l1);title(' 2-D FFT');
