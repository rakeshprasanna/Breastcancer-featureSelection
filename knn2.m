load knnclassify.mat
samplesX=train ; samplesY=kgroup ; testsamplesX=testing ; t_labels=ktestinglabels;
[result]=knnclassification(testsamplesX,samplesX, samplesY, 3,'type');