function solved = solver(maze,row, col)
	[R C] = size(maze);
	solved = zeros(R,C);
	if maze(row,col) == 42
		solved(row,col) = 1;
	else
		maze(row,col) = 0;
		x = [1 0 -1 0];
		y = [0 1 0 -1];
		for n = 1:4
			i = row + y(n);
			j = col + x(n);
			if (0 < i & i <= R & 0 < j & j <= C) && maze(i,j)
				solved = solved + solver(maze,i,j);
				solved(row,col) = 1;
			end
		end
	end
end
