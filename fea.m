%I = im2double(C1);
I = imread('medtest.png');
GLCM2 = graycomatrix(I);
stats = glcmfeatures1(GLCM2,0);
statsTable = struct2table(stats);
statsArray = table2array(statsTable);
statsArray'