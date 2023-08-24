load classify.mat
T=train; C=groupd; test=testing;
[itrfin] = multisvm1( T,C,test );