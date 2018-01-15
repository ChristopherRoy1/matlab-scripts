function r = newton(f, f_p, a, b, eps, N)
%This function finds a root to arbitrary precision using the
%newton's method
%   f:    function
%   f_p:  derivative of function 
%   a:    starting point of interval
%   b:    end point of interval
%   eps:  tolerance
%   N:    iteration limit

%r_0: initial/prev guess
r_0 = (a+b)/2;

% r: current guess
r = r_0 - (f(r_0))/(f_p(r_0));

counter = 1;
while ((abs(r -r_0) > eps) && (N > counter))
    r_0 = r;
    r = r_0 - (f(r_0))/(f_p(r_0));
    counter = counter+1;
    
end 

