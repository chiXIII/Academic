function asciiGarden(fn)
	[numRows, text, ~] = xlsread(fn);
	fh = fopen(['ascii_' fn(1:end-5) '.txt'], 'w');
	[s ~] = size(text);
	l = sum(numRows)*2;
	for i = 1:s
		for k = 1:numRows(i)
			line = '';
			veg = text{i,2};
			for n = 1:(l/length(veg))
				line = [line veg];
			end
			fprintf(fh, [line '\n']);
		end
	end
	fclose(fh);
end
