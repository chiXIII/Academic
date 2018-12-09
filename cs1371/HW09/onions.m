function [indVec num] = onions(celery)
	imax = 0;
	jmax = 0;
	num = 0;
	s = size(celery);
	for i = 1:s(1)
		for j = 1:s(2)
			layers = shallots(celery(i,j));
			if layers > num
				num = layers;
				imax = i;
				jmax = j;
			end
		end
	end
	indVec = [imax jmax];
end
