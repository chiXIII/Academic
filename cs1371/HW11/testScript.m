load physicsTest.mat;

for n = 1:3
	checkPlots('physics',times1,velocity1,n)
end

%{
checkPlots('crimeStats', [2001, 2002, 2005],'Robbery','Type 1')
checkPlots('crimeStats', [2001, 2002, 2005],'Robbery','Type 2')
checkPlots('crimeStats', [2001, 2002, 2005],'Robbery','Type 3')
checkPlots('crimeStats', [2005, 2012, 2007],'Robbery','Type 1')
checkPlots('crimeStats', [1999, 2002, 2010],'Robbery','Type 1')
checkPlots('crimeStats', [2011, 2002, 2001],'Robbery','Type 1')

checkPlots('integrals', [[1 2.2 3.3 4.2 5]; ((1:5)).^3], [(1:0.5:5); exp((1:0.5:5))+20])
%}
