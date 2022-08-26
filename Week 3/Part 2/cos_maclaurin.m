function res = cos_maclaurin(x, n)
    res = 0;
    for k = 0:n
        sign = -1;
        if (mod(k, 2) == 0)
            sign = 1;
        end
        term = sign * x^(2 * k) / factorial(2 * k);
        res = res + term;
    end
end