data = [];
for alpha = [3 4 5 6 6.5 7 12]
	[lift stderr] = crunch(alpha, 4);
	lift = lift*4.45/(0.7*0.35*1.167*16);
	stderr = stderr*4.45/(0.7*0.35*1.167*16);
	data = [data ; alpha lift stderr];
end
errorbar(data(:,1), data(:,2), data(:,3),'vertical', 'b* ');
axis([2 13 -0.3 0.4])
coefs = polyfit(data(1:5,1), data(1:5,2),1);
hold on
plot([3 6.5], polyval(coefs, [3 6.5]),'r');
title('Plot of Flying Carpet Tension Concept v2 at 4 m/s');
ylabel('C_l');
xlabel('AOA (degrees)');
saveas(gcf, 'tension_model_lift.png');
coefs(1)
coefs(1)*180/pi
