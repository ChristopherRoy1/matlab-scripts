format long;
%-----------------Target function---------%
%f = @(x) 3*x.^3 - 6*x.^2 + 4*x - 8/9;
%g = @(x) 8/9/(3*x.^2 - 6*(x) + 4); 

%f_p = @(x) 9*x.^2 -12*x + 4;


f = @(x) (x.^3)*(x-4/3) + 1/81 + x*(18*x - 4)/27;
g = @(x) x + (x.^3)*(x-4/3) + 1/81 + x*(18*x - 4)/27;
f_p = @(x) (4/27)*(3*x-1).^3;



%----------Variables-----------%
a = 0;
b = 3;
i=1;
N= 10^6;
eps = 10^-3;
    
disp('Bisection')
bisection(f, a, b, eps,N);
%----------Fixed-Point Iteration---------%

disp('FixedPoint')
fixedpointit(g, a, b, eps,N);
%----------Newton---------%
    
disp('Newton')
newton(f, f_p, a, b, eps,N);

%----------Secant---------%
disp('Secant')
secant(f, a, b, eps,N);    

