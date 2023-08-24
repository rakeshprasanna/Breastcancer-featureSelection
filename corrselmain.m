load corr.mat
global sf;
data=f; label=clabel; 
index = corrSel( data, label )
sf=data(:,index)