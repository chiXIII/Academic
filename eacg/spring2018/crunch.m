function [L dev] = crunch(alpha, v)
	fn = sprintf('AOA_%s_%smps_sheet.xls',num2str(alpha), num2str(v));
	data = dlmread(fn);
	L = mean(data(:,1));
	dev = std(data(:,1));
end
