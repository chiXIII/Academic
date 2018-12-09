cl = linspace(0,1.6);
cd = descentDrag(cl,12*3600);
plot(cd,cl)
xlabel('C_D')
ylabel('C_L')
