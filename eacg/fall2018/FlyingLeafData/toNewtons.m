function N = toNewtons(reading)

calibVals = [];
num = 8;
for n = 0:num
	fn = sprintf('calibration%d',n);
	if n == 8
		fn = 'second_calibration_8';
	end
	data = tdfread(fn);
	fnames = fieldnames(data);
	data = data.(fnames{1});
	calibVals(n+1) = mean(data);
end
coefs = polyfit((0:num)/4,calibVals,1);
hold on
plot((0:num)/4, calibVals)
plot([0 num]/4, coefs(1).*[0 num]/4 + coefs(2))
xlabel('Weight [oz]')
ylabel('Load Cell Reading [Aribitrary Units]')

oz = reading./coefs(1);
N = oz/16*0.453592*9.807;
end
