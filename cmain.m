load cknn.mat
data=wtrain; labels=wgroup; t_data=wtesting;t_labels=wtestinglabels;
[predicted_labels,nn_index,accuracy] = cknn(3,data,labels,t_data,t_labels);