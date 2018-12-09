function report = runeScape(you, that)
	required = 0;
	fns = fieldnames(that);
	for i = 2:length(fns)
		name = fns{i};
		required = required + Exp(that.(name),that.(name),you.(name));
	end
	report = sprintf('%s needs %d more experience points to use the %s.', you.Username, required, that.Name);
end

function required = Exp(n,hiLevel,loLevel)
	if hiLevel <= loLevel;
		required = 0;
	else
		if n <= 2
			required = 83 + Exp(hiLevel-1,hiLevel-1,loLevel);
		else
			required = ceil(n^(7/2) + Exp(n-1,hiLevel,loLevel));
		end
	end
end
