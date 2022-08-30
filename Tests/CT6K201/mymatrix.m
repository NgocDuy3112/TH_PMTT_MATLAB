function M = mymatrix(n)
    k = 0;
    for i = 1:2
        for j = 1:2
            M(i, j) = n + k;
            k = k + 1;
        end
    end            
end