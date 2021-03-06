function r = secant(f, r_0, r, eps, N)
%   This function finds a root to arbitrary precision using the
%   secant method
%
%   f: target function
%   r_0: initial/previous guess
%   r = second guess/current guess
%
%
%

counter = 1;
while ((abs(r - r_0) > eps) && N > counter)
    t = r;
    r = r - ((f(r))*(r - r_0))/(f(r) - f(r_0));
    r_0 = t;
    counter = counter+1;
end 



