load classifysvm
xdata = bestfeatures(25:end,1:2);
group = bestlabels(25:end);
svmStruct = svmtrain(xdata,group,'ShowPlot',true);
species = svmclassify(svmStruct,[1.16E+00	8.83E-01],'ShowPlot',true)
hold on;
plot(1.16E+00,8.83E-01,'ro','MarkerSize',12);
hold off