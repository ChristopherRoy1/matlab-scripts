function [answer] = linterpolation(x1,y1,x3,y3,x2, y2, Q11, Q13, Q31, Q33)
    %
    %
    if nargin == 5     
   
        if x1 == x3
            error("Must interpolate between two different x points")    
        end 
        
        %interpolated dependant value
        answer = ((x2 - x1)*(y3 - y1))/(x3-x1) + y1;
    
    elseif nargin == 10
        if x3 == x1 || y3 == y1
           error("Must interpolate between different x and y points"); 
        end
        denom = (x3 - x1)*(y3-y1);
        answer = (                            ...
                 ((x3 - x2)*(y3 - y2)*Q11)   ...
              +  ((x2 - x1)*(y3 - y2)*Q31)   ...
              +  ((x3 - x2)*(y2 - y3)*Q13)   ...
              +  ((x2 - x1)*(y2 - y1)*Q33)   ...
                )/denom;
        
    else    
        error("Usage: linterpolation(x1,y1,x3,y3,x2)\n or linterpolation(x1,y1,x3,y3,x2, y2, Q11, Q13, Q31, Q33)");
    end
