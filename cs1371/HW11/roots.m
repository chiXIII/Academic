function x0 = roots(x,y,upper_bound,lower_bound)
	coefs = polyfit(x,y,length(x)-1);
	if polyval(coefs, upper_bound)*polyval(coefs,lower_bound) < 0 
		while abs((upper_bound - lower_bound)/(upper_bound + lower_bound)) > 1e-3
			mid = (upper_bound+lower_bound)/2;
			if polyval(coefs, mid)*polyval(coefs,lower_bound) < 0
				upper_bound = mid;
			else
				lower_bound = mid;
			end
		end
		x0 = round(mid,2);
	else
		x0 = round((upper_bound + lower_bound)/2,2);
	end
end
