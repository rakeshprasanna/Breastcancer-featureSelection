% load GASVM.mat
% Testlabels=mattestlab ;result=result;

% load t-testsvm.mat
% Testlabels=wtestinglabels ;result=tsvmresult;

% load GAKNN.mat
% Testlabels=testlabels ;result=gaknnresult;
% 
% load t-testKNN.mat
% Testlabels=lab ;result=tknnresult;
% 
% load GANB.mat
% Testlabels=testlabels ;result=ganbresult;
% 
load t-testNB.mat
Testlabels=labe ;result=tnbresult;

confMat=myconfusionmat(Testlabels,result);
disp('confusion matrix:')
disp(confMat)
conf=sum(result==Testlabels)/length(result);
disp(['accuracy = ',num2str(conf*100),'%'])
 