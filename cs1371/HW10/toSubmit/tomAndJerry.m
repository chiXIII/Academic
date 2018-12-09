function new = tomAndJerry(old, change, rm)
	toChange = fieldnames(change);
	for i = 1:length(toChange)
		name = toChange{i};
		old.(name) = change.(name);
	end
	new = rmfield(old, rm);
	end
