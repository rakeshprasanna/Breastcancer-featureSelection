actual      = [1;1;1;1;1;1;1;0;0;0]; % targets
P1=[1 1 1 1 1 0 0 1 0 0];
P2=[1 0 1 0 1 0 0 1 1 0];
predicted (:,1:2)   = [P1' P2']; % outputT
c=1;
for i=1:2 
[tpr,fpr,th] = roc(actual',predicted(:,i)');
r_tpr(c)=tpr (2);
r_fpr(c)=fpr (2);
c=c+1;
end