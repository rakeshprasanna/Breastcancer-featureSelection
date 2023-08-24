
load t-testsvm.mat
 target=wtestinglabels ;score=tsvmresult;
%  load GAKNN.mat
% target=testlabels ;score=gaknnresult;
% load t-testKNN.mat
% target=lab ;score=tknnresult;
% load GANB.mat
% target=testlabels ;score=ganbresult;
% load t-testNB.mat
% target=labe ;score=tnbresult;
[prec, tpr, fpr, thresh] = prec_rec(score, target);
