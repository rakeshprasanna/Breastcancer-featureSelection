
 load testroc.mat
% net = patternnet(20);
% net = train(net,irisInputs,irisTargets);
% irisOutputs = sim(net,irisInputs);
irisTargets = actual; irisOutputs = predicted ;
[tpr] = roc(irisTargets,irisOutputs)