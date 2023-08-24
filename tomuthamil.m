oldfolder='E:\DDSM\BENIGN';
newfolder='D:\mail';
filenames=dir(fullfile(oldfolder,'*.jpg'));
total=numel(filenames);
for i=1:total
    fullname=fullfile(oldfolder,filenames(i).name);
BW=imread(fullname);
% BW=imresize(BW,[256,256]);
% BW=rgb2gray(BW);
BWW=adapthisteq(BW);
fn=sprintf('BENIGN_preprocessing%d.jpg',i);
destfile=fullfile(newfolder,fn);
imwrite(BWW,destfile);
I = im2double(BWW);
[J,K] = regiongrowing(I);
c1 = imcrop(K);
temp1=cat(3,c1,c1,c1);
%  k=200+i;
fn=sprintf('NORMAL%d.jpg',i);
destfile=fullfile(newfolder,fn);
imwrite(temp1,destfile);
end
