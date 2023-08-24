load wclassify.mat
% load tsvm.mat
 TrainingSet=wtrain; GroupTrain=wgroup; TestSet=wtesting; Testlabels=wtestinglabels;
%  TrainingSet=ttrain; GroupTrain=wgroup; TestSet=ttest; Testlabels=wtestinglabels;
[result] = multisvm(TrainingSet,GroupTrain,TestSet,Testlabels);
