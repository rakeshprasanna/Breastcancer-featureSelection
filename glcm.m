oldfolder='D:\N_CORP';
newfolder='D:\features\ef.xls';
filenames=dir(fullfile(oldfolder,'*.jpg'));
total=numel(filenames);
for i=350
    fullname=fullfile(oldfolder,filenames(i).name);
BW=imread(fullname);
t=BW;
BW=imresize(BW,[256,256]);
BW=rgb2gray(BW);
% global c1 c2
I = im2double(BW);
fprintf(1, 'FEATURE %d\n', i);
GLCM2 = graycomatrix(I,'Offset',[2 0;0 2]);
stats = glcmfeatures1(GLCM2,0);
disp(stats)
% fprintf(1, 'FEATURE %d\n', i);
statsTable = struct2table(stats)

% save('fea.mat', 'statsTable')
%  statsArray= struct2array(stats)
%  statsArray'
%  xlswrite('ef.xls',stats)
% fn=sprintf('feature%d.jpg',i);
% destfile=fullfile(newfolder,fn);
% imwrite(statsTable,destfile);
% % I = im2double(c2);
% % GLCM2 = graycomatrix(I,'Offset',[2 0;0 2]);
% % stats = glcmfeatures1(GLCM2,0);
% % statsTable = struct2table(stats)
% % stats = sFeat;
% % statsTable = struct2table(stats)
% % stats = sFeat;
% statsTable = struct2table(stats)
% %statsArray = table2array(statsTable)
% %statsArray'
end