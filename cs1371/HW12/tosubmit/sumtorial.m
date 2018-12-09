function s = sumtorial(n)
	if n <= 1
		s = n;
	else
		s = n + sumtorial(n - 1);
	end
end
