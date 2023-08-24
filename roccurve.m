class_1 = 0.5*randn(100,1);
class_2 = 0.5+0.5*randn(100,1);
[ROC_data] = roc_curve(class_1, class_2);