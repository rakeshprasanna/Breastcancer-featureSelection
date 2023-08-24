load fisheriris
X = meas; % use all data for fitting
Y = species; % response data
mdl = fitcknn(X,Y);
flwr = mean(X); % an average flower
flwrClass = predict(mdl,flwr)