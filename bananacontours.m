function bananacontours()
[x1,x2]=meshgrid(-2:0.0125:2,-1:0.025:3);
fun1 = @(x1,x2)(100*(x2 - x1.^2).^2 + (1 - x1).^2);
f=feval(fun1,x1,x2);
levels=[5;20;80;320;1280];
figure
[h,c]=contour(x1,x2,f,levels,'k');
clabel(h,c);
xlabel('x_1')
ylabel('x_2')
axis([-2 2 -1 3])
hold on;