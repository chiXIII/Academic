% Rosenbrock valley optimization
% ------------------------------
close all
clear all
clc


% Optimization with etimated derivatives
bananacontours()
options = optimoptions('fminunc','Display','off',...
    'OutputFcn',@bananaout,'Algorithm','quasi-newton');
fun = @(x)(100*(x(2) - x(1)^2)^2 + (1 - x(1))^2);
x0 = [0,3];
[x,fval,eflag,output] = fminunc(fun,x0,options);
title 'Rosenbrock solution via fminunc'
axis([-2 2 -1 3])
disp('Estimated Derivatives')
disp('----------------------------------')
Fcount = output.funcCount;
disp(['Number of function evaluations for fminunc was ',num2str(Fcount)])
disp(['Number of solver iterations for fminunc was ',num2str(output.iterations)])
disp('  ')
hold off;

% Optimization with steepest descent
bananacontours()
options = optimoptions(options,'HessUpdate','steepdesc',...
    'MaxFunctionEvaluations',600);
[x,fval,eflag,output] = fminunc(fun,x0,options);
title 'Rosenbrock solution via steepest descent'
axis([-2 2 -1 3])
disp('Steepest Descent')
disp('----------------')
Fcount = output.funcCount;
disp(['Number of function evaluations for steepest descent was ',...
    num2str(Fcount)])
disp(['Number of solver iterations for steepest descent was ',...
    num2str(output.iterations)])
disp('   ')
hold off;

% Optimization with analytic gradient
bananacontours()
grad = @(x)[-400*(x(2) - x(1)^2)*x(1) - 2*(1 - x(1));
            200*(x(2) - x(1)^2)];
fungrad = @(x)deal(fun(x),grad(x));
options = resetoptions(options,{'HessUpdate','MaxFunctionEvaluations'});
options = optimoptions(options,'SpecifyObjectiveGradient',true,...
    'Algorithm','trust-region');
[x,fval,eflag,output] = fminunc(fungrad,x0,options);
title 'Rosenbrock solution via fminunc with gradient'
axis([-2 2 -1 3])
disp('Analytic Gradient')
disp('-----------------')
Fcount = output.funcCount;
disp(['Number of function evaluations for fminunc with gradient was ',...
    num2str(Fcount)])
disp(['Number of solver iterations for fminunc with gradient was ',...
    num2str(output.iterations)])
disp('   ')
hold off;
