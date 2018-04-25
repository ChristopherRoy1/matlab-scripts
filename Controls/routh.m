function [stability, rtable] = routh(coeffs, toggle)
    % The function takes in the coefficients of a polynomial as an argument, and returns the stability of the polynomial
    % as well as the routh table.
    % By: Christopher Roy
    % Created: April 25, 2018
       
    
    % A polynomial cannot be stable if any of its coefficients are <=0
      
    if (any(coeffs(:) <= 0))
        stability = 'unstable';             
    end
    
    tol = 1.e-9; %error tolerance to check if an element is zero and avoid floating point errors
    n = size(coeffs,2); % determine order of polynomial (n-1)
    
    rtable = zeros(n,floor(n/2)+1); %initialize the routh table
    
    row1= coeffs(1,1:2:end); %first row of routh table starts with highest coefficient and skips every other
    row2 = coeffs(1,2:2:end); %second row of routh table starts with second highest coefficient and skips every other
    
    rtable(1,1:size(row1,2)) = row1; %insert the first two routh table rows
    rtable(2,1:size(row2,2)) = row2; 
    
    for row=3:n
        for col=1:((n-row)/2+1)
            entries = [rtable(row-2,col:col+1);
                        rtable(row-1,col:col+1)];
            if(abs(entries(2,1)) < tol)
                stability = 'unstable';
                return;
            else
                rtable(row,col) = -1/(rtable(row-1,col)) * det(entries);
            end
        end
        
    end
    
    % The polynomial is only stable if 
    %    -there are no negative entries in the table
    %    -the first column has no zero entries
    
    
    if (any(rtable<0))
        stability = 'unstable';
    elseif (any(abs(rtable(:,1)) <= tol))
        stability = 'unstable';     
    else
        stability = 'stable';
    end



end