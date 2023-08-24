load fisheriris
xdata = meas(51:end,3:4);
group = species(51:end);
svmStruct = svmtrain(xdata,group,'ShowPlot',true);
species = svmclassify(svmStruct,[5 2],'ShowPlot',true)
hold on;
plot(5,2,'ro','MarkerSize',12);
hold off