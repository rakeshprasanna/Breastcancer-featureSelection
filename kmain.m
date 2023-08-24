load knnclassifier.mat
    X = meas;
    Y = species;
    
 Xnew = [min(meas);mean(meas);max(meas)];
    k = 5;
    label = predict_knn(X,Y,Xnew,k)
Ynew = {'benign';'malignat';'normal'};
    [label,accuracy] = predict_knn(X,Y,Xnew,k,Ynew)
