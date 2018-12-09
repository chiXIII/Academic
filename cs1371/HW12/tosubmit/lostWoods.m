function lostWoods(mazeName, row, col)
	mazeImg = imread(mazeName);
	goldRGB = cat(3,255,223,0);
	small = mazeImg(1:20:end,1:20:end,:);
	ok = all(small == cat(3,66,244,92),3);
	treasure = all(small == goldRGB,3);
	mazeMat = ok + 42*treasure;
	[R C] = size(mazeMat);
	solved = findPath(mazeMat, row, col,R,C);

	for i = 1:R
		for j = 1:C
			if solved(i,j)
				mazeImg(20*i-19:20*i,20*j-19:20*j,1) = 255;
				mazeImg(20*i-19:20*i,20*j-19:20*j,2) = 223;
				mazeImg(20*i-19:20*i,20*j-19:20*j,3) = 0;
			end
		end
	end
	imwrite(mazeImg,[mazeName(1:end-4) '_solved.png']);
end

function solved = findPath(maze,row,col,R,C)
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
				solved = solved + findPath(maze,i,j,R,C);
				solved(row,col) = 1*any(solved(:));
			end
		end
	end
end
