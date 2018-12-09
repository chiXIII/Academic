function crimeStats(years, categ, style)
	[nums, words] = xlsread('FBIDataSet.xlsx');
	catMask = strcmp(words, categ);
	years = sort(years);
	stats = interp1(nums(:,1),nums(:,catMask),years);
	switch style
		case 'Type 1'
			interpreted = 'b*:';
		case 'Type 2'
			interpreted = 'ko-';
		otherwise
			interpreted = 'rd--';
	end
	plot(years, stats,interpreted);
	title(sprintf('Plot of %s vs Years',categ));
	xlabel('Years');
	ylabel(categ);
	saveas(gcf, 'testCrime.png');
end
