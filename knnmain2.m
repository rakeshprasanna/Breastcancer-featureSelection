% load wknn.mat
load tknn.mat
% data=wtrain; labels=wgroup; t_data=wtesting;t_labels=wtestinglabels;
data=ttrain; labels=wgroup; t_data=ttest;t_labels=wtestinglabels;
[predicted_labels,nn_index,accuracy] = knn(3,data,labels,t_data,t_labels);