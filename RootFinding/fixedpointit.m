function r = fixedpointit(g, p_p, eps, N)
%This function finds a root to arbitrary precision using the
%fixed point iteration method. Ensure that the fixed point scheme satisfies
%the convergence criteria.
%   g:      fixed point scheme of function
%   eps:    tolerance 
%   p_p:    initial guess
%   N:      iteration limit
%

%p_n: Next point
p_n = g(p_p);

counter = 1;
while ((abs(p_n - p_p) > eps) && N >= counter)    
    p_p = p_n;
    p_n = g(p_n);    
    counter = counter +1;
end 
r = p_n;

