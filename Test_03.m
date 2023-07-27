clc
clear all
close all
%Simulation of an Image( Arithmetic & Logic Operation)
a=ones(4)
b=zeros(4)
c=[a b;b a]; d=[b b;a a];
A=10*(c+d);
M=c.*d;
S=c-d;
D=c/4;
figure;
subplot(1,6,1); imshow(c);title('c=[a b;b a]')
subplot(1,6,2); imshow(d);title('d=[b b;a a]')
subplot(1,6,3); imshow(A);title('A=10*(c+d)')
subplot(1,6,4); imshow(M);title('M=c.*d')
subplot(1,6,5); imshow(S);title('S=c-d')
subplot(1,6,6); imshow(D);title('D=c/4')
