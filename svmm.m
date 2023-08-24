clc; clear all;

load class.mat
[~,~,labels]            = unique(species);              % Labels: 1/2/3
data                    = zscore(meas);                 % Scale features
numInst                 = size(data,1);
numLabels               = max(labels);

%# Split training/testing
idx                     = randperm(numInst);
numTrain                = 50; 
numTest                 = numInst - numTrain;

trainData               = data(idx(1:numTrain),:);  
testData                = data(idx(numTrain+1:end),:);

trainLabel              = labels; 
testLabel               = labels(numTrain+1:end);

%# Train one-against-all models
model                   = cell(numLabels,1);
for k=1:numLabels
    model{k}                = svmtrain((trainLabel==k), trainData, '-c 1 -g 0.2 -b 1');
end

%# Get probability estimates of test instances using each model
prob                    = zeros(numTest,numLabels);
for k=1:numLabels
    [~,~,p]                 = svmpredict(double(testLabel==k), testData, model{k}, '-b 1');
    prob(:,k)               = p(:,model{k}.Label==1);    % Probability of class==k
end

% Predict the class with the highest probability
[~,pred]                = max(prob,[],2);
acc                     = sum(pred == testLabel) ./ numel(testLabel);    % Accuracy
C                       = confusionmat(testLabel, pred);                 % Confusion matrix