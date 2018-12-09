function out = bestMusic(in)
	x = rand(1)
	if x > 0.5
		out = in{end};
	else
		out = 0;
end
