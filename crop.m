I=imread('medtest.png')
%J = imcrop
J = imcrop(I);
imshow(J);
%Xout = imcrop(X,cmap)
%J = imcrop(h)
%J = imcrop(I,rect)
%C2 = imcrop(C,rect)
%Xout = imcrop(X,cmap,rect)
%J = imcrop(x,y,_)
%[J,rect2] = imcrop(___)
%[x2,y2,___] = imcrop(___)