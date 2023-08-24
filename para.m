disp('Running Proof....')
n=100;m=4;
actual=round(rand(1,n)*m);
[c_matrixp,Result]= confusion.getMatrix(actual,actual);

disp('Getting Values')
Accuracy=Result.Accuracy
Error=Result.Error
Sensitivity=Result.Sensitivity
Specificity=Result.Specificity
Precision=Result.Precision
FalsePositiveRate=Result.FalsePositiveRate
F1_score=Result.F1_score
MatthewsCorrelationCoefficient=Result.MatthewsCorrelationCoefficient
Kappa=Result.Kappa