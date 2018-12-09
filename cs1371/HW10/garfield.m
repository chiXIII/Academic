function cream = garfield(crop)
	fns = fieldnames(crop);
	for i = 1:length(fns)
		vals = {crop.(fns{i})};
		for j = 1:length(vals(:))
			vals{j} = upper(vals{j});
		end
		isMon = strcmp(vals, 'MONDAY');
		crop(isMon) = [];
	end
	cream = crop;
end
