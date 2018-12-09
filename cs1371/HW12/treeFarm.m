function leaf = treeFarm(base, component)
	if base == 1
		leaf = component;
	else
		baseVec = mod(1:(2*base-1), 2);
		baseVec = char((component - ' ') * baseVec + ' ');
		nextLeaf = treeFarm(base-1, component);
		[row,~] = size(nextLeaf);
		pad = char(zeros(row,1) + ' ');
		leaf = [pad nextLeaf pad ; baseVec];
	end
end
