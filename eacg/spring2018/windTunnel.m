%fhw = fopen('table.txt','w');
%fhw = fopen('imper.txt','w');
%fhw = fopen('si.txt','w');
fhw = fopen('cl.txt','w');

rho = 1.167/515.379;
S = 0.06123*10.7639;
mu = 1.8205e-5; % mPa

% we did 6deg

ar = [-4 0 4 5 6 7 8];
vr = 4:4:16;
al = length(ar);
vl = length(vr);

Cl = zeros(al,vl);
Clstd = Cl;
for j = 1:vl
	stand = crunch_stand(vr(j));
	for i = 1:al
		[l stddev] = crunch(ar(i), vr(j));
		l = l + stand;
		Cl(i,j) = l/(0.5*rho*(vr(j)*3.28084)^2*S);
		Clstd(i,j) = stddev/(0.5*rho*(vr(j)*3.28084)^2*S);
%{
		if i == 6
			fprintf(fhw, '%d & %0.2f & %d & %0.3f \\\\ \\hline\n',rho, vr(j)*3.2804, 6, l);
			%fprintf(fhw, '%d & %d & %d & %0.3f \\\\ \\hline\n',1.167, vr(j), 6, l*4.448222);
		end
%}
	end
%{
	errorbar(ar',Cl(:,j),Clstd(:,j),'vertical','o');
	coefs = polyfit(ar(1:4)',Cl(1:4,j),1);
	x = ar([1 4]);
	y = polyval(coefs,x);
	hold on
	plot(x,y);
	title(sprintf('v = %d ft/s',vr(j)));
	xlabel('AOA (degrees)');
	ylabel('Cl');
	saveas(gcf,sprintf('%dplot.png',vr(j)));
	hold off

	Re = 1.167*vr(j)*0.12/mu;
	fprintf(fhw, '%d & %d & %d\n',vr(j),Re,coefs(1)*180/pi);
%}
end
close



Cl_all = mean(Cl(:,2:end), 2);
Cdi_all = Cl_all.^2/(pi*0.47/0.12*0.9);
%{
for i  = 1:al
	fprintf(fhw,'$%d\\degree$ & %0.3f \\\\ \\hline \n',ar(i),Cl_all(i));
end
%}

coefs1 = polyfit(ar(1:4)',Cl_all(1:4),1)
a0_all = coefs1(1)

scatter(ar',Cl_all);
hold on
plot(ar([1 4]), polyval(coefs1,ar([1 4])));
xlabel('AOA (degrees)');
ylabel('Cl');
saveas(gcf, 'cl.png')

hold off
scatter(ar',Cdi_all);
xlabel('AOA (degrees)');
ylabel('Cdi');
saveas(gcf, 'cdi.png');


fclose(fhw);
