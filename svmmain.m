load classify.mat
 
T=train; C=group; test=testing;
[itrfin]=multisvmm(T,C,test);