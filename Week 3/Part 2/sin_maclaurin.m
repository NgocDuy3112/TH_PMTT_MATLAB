function res = sin_maclaurin(x, n)
    res = 0;
    for k = 0:n
        sign = -1;
        if (mod(k, 2) == 0)
            sign = 1;
        end
        term = sign * x^(2 * k + 1) / factorial(2 * k + 1);
        res = res + term;
    end
end