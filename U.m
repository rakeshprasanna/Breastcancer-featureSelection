load fisheriris
X = meas;
Y = species;
Mdl = fitcknn(X,Y,'NumNeighbors',3,'NSMethod','exhaustive','Distance','minkowski','Standardize',1);