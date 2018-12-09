function [L dev] = crunch(alpha, v)
	vstr = num2str(v);
	vstr = [num2str(0:(1-length(vstr))) vstr];
	h = '';
	if alpha < 0
		h = '-';
	end
	fn = sprintf('AE1601_AOA%s0%d_%smps.xls', h, abs(alpha), vstr);
	data = dlmread(fn);
	L = mean(data(:,1));
	dev = std(data(:,1));
end
