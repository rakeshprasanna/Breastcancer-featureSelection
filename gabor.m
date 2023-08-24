i=imread('C:\Users\new\Desktop\MAMMOGRAM-DDSM\BENIGN\b1_cc.jpg')
figure,imshow(i);
wavelength = 4;
orientation = 90;
[mag,phase] = imGaborfilt(i,wavelength,orientation);