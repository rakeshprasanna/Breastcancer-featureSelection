
load testroc.mat
class_1 = predicted; class_2 = actual ;
[ROC_data] = roc_curve(class_1, class_2, 1, 1);
