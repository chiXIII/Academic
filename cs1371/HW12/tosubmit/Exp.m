function required = Exp(n)
	if n <= 2
		required = 83;
	else
		required = ceil(n^(7/2) + Exp(n-1));
	end
end
