function y = fixedpointit(g, a, b, eps, N)
%This function finds a root to arbitrary precision using the
%fixed point iteration method


%------------------Prev Version------------%
p_p = .9;
p_n = g(p_p);

counter = 1;
while ((abs(p_n - p_p) > eps))    
    p_p = p_n;
    p_n = g(p_n);    
    counter = counter +1;
end 
y = p_n;
disp(y)
