load classify.mat
TrainingSet=train; GroupTrain=groupd; TestSet=testing;
global abc;
[result] = svm(TrainingSet,GroupTrain,TestSet);
