
load GASVM.mat
 actual=mattestlab ;predict=result;

[confmatrix] = cfmatrix2(actual, predict, [1,2,3], 1, 1)            