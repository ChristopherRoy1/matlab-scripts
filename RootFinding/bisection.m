function r = bisection(f, a, b, eps, N)
%This function finds a root to arbitrary precision using the
%bisection method.
%   f:      function 
%   a:      start of interval 
%   b:      end of interval
%   eps:    tolerance 
%   N:      iteration limit
%

%----Variable Initialization--%

%r: Root of the function
r = (a+b)/2;

%counter: number of loop iterations
counter = 0;

while ((abs(f(r)) > eps) && (N > counter))   
    if (f(a)*f(r) < 0)
        b = r;
    else
        a = r;
    end
    r = (a+b)/2;    
    counter = counter +1;    
end 


       
