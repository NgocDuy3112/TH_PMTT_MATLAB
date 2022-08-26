function res = factorial(n)
    res = 1;
    if (or (n == 0, n == 1))
        res = 1;
    else
        for i = 2:n
            res = res * i;
        end
    end
end