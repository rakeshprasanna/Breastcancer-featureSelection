load classify.mat
T=train; C=groupd; test=testing;
[itrfin] = multisvmm( T,C,test );