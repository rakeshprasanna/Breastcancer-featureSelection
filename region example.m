%clr all; clc; close all;
I = im2double(imread('medtest.png'));
figure, imshow(I);
J = regiongrowing(I);
figure, imshow(J-I);