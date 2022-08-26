function res = exp_maclaurin(x, n)
    res = 0;
    for k = 0:n
        term = x^k / factorial(k);
        res = res + term;
    end
end