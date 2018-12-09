function statement = schrodingersCat(bArr, strt)
	count = 0;
	while isfloat(strt)
		pos = strt;
		strt = bArr(strt(1), strt(2)).next;
		count = count + 1;
	end
	statement = sprintf('The %s was found at position (%d,%d) after %d steps.', strt, pos(1), pos(2), count);
end
