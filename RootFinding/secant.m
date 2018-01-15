function y = secant(f, a, b, eps, N)
%This function finds a root to arbitrary precision using the
%secant method

r_0 = 0.4;
r = 1.2;
t =0;
counter = 1;
while ((abs(r - r_0) > eps) && N > counter)
    t = r;
    r = r - ((f(r))*(r - r_0))/(f(r) - f(r_0));
    r_0 = t;
    counter = counter+1;
end 
y = r;
disp(r);


