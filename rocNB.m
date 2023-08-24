x1=[0,0.1409,1];
y1=[0,0.9036,1];
x=[0,0.1141,1];
y=[0,0.9143,1];
plot(x,y,x1,y1,':');
legend('GA','t-test','Location','Best')
xlabel('False positive rate'); ylabel('True positive rate');
title('ROC Curves for GA+NB and t-test+NB');
AUC = trapz(x,y);
fprintf('  AUC for GA:  %.4f\n',AUC );
AUC1 = trapz(x1,y1);
fprintf('  AUC for t-test:  %.4f\n',AUC1 );
