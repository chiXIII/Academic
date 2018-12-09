function physics(t,v,degree)
	subplot(2,2,1);
	plot(t,v,'k');
	axis square

	subplot(2,2,2);
	an = diff(v)./diff(t);
	plot(t(1:end-1),an,'r');
	axis square

	subplot(2,2,4);
	coefs = polyfit(t,v,degree);
	coefsPrime = coefs(1:end-1).*(length(coefs)-1:-1:1);
	aa = polyval(coefsPrime,t);
	plot(t,aa,'g');
	axis square
end
