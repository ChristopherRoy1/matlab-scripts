function r = bisection(f, a, b, eps, N)
%This function finds a root to arbitrary precision using the
%bisection method.

%----Variable Initialization--%
r = (a+b)/2;
counter = 0;

while ((abs(f(r)) > eps) && (N > counter))
   
    if (f(a)*f(r) < 0)
        b = r;
    else
        a = r;
    end
    r = (a+b)/2;
    z(counter+1) = (abs(r -(2/3)));
    counter = counter +1;
    
end 
disp(r)

       
