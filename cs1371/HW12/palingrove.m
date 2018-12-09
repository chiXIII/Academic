function prune = palingrove(raw)
	upRaw = upper(raw);
	rows = pruner(upRaw);
	prune = raw(rows,:);
end

function rows = pruner(toPrune)
	[row,col] = size(toPrune);
	if col <= 1
		rows = logical(ones(row,1));
	else
		theseRows = strcmp(toPrune(:,1), toPrune(:,end));
		rows = theseRows & pruner(toPrune(:,2:end-1));
	end
end
