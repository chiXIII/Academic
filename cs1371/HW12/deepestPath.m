function report = deepestPath(map)
	report = sprintf('The deepest path is %d cells deep.', fathom(map));
end

function depth = fathom(cellery)
	if isempty(cellery)
		depth = 0;
	else
	cellery = cellery(:);
	mx = 0;
	for n = 1:length(cellery)
		element = cellery{n};
		if iscell(element)
			mx = max(mx, fathom(element));
		end
	end
	depth = mx + 1;
	end
end
