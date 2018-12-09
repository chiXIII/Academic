function fixed = stockExchange(broken)
	missing = isnan(broken);
	broken(missing) = spline(broken(1,:), broken(2,:),broken(missing([2 1],:)));
	fixed = round(broken,2);
end
