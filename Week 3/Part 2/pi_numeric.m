function res = pi_numeric(n)
    sum = 0;
    for k = 0:n
        sign = -1;
        if (mod(k, 2) == 0)
            sign = 1;
        end
        sum = sum + sign/(2 * k + 1);
    end
    res = 4 * sum;
end