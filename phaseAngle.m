function angle = phaseAngle(series1,series2,label1,label2)
	n = 50;
	hold on
	function normSer = normalize(series)
		[r c] = size(series);
		if r > c
			series = series';
		end
		%{
		sampleX = floor((length(series)-1)/n) .* [0:n]+1
		toSample = ones(n,1) * series';
		toSample = 
		toSample(:,1:10)
		%}
		sampleSize = floor(length(series)/n);
		sampleXMat = (ones(sampleSize,1).*sampleSize) * [0:n-1] + [1:sampleSize]' * ones(1,n);
		[sampleY sampleX] = min(series(sampleXMat));
		sampleX = sampleX + [0:n-1]*sampleSize;
		series = series(sampleX(1):sampleX(end)) - spline(sampleX,sampleY,[sampleX(1):sampleX(end)]);
		series = series - mean(series);
		normSer = series./ (sqrt(2).*sqrt(mean(series.^2)));
		normSer = [normSer; sampleX(1):sampleX(end)];
		%{
		plot(normSer)
		plot([0 length(series)], [0 0])
		%}
	end
	series1 = normalize(series1);
	series2 = normalize(series2);
	xMin = max(series1(2,1),series2(2,1));
	xMax = min(series1(2,end),series2(2,end));
	series1 = truncate(series1,xMin,xMax);
	series2 = truncate(series2,xMin,xMax);
	diff = series1 - series2;
	a = sqrt(2).*sqrt(mean(diff.^2));
	function A = amplitudeDiff(theta)
		tant = (cos(theta)-1)./sin(theta);
		cost = 1./sqrt(1+tant.^2);
		sint = tant.*cost;
		A = sint.*(cos(theta)-1)+cost.*sin(theta)-a;
		A(theta==0) = -a;
	end

	toInvert = @amplitudeDiff;
	angle = fzero(toInvert,0);
	plot(series1)
	plot(series2)
	set(gca,'XMinorTick','on','YMinorTick','on');
	legend(label1,label2)
	xlabel('Sample Number')
	ylabel('Amplitude-Normalized Reading')
end

function trunced = truncate(series,min,max)
	mask = (series(2,:) > min) & (series(2,:) < max);
	trunced = series(1,mask);
end
