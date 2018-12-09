function area = integrals(f,g)
	Sf = trapz(f(1,:),f(2,:));
	Sg = trapz(g(1,:),g(2,:));
	if Sf > Sg
		area = Sf - Sg;
		maxFunc = f;
		minFunc = g;
	else
		area = Sg - Sf;
		maxFunc = g;
		minFunc = f;
	end
	plot(maxFunc(1,:), maxFunc(2,:), 'g', minFunc(1,:), minFunc(2,:), 'r');
	x0 = maxFunc(1,1):maxFunc(1,end);
	hold on
	for x = x0;
		upperBound = interp1(maxFunc(1,:),maxFunc(2,:),x);
		lowerBound = interp1(minFunc(1,:),minFunc(2,:),x);
		y = lowerBound:upperBound;
		x = x*ones(1,length(y));
		scatter(x,y,'m*');
	end
	axis tight
	hold off
end
