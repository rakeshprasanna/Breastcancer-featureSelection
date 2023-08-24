x=[0,0.0470,1];
y=[0,0.96,1];
x1=[0,0.107,1];
y1=[0,0.9357,1];
figure();
plot(x,y,x1,y1,':');


legend('GA','t-test','Location','Best')
xlabel('False positive rate'); ylabel('True positive rate');
title('ROC Curves for GA+KNN and t-test+KNN');
AUC = trapz(x,y);
fprintf('  AUC for GA:  %.4f\n',AUC );
AUC1 = trapz(x1,y1);
fprintf('  AUC for t-test:  %.4f\n',AUC1 );


