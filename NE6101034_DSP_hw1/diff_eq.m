function y = diff_eq(x,n)
    if (n < 11 )
        y = 0;
        %handling for edge case n < 11
    else
        y = 1.8 * cos(pi/16) * diff_eq(x,n-1) - 0.81 * diff_eq(x,n-2) + x(n) + 0.5*x(n-1);
        % the recursive loop
    end   
    
end

