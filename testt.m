oldfolder='E:\mal';
newfolder='D:\MALIGNANT_CORP';
filenames=dir(fullfile(oldfolder,'*.jpg'));
total=numel(filenames);

for i=9:total
 fullname=fullfile(oldfolder,filenames(i).name);
BW=imread(fullname);
% temp=BW;
% BW=imresize(BW,[256,256]);
% BW=rgb2gray(BW);
BWW=adapthisteq(BW);
I = im2double(BWW);
[J,K] = regiongrowing(I);
c1 = imcrop(K);
% temp1=cat(3,c1,c1,c1);
fn=sprintf('MALIGNANT%d.jpg',i);
destfile=fullfile(newfolder,fn);
imwrite(c1,destfile);
end
