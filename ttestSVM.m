
load tsvm.mat
 TrainingSet=ttrain; GroupTrain=wgroup; TestSet=ttest; Testlabels=wtestinglabels;
[result] = tmultisvm(TrainingSet,GroupTrain,TestSet,Testlabels);
