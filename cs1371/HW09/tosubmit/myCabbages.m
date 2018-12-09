function edited = myCabbages(stats)
	[~,inds] = sort(cell2mat(stats(:,3)),1);
	edited = stats(inds,:);
	nums = cell2mat(edited(:,[2 3]));
	sumNum = sum(nums(:,1));
	sumRev = sum(nums(:,1) .* nums(:,2));
	edited = [edited ; {'Total loss'} round(sumNum,2) round(sumRev,2)];
end
