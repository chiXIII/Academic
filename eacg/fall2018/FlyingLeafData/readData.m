function drag = readData(fn)
	data = tdfread(fn);
	fnames = fieldnames(data);
	data = data.(fnames{1});
	plot(data)
	drag = toNewtons(mean(data));
	mean(data)
end
