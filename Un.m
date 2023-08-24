%% Load Data
[data,colNames] = xlsread('Train.xlsx');
groups = ismember(colNames(:,3),'normal.','benign','malignant'); 
TrainInputs = data;
TrainTargets = groups;
%% Design SVM
C = 100;
svmstruct = svmtrain(TrainInputs,TrainTargets,...
    'boxconstraint',C,...
    'kernel_function','rbf',...
    'rbf_sigma',0.5,...
    'showplot','false');
%% Test SVM
[dataTset,colNamesTest] = xlsread('TestDataset.xls');
TestInputs = dataTset;
groups = ismember(colNamesTest(:,24),'normal.'); 
TestOutputs = svmclassify(svmstruct,TestInputs,'showplot','false');