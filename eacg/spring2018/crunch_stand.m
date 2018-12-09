function L = crunch_stand(v)
	fn = sprintf('Test stand Loads/%dmps.xls', v);
	data = dlmread(fn);
	L = mean(data(:,1));
end
